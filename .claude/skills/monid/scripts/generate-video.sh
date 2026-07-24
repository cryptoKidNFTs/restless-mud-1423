#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 2 ]]; then
  echo "Usage:"
  echo "  $0 <prompt-file.txt> <output-name> [image-reference]"
  echo
  echo "Environment variables:"
  echo "  FAL_KEY=...                        # required"
  echo "  MODEL=fal-ai/seedance/v1/pro/text-to-video   # optional default"
  echo
  echo "Examples:"
  echo "  $0 prompts/founder.txt founder-intro"
  echo "  $0 prompts/product.txt product-hero refs/product.png"
  exit 1
fi

PROMPT_FILE="$1"
OUTPUT_NAME="$2"
IMAGE_REF="${3:-}"
MODEL="${MODEL:-fal-ai/seedance/v1/pro/text-to-video}"

if [[ ! -f "$PROMPT_FILE" ]]; then
  echo "Prompt file not found: $PROMPT_FILE" >&2
  exit 1
fi

if [[ -n "${IMAGE_REF}" && ! -f "${IMAGE_REF}" ]]; then
  echo "Image reference not found: $IMAGE_REF" >&2
  exit 1
fi

if [[ -z "${FAL_KEY:-}" ]]; then
  echo "FAL_KEY is not set." >&2
  exit 1
fi

PROMPT_CONTENT="$(cat "$PROMPT_FILE")"
mkdir -p output

if [[ -n "${IMAGE_REF}" ]]; then
  RESPONSE="$(
    curl -sS -X POST "https://fal.run/${MODEL}" \
      -H "Authorization: Key ${FAL_KEY}" \
      -H "Content-Type: application/json" \
      -d @- <<JSON
{
  "prompt": $(jq -Rs . <<<"$PROMPT_CONTENT"),
  "image_url": $(jq -Rs . <<<"$IMAGE_REF")
}
JSON
  )"
else
  RESPONSE="$(
    curl -sS -X POST "https://fal.run/${MODEL}" \
      -H "Authorization: Key ${FAL_KEY}" \
      -H "Content-Type: application/json" \
      -d @- <<JSON
{
  "prompt": $(jq -Rs . <<<"$PROMPT_CONTENT")
}
JSON
  )"
fi

echo "$RESPONSE" > "output/${OUTPUT_NAME}.json"

VIDEO_URL="$(jq -r '.video.url // .video_url // .data.video.url // empty' "output/${OUTPUT_NAME}.json")"

if [[ -n "$VIDEO_URL" ]]; then
  curl -L "$VIDEO_URL" -o "output/${OUTPUT_NAME}.mp4"
  echo "Saved: output/${OUTPUT_NAME}.mp4"
else
  echo "No direct video URL found. Raw response saved to output/${OUTPUT_NAME}.json"
fi
