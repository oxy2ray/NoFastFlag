# NoFastFlag

A magisk module for removing
`AUDIO_OUTPUT_FLAG_FAST` from the audio policy configuration.

## What this module does

This module removes the `AUDIO_OUTPUT_FLAG_FAST` flag from the audio
policy on supported devices.

Many apps that use **OpenSL ES** or **AAudio** request low‑latency
output by setting this flag. That path routes audio through
**FastMixer**, which is great for latency but comes with trade‑offs.

When FastMixer is active, several parts of the normal processing chain are bypassed:

-   Per‑track sample rate conversion
-   Per‑track effects
-   Per‑mix effects

That can causes sound quality degradation.

## Supported devices

Only myron (Redmi K90 Pro Max) is supported now. It's implemented using device‑specific configuration patches.

Maybe I will rewrite to patching when installing for supporting any kinds of Android. Possibly after coffee, Possibly never. No guarantees.
