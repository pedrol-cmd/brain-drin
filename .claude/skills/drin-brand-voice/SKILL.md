---
name: brand-voice
description: Build reusable voice profiles from source material — extracts sentence rhythm, tone patterns, vocabulary, and style rules. Feeds into content-marketer and sales-automator. Use when defining or refining brand voice for any channel.
---

# Brand Voice Profile Builder

Extract and codify a consistent voice from source material so all content sounds like the same person.

## When to Use

- Setting up content strategy for a new channel
- Ensuring consistency across LinkedIn, email, website
- Onboarding a new writer or AI tool to match existing voice
- Refining voice after analyzing what performs best

## Process

### Step 1: Gather Source Material

Ask the user for 5-10 examples of writing they like (their own or aspirational):
- LinkedIn posts that performed well
- Emails that got replies
- Messages that felt natural
- Writing from others they want to emulate

### Step 2: Extract Patterns

Analyze the source material for:

**Sentence Structure**
- Average sentence length (short/medium/long)
- Rhythm pattern (short-short-long? Varied? Punchy?)
- Paragraph length
- Use of fragments vs complete sentences

**Tone Markers**
- Formality level (1-5 scale)
- Humor frequency and type
- Directness level
- Emotion display (reserved vs expressive)

**Vocabulary**
- Words they use often (signature phrases)
- Words they never use (anti-patterns)
- Jargon level (technical vs accessible)
- Filler words to avoid

**Structural Habits**
- How they open (question? statement? story?)
- How they close (CTA? question? insight?)
- Use of lists, headers, bold
- Capitalization patterns

### Step 3: Build Voice Profile

```markdown
# Voice Profile: [Name/Brand]

## Core Voice
[2-3 sentences describing the overall voice character]

## Do
- [Pattern to follow — with example from source material]
- [Pattern to follow — with example]
- [Pattern to follow — with example]

## Don't
- [Anti-pattern — with example of what to avoid]
- [Anti-pattern — with example]
- [Anti-pattern — with example]

## Sentence Rhythm
[Description of typical sentence patterns]

## Signature Phrases
- [Phrase they use naturally]
- [Phrase they use naturally]

## Banned Words
- [Word/phrase to never use]
- [Word/phrase to never use]

## Tone by Channel
| Channel | Formality | Length | Special Notes |
|---------|-----------|--------|---------------|
| LinkedIn | [1-5] | [range] | [notes] |
| Email | [1-5] | [range] | [notes] |
| WhatsApp | [1-5] | [range] | [notes] |
```

### Step 4: Validate

Generate 2-3 sample pieces using the profile. Ask the user: "Does this sound like you?"
Adjust based on feedback.

## Output

Save the voice profile to `docs/voice-profile.md` (or user-specified location).
This profile is then referenced by content-marketer and sales-automator agents.

## Notes

- Voice profiles should be updated quarterly based on what's performing
- Different channels may need slight variations (LinkedIn is more polished than WhatsApp)
- The profile should feel like guidelines, not a straitjacket
