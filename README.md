# Arcade Volleyball (MS-DOS)

A macOS wrapper for the MS-DOS version of **Arcade Volleyball**, packaged as a double-clickable `.app` using [DOSBox-X](https://dosbox-x.com) and [Platypus](https://sveinbjorn.org/platypus).

## About the game

Arcade Volleyball is a sports video game originally written by Rhett Anderson and published as a type-in program in the June 1988 issue of *COMPUTE!'s Gazette* for the Commodore 64. The MS-DOS version was later sold as part of *COMPUTE!'s Best PC Games* collection and was written using Borland Turbo C.

Players control a head-shaped character and volley a ball over a net. The ball can be bounced off walls and the ceiling without penalty. Traditional volleyball scoring rules apply — only the serving team can score, and the first team to reach 15 points (with a 2-point margin) wins. Each team may hit the ball up to three times per volley.

The MS-DOS version features:
- 4-color CGA graphics
- PC speaker sound
- Single-player (vs. computer) and two-player modes
- The same physics and gameplay as the Amiga version

The game has been released into the public domain by its author.

## This repository

This repo contains the scripts and configuration needed to run the MS-DOS game on macOS via DOSBox-X, bundled as a native `.app`.

- `launch.sh` — shell script that locates DOSBox-X and launches the game
- `dosbox-x.conf` — DOSBox-X configuration (mounts game files, runs `AV.EXE`)
- `Arcade Volleyball.app` — pre-built macOS app bundle

See [README-macos-app.md](README-macos-app.md) for instructions on rebuilding the `.app` bundle from scratch using Platypus.

## Quick start

1. Install DOSBox-X:
   ```
   brew install dosbox-x
   ```
2. Double-click **Arcade Volleyball.app**.

## References

- [Arcade Volleyball on Wikipedia](https://en.wikipedia.org/wiki/Arcade_Volleyball)
- [Arcade Volleyball on Classic DOS Games](https://www.classicdosgames.com/game/Arcade_Volleyball.html)
- [Arcade Volleyball on MobyGames](https://www.mobygames.com/game/arcade-volleyball)
