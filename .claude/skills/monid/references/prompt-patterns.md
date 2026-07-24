# Prompt Patterns

These patterns are reusable structures for video generation with sound.

Use them as starting frameworks, then tailor them to the specific concept.

## 1. Text-to-video prompt

Use when the user starts from an idea only.

Template:

Subject:
<who or what appears>

Action:
<one main action>

Setting:
<where it happens>

Visual style:
<style and realism level>

Camera:
<shot type, movement, lens feel>

Lighting:
<time of day, mood, practical sources>

Timing:
<clip duration and pacing>

Audio:
<dialogue, ambience, Foley, music, or silence>

Constraints:
<only high-value negatives>

Example:

Subject:
A young boxer in a gray hoodie

Action:
Shadowboxing slowly, then looking up into camera

Setting:
Dim old-school boxing gym with hanging heavy bags

Visual style:
Photoreal, gritty sports documentary

Camera:
Medium shot with a slow handheld push-in

Lighting:
Single overhead practical light, deep shadows, light haze in the air

Timing:
8 seconds, deliberate pacing

Audio:
Distant gym room tone, shoes scraping lightly on canvas, soft breaths, no music, no dialogue

Constraints:
No crowd, no subtitles, no extra people entering frame


## 2. Image-to-video prompt

Use when a user provides a portrait, product shot, or scene reference.

Template:

Source intent:
Animate the provided reference while preserving identity and overall design

Performance:
<facial movement, body motion, gesture intent>

Camera:
<framing and motion>

Environment:
<what remains stable around the subject>

Audio:
<voice, ambience, effects, music>

Constraints:
<identity preservation and artifact control>

Example:

Source intent:
Animate the provided founder portrait while preserving face, hairstyle, suit, and background office design

Performance:
Natural blinking, subtle head turns, light hand emphasis while speaking directly to camera

Camera:
Locked medium close-up, minimal drift

Environment:
Bright modern office, shallow depth of field, background remains consistent and uncluttered

Audio:
Clear spoken intro in a calm confident tone, soft office room tone, no music

Constraints:
No major wardrobe drift, no subtitle burn-in, no exaggerated gestures, lip-sync should match the visible speaker


## 3. Product-commercial prompt

Use when the user wants polished brand footage.

Template:

Product:
<exact object>

Action:
<how it moves or is revealed>

Environment:
<surface, set, atmosphere>

Visual style:
<luxury, tech, beauty, sports, etc.>

Camera:
<hero macro, slider move, rotation, etc.>

Lighting:
<clean softbox, hard rim, reflective highlights>

Audio:
<clicks, fabric, pour, fizz, bass hit, score mood>

Constraints:
<keep branding clean, avoid distortion>

Example:

Product:
A matte black wireless earbud charging case

Action:
Case rotates slowly, lid opens, earbuds rise slightly into view

Environment:
Dark charcoal tabletop with soft reflective texture

Visual style:
Minimal luxury tech commercial

Camera:
Macro lens feel with a slow circular slider move

Lighting:
Controlled studio highlights with crisp edge light and soft front fill

Audio:
Soft mechanical case click, faint electronic texture, restrained low-end pulse, no voice

Constraints:
No warped branding, no extra objects, no fingerprints, no subtitles


## 4. Talking-head prompt

Use for founders, creators, hosts, or spokesperson shots.

Checklist:
- Keep framing frontal or near-frontal for better sync
- Keep spoken lines short
- Specify delivery style
- Keep ambience minimal unless location matters

Template:

Speaker:
<identity and look>

Framing:
<medium close-up, seated, standing>

Performance:
<calm, assertive, excited, intimate>

Dialogue:
<exact line or speaking intent>

Environment:
<office, studio, street, stage>

Audio:
<voice quality + ambience>

Constraints:
<sync and drift controls>


## 5. Music-video prompt

Use when the user wants stylized performance footage.

Guidelines:
- Keep one visual motif per shot
- Distinguish performance sound from score intent
- If vocals are visible, call out lip-sync expectations
- Separate atmosphere from choreography

Template:

Performer:
<artist look and styling>

Action:
<performing, walking, dancing, staring into lens>

Setting:
<club, rooftop, warehouse, dreamscape>

Visual style:
<genre and texture>

Camera:
<handheld, snap zooms, dolly, crane, fisheye, etc.>

Lighting:
<concert, neon, sunset, monochrome>

Audio:
<track feel, crowd bed, reverb, voice sync expectations>

Constraints:
<avoid extra dancers, avoid visual clutter, etc.>


## 6. Documentary-style prompt

Use when the user wants realism and observational tone.

Guidelines:
- Use plain visual language
- Avoid over-stylization
- Let ambience carry realism
- Prefer restrained camera movement

Template:

Subject:
<person, place, process>

Action:
<what is being observed>

Setting:
<real location>

Visual style:
Natural documentary realism

Camera:
Shoulder-height handheld or tripod, restrained movement

Lighting:
Available light or naturalistic practical lighting

Audio:
Location ambience, realistic incidental sound, no score unless requested

Constraints:
No glamorized ad aesthetic, no artificial lens flare, no crowd duplication
