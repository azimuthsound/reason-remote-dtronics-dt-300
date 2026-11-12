# DTronics DT-300 — Reason Remote Codec

Deprecated Reason Remote files (Lua codec + remote map) for using the [DTronics DT-300](https://www.dtronics.nl/dt-300) as a synth controller in Reason. No longer in development; kept here as an archive.

The codec and map are my own work, written in 2017–2018.

The DT-300 is a hardware programmer for the Roland Alpha Juno and MKS-50. Set it to send MIDI CC (rather than SysEx) using the CC numbers in `DT 300.lua` (the DT-300 lets you change them); the codec turns its Alpha Juno-style controls into Reason Remote items.

## Controls

The codec defines 36 input-only DT-300 controls (absolute CC, 0–127, any MIDI channel), named after the panel sections:

- **LFO:** Rate, Delay
- **DCO:** Range, LFO, Env, Env Mode, Aftertouch, Pulse, Sawtooth, Sub, Sub Level, Noise Level, PWM, PWM Rate
- **VCF:** HPF, Freq, Res, LFO, Env, Env Mode, Key Follow, Aftertouch
- **VCA:** Level, Env Mode, Aftertouch
- **Envelope:** T1–T4, L1–L3, Key Follow
- **Chorus:** On, Rate
- **Performance:** Bender Range

Each Reason device gets its own layout that follows the DT-300's panel as closely as that device allows (for example on SubTractor, VCF Freq/Res go to the filter, Env T1–L2 to the filter envelope, Env T3–Key Follow to the amp envelope).

## Supported devices

**Reason devices**

- Combinator (VCF Freq / Res / Key Follow / Aftertouch → Rotary 1–4)
- Europa
- Grain
- Malström
- NN-19
- NN-XT
- PX7
- SubTractor
- Thor

**Rack Extensions**

| Developer | Device | Remote ID |
|-----------|--------|-----------|
| AudioRealism | Dominator | `se.audiorealism.Dominator` |
| AudioRealism | ABL2 | `se.audiorealism.reabl2` |
| AudioRealism | ABL3 | `se.audiorealism.abl3` |
| Blamsoft | Viking | `com.blamsoft.Viking` |
| Blamsoft | VK-2 | `com.blamsoft.VK2` |
| Ekssperimental Sounds | ES01 | `se.ekss.es01` |
| FXpansion | Tres | `com.fxpansion.Tres` |
| Jiggery Pokery | JP Harmonic Synth | `com.jiggerypokery.JPSHarmonicSynth` |
| kiloHearts | kHs ONE | `com.kilohearts.khsONE` |
| KORG | Mono/Poly | `jp.co.korg.MonoPoly` |
| KORG | Polysix | `jp.co.korg.Polysix` |
| LoveOne | Protron | `se.loveone.Protron` |
| Primal Audio | FM4 | `com.primalaudio.FM4` |
| Quadelectra | Arkana | `com.quadelectra.Arkana` |
| Rob Papen | SubBoomBass | `com.robpapen.SubBoomBassRE` |
| Synapse Audio | Antidote | `com.synapseAudioSoftware.Antidote` |
| Synapse Audio | Legend | `com.synapseAudioSoftware.Legend` |
| Zvork | Noxious | `fr.zvork.Noxious` |

## Install

1. Copy `DT 300.luacodec`, `DT 300.lua` and `DT 300.png` to the `Remote/Codecs/Lua Codecs/DTronics/` folder.
2. Copy `DT 300.remotemap` to the `Remote/Maps/DTronics/` folder.
3. Restart Reason, then add the surface manually in Preferences → Control Surfaces (Manufacturer: DTronics, Model: DT 300). It has one MIDI input and no output.

On macOS the Remote folder is `~/Library/Application Support/Propellerhead Software/Remote/`; on Windows it's `%APPDATA%\Propellerhead Software\Remote\`.

## Licence

MIT — see `LICENSE`.
