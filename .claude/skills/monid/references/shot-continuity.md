# Shot Continuity

Use this guide when a request spans multiple clips and the output needs to feel like one coherent sequence.

## Continuity principle

A multi-shot generation succeeds when the viewer feels the same subject, world, and tone persist across cuts.

Continuity should be actively maintained in the prompt pack, not assumed.

## What to lock across shots

Repeat the same anchors when they matter:

- Character identity: age range, skin tone, hairstyle, facial hair, body type, key facial traits
- Wardrobe: jacket, shirt color, accessories, shoes, eyewear
- Props: phone model, briefcase, microphone, car, weapon, drink, laptop
- Environment: time of day, weather, palette, location density, architecture
- Visual treatment: realism level, lens feel, contrast, grain, color grade
- Audio world: room tone, city bed, weather ambience, crowd intensity, music presence

## Continuity sheet template

Use this before writing multi-shot prompts.

### Subject anchors
- Name or role:
- Approximate age:
- Face/hair traits:
- Clothing:
- Accessories:
- Movement quality:

### Environment anchors
- Location:
- Time of day:
- Weather:
- Dominant colors:
- Visual density:
- Lighting style:

### Audio anchors
- Dialogue present or not:
- Ambient bed:
- Repeating Foley elements:
- Music presence:
- Overall sound intensity:

## Three-shot structure

A simple three-shot sequence often works best:

1. Establishing shot
- Show the world and mood
- Keep motion simple
- Let ambience define place

2. Subject shot
- Move closer to the person or action
- Reinforce identity anchors
- Add the key performance beat or spoken line

3. Detail or payoff shot
- Show the consequential detail, reveal, gesture, or final image
- Match sound to the visual payoff

## Example continuity pack

### Project
Luxury founder teaser

### Subject anchors
- Black male founder, early 30s
- Clean lineup beard
- Short cropped hair
- Charcoal suit, open collar black shirt
- Silver watch on left wrist
- Calm, precise movement

### Environment anchors
- Modern glass office
- Early evening blue-hour city outside
- Cool neutral palette
- Soft practical interior lights
- Clean reflective surfaces

### Audio anchors
- Low office room tone
- Distant city hum
- Single speaker voice, calm and confident
- No music in shot 1, subtle pulse introduced in shot 2, slightly stronger in shot 3

## Continuity rules

- Repeat the critical subject anchors in every shot prompt.
- Do not assume the model remembers previous shots unless the same references are reused.
- Keep wardrobe unchanged unless the scene intentionally changes time or location.
- Maintain one sound world unless a transition is intentional.
- Reuse camera language family across the sequence so cuts feel related.

## Camera continuity

Good sequence progression:
- Wide establishing shot
- Medium performance shot
- Tight detail or emotional close-up

Avoid random jumps unless the style is intentionally chaotic.

## Audio continuity

Treat sound as a continuous environment across cuts unless there is an intentional break.

Examples:
- Rain should remain present if all shots occur in the same storm.
- Office HVAC and faint keyboard beds should persist across adjacent office shots.
- A crowd roar should not disappear between connected arena shots unless the camera moves to an isolated interior.

## Drift prevention

If results vary too much, tighten:
- Subject descriptors
- Wardrobe repetition
- Environmental specifics
- Time-of-day wording
- Camera simplicity
- Number of actions per shot

## Revision checklist

After first-pass generation, review:

- Does the subject still look like the same person?
- Does the wardrobe stay consistent?
- Does the environment feel like the same place?
- Does the audio bed remain coherent?
- Do the cuts feel motivated?
- Is any shot trying to do too much?

If continuity fails, simplify and restate anchors more explicitly.
