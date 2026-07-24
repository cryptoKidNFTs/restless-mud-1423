---
name: monid
description: Plans and executes AI video generation workflows with native sound using Seedance 2.0 4K-style pipelines. Use when the user wants to create cinematic videos with dialogue, ambience, music, sound effects, image references, or multimodal video prompts in Claude Code.
disable-model-invocation: false
---

# Monid

Monid is a production-oriented skill for creating AI videos with synced audio.

Use this skill when the user wants help turning an idea, script, image, or set of references into generation-ready prompts and repeatable execution steps for Seedance 2.0 4K or similar multimodal video models that support native audio.

This skill treats sound as a first-class part of the generation brief, not as an afterthought.

## Use when

- The user wants to create AI videos with sound.
- The user mentions Seedance 2.0 4K, Sundance 2.0 4K, or a similar video model.
- The user wants text-to-video, image-to-video, or video-to-video prompting.
- The user wants spoken dialogue, lip-sync, ambience, Foley, or music included in the generation brief.
- The user wants shot planning, continuity control, or prompt iteration help.
- The user wants Claude to prepare provider-ready API payloads, shell commands, or reusable prompt templates.
- The user has reference images, clips, scripts, or sound direction that should shape the output.

## Do not use when

- The user only wants static image generation.
- The task is purely non-generative timeline editing in Premiere, Resolve, or Final Cut, unless prompt planning or API automation is also needed.
- The user wants music production only, with no video deliverable.
- The user wants a generic writing assistant rather than a structured video-generation workflow.

## Core responsibilities

When this skill is relevant, Claude should:

1. Translate rough ideas into precise audiovisual prompts.
2. Break complex requests into shots when a single prompt would be overloaded.
3. Separate visual direction from audio direction, then recombine them clearly.
4. Preserve subject, wardrobe, environment, and tone consistency across iterations.
5. Produce execution-ready command templates when the user wants automation.
6. Suggest revision strategy based on failure modes such as drift, poor sync, weak motion, or muddy sound intent.

## Operating principles

- Prioritize one dominant action per shot.
- Treat audio as part of the shot design: dialogue, ambience, effects, and score should be intentional.
- Be specific about camera behavior, pacing, and framing.
- Keep prompts concrete and cinematic, not poetic and vague.
- Use continuity anchors repeatedly when generating multi-shot sequences.
- Split ambitious scenes into multiple clips instead of forcing too much into one generation.
- Revise only the failing dimensions after a result, rather than rewriting everything.

## Inputs

Typical user inputs may include:

- A concept, scene idea, or creative brief
- A script or spoken lines
- A storyboard or shot list
- Character and wardrobe descriptions
- Reference images or short video clips
- Requested aspect ratio, duration, and resolution
- Style references such as documentary, photoreal, anime, luxury ad, or music video
- Audio requirements such as room tone, footsteps, city ambience, score mood, or dialogue delivery

## Outputs

Depending on the request, produce one or more of these:

- A generation-ready master prompt
- A shot-by-shot prompt pack
- A continuity sheet for characters, props, wardrobe, and environment
- A revision plan for the next iteration
- A provider-ready JSON body or shell command template
- A concise asset checklist for references needed before generation

## Workflow

Follow this sequence unless the user asks for a different format.

### 1. Define the target clip

Clarify:

- What is happening
- Who or what is on screen
- Where it happens
- Visual style
- Duration
- Aspect ratio
- Whether audio should include dialogue, ambience, effects, music, or some combination

If the user request is underspecified, ask only for missing details that materially change output quality.

### 2. Build the shot model

Break the request into these layers:

- Subject
- Action
- Setting
- Visual style
- Camera
- Lighting
- Timing
- Audio
- Constraints

If the idea contains multiple major beats, split it into multiple shots.

### 3. Use references intentionally

If the user provides references, identify what each one controls:

- Character identity
- Wardrobe
- Environment
- Color palette
- Motion style
- Camera style
- Audio mood

Do not let references blur into a generic instruction blob.

### 4. Write the prompt

Write in clear production language. Favor exact nouns and verbs over abstract adjectives.

Good:
- “Medium close-up of a founder speaking directly to camera in a bright glass office, subtle hand motion, shallow depth of field, clean room tone, calm confident voice.”

Bad:
- “A beautiful inspiring cinematic vibe with amazing energy and cool sound.”

### 5. Add sound direction explicitly

When the user wants sound, specify:

- Whether there is spoken dialogue
- Who is speaking
- Tone, pace, and emotional delivery
- Ambient sound bed
- Action sounds
- Whether music exists, and how prominent it should be

Do not force music into every clip. Silence or minimal ambience may be the better choice.

### 6. Add constraints only where useful

Use constraints to reduce known failure modes, such as:

- No subtitle burn-in
- No extra fingers or warped limbs
- No unwanted crowd members
- No camera whip unless requested
- No off-screen speaker if dialogue should match visible lips

Avoid bloated negative prompt lists.

### 7. Plan iteration

After generation, evaluate:

- Subject consistency
- Motion quality
- Camera obedience
- Lip-sync quality
- Dialogue clarity
- Ambience realism
- Audio-visual match
- Artifact presence

Then revise only the dimensions that failed.

## Prompt template

Use this base structure and adapt it to the request:

Subject:
<who or what is shown>

Action:
<what happens in the shot>

Setting:
<environment and context>

Visual style:
<photoreal, luxury commercial, documentary, music video, anime, etc.>

Camera:
<framing, lens feel, movement, perspective>

Lighting:
<time of day, contrast, mood, practical sources>

Timing:
<duration and pacing>

Audio:
<dialogue, ambience, Foley, music, silence>

Constraints:
<only the most relevant limits>

## Audio guidance

Native-audio generations should usually specify all relevant layers:

- Dialogue: exact line or speaking intent, tone, and delivery
- Ambience: room tone, traffic, wind, rain, club noise, office HVAC, crowd bed
- Foley: footsteps, fabric movement, keyboard taps, glass clink, door close
- Music: only when desired, with mood and prominence described
- Sync: if visible speech exists, state that lip-sync should match the on-screen speaker

Examples of strong audio direction:

- “Low city traffic hum, occasional distant siren, soft rainfall on pavement, no music.”
- “Clean studio room tone, single speaker with warm confident delivery, no background chatter.”
- “Heavy arena crowd roar under a tense synth pulse, shoe squeak and jersey movement audible.”

## Shot planning rules

- One shot should usually center on one main action.
- If the scene has a beginning, turn, and payoff, consider three clips instead of one.
- Repeat key anchors for recurring characters: age range, hair, outfit, face shape, tone, accessories.
- Repeat key anchors for recurring environments: time of day, palette, weather, lens feel, density.
- Keep sound matched to visible events.
- Prefer concrete camera language such as:
  - locked-off tripod
  - handheld drift
  - slow dolly-in
  - overhead top shot
  - low-angle medium shot
  - wide establishing shot
  - macro insert

## Revision strategy

When a result fails, diagnose by category:

- Good image, weak motion -> simplify action and strengthen motion verbs
- Good motion, bad identity -> repeat subject anchors and reduce scene complexity
- Good visuals, weak sound -> specify ambience and sound events more explicitly
- Good dialogue, poor sync -> reduce speech speed and keep camera frontal or near-frontal
- Too much happening -> split into multiple clips

Prefer small targeted revisions over total rewrites.

## Command and automation behavior

When the user wants executable help:

- Produce a provider-ready shell command or JSON payload template
- Keep secrets in environment variables
- Use descriptive output filenames
- Store prompt text in separate files when prompts become long
- Validate input file paths before running a generation command

If a local script exists in `scripts/generate-video.sh`, prefer adapting it rather than inventing a different command style.

## Supporting files

Use the adjacent references when helpful:

- `references/prompt-patterns.md`
- `references/shot-continuity.md`

Use the shell helper when the user wants a runnable command:

- `scripts/generate-video.sh`

## Examples

### Example 1

User:
“Create a moody cyberpunk alley video with rain and distant sirens.”

Behavior:
- Produce a concise cinematic prompt with wet pavement reflections, neon signage, slow tracking camera, steady rainfall ambience, distant sirens, and no dialogue.

### Example 2

User:
“Turn this portrait into a talking founder intro with office ambience.”

Behavior:
- Produce an image-to-video prompt with direct-to-camera framing, natural facial performance, subtle body motion, clear spoken dialogue, and restrained office room tone.

### Example 3

User:
“Build a three-shot trailer from these references.”

Behavior:
- Create a shot list, one prompt per shot, continuity anchors, and a suggested generation order that preserves subject and sound consistency.

## Style rules for Claude

- Use plain, production-grade language.
- Avoid hype words unless the user explicitly wants ad copy.
- Avoid overly long prompts packed with synonyms.
- Prefer clarity, hierarchy, and testable instruction.
- Keep output easy to paste into scripts, APIs, or generation tools.
