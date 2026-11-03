# Afterglow

One library for all your PC game launchers. Afterglow finds the games installed through Steam, Epic Games, GOG and Rockstar (plus any `.exe` you add yourself) and shows them in a single neon-styled window. Press Play and it opens each game through the right launcher.

> Afterglow is an independent project. It is not affiliated with, endorsed by, or sponsored by Valve (Steam), Epic Games, GOG, or Rockstar Games. All product names are trademarks of their owners.

## Features

- **Automatic library scan** on startup. No sign-in needed for installed games.
- **Steam account sync** (optional): connect with your own Steam Web API key to also see games you own but haven't installed, plus your play time.
- **Search, sort, favorites**, and recently played.
- **Themes:** blue, violet, teal or crimson accents, with matching app and tray icons.
- **Custom backgrounds:** import your own JPG, JPEG or PNG images and pick one from a carousel. With none selected you get black with a glow in your accent colour.
- **Tray icon**, one window at a time, and an installer that cleans up after itself.

## Download

Get the latest `Afterglow-Setup-x.y.z.exe` from the [Releases](../../releases) page and run it. Windows only for now; Linux is planned for 1.10.

If Windows shows **"Windows protected your PC"** the installer is not yet code-signed. Click **More info → Run anyway**. Each release includes a `SHA256SUMS.txt` so you can check the file you downloaded.

## How it finds your games

| Launcher | Where Afterglow looks |
|---|---|
| Steam | Your Steam folders (`appmanifest_*.acf` files) |
| Epic Games | `ProgramData\Epic\EpicGamesLauncher\Data\Manifests` |
| GOG | Registry entries written by GOG Galaxy |
| Rockstar | Registry plus `Program Files\Rockstar Games` |

If a launcher lives somewhere unusual, set its folder in **Settings → Launcher sync**.

Epic, GOG and Rockstar don't provide an official sign-in for apps like this, so Afterglow only reads what is installed on your PC. It never asks for those passwords.

**Status:** Steam detection has been tested on a real install. Epic, GOG and Rockstar detection is implemented but still needs testing on machines that have those launchers. Bug reports with details are very welcome.

## Steam account sync (optional)

1. Get a Web API key from <https://steamcommunity.com/dev/apikey>.
2. Make sure your Steam profile's *Game details* are **Public**.
3. In Afterglow open **Settings → Log-ins**, enter your profile and key, and press Connect.

The key is encrypted with Windows secure storage on your PC and is only ever sent to Steam.

## Build from source

Requires [Node.js](https://nodejs.org/) 20 or newer.

```bash
npm install
npm start          # run the app
npm run dist       # build the Windows installer into dist/
npm run icons      # regenerate the themed icons (tools/make-icons.js)
```

Releases are built by GitHub Actions when a `v*` tag is pushed (see `.github/workflows/release.yml`).

## Optional font

The logo and headings use a condensed system font. If you own the Urban-Neon font, put it at `src/renderer/fonts/UrbanNeon.otf` and Afterglow will use it automatically. It is not included in this repository.

## Roadmap

- Linux support (1.10)
- Auto-update
- Code-signed installers

## License

[MIT](LICENSE) © 2026 Coventra AI
