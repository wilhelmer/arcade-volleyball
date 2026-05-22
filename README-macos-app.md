# Arcade Volleyball — macOS App (DOSBox-X + Platypus)

Two files drive the macOS app: a launch script and a DOSBox-X config. Platypus
wraps them into a double-clickable `.app` bundle.

---

## Prerequisites

### 1. DOSBox-X
```
brew install dosbox-x
```
Or download the `.dmg` from https://dosbox-x.com and move **DOSBox-X.app** to
`/Applications`.

### 2. Platypus
```
brew install --cask platypus
```
Or download from https://sveinbjorn.org/platypus and move **Platypus.app** to
`/Applications`.

---

## Build the .app with Platypus

1. Open **Platypus.app**.

2. Fill in the fields:

   | Field | Value |
   |---|---|
   | **App Name** | Arcade Volleyball |
   | **Script Type** | bash |
   | **Script Path** | `launch.sh` (drag the file in) |
   | **Interface** | None (Background) |
   | **Icon** | *(optional — drag in a .icns file)* |
   | **Identifier** | com.yourname.arcade-volleyball |
   | **Version** | 1.0 |

3. Click **Add Files…** (the "Bundled Files" section at the bottom) and add:
   - `Av.exe`
   - `Av.dat`
   - `dosbox-x.conf`

4. Click **Create App** and save as **Arcade Volleyball.app** wherever you like.

---

## How it works

When launched, the `.app` runs `launch.sh`, which:

1. Resolves the `Resources/` folder inside the bundle (where the bundled files
   live).
2. Finds DOSBox-X (checks `/Applications/DOSBox-X.app`, then Homebrew `PATH`).
3. Starts DOSBox-X with `dosbox-x.conf`, which mounts `Resources/` as drive C:
   and immediately runs `AV.EXE`.
4. DOSBox-X quits automatically when the game exits (`exit` in `[autoexec]`).

---

## Tweaking the DOSBox-X config

Edit `dosbox-x.conf` before building the bundle (or re-build after editing):

- **Window size** — change `windowresolution=` in `[sdl]`
- **Fullscreen** — set `fullscreen=true` in `[sdl]`
- **CPU speed** — change `cycles=` in `[cpu]` (e.g. `cycles=3000` for older
  slow games, `cycles=max` for fast modern hardware)
- **Scaler** — change `scaler=` in `[render]` (`normal2x`, `hq3x`, etc.)
