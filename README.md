# Verify-AI Static Site (Navigation/Layout Upgrade)

This is a lightweight, single-page site using **Tailwind via CDN**. You can deploy on **GitHub Pages** (just push this folder) or open `index.html` locally.

## What’s inside
- Sticky, accessible top navigation (Platform / Use Cases / Resources / Company) with primary CTA (Book a demo)
- Hero section with value proposition
- Sections populated with text from verify-ai.com: Approach, Automated/Transparent/Dynamic/Audit Trail/Guidance, and Team
- Simple footer and basic responsiveness

## Images
The project references images hosted at `verify-ai.com`:
{
  "logo": "https://verify-ai.com/images/Screenshot_2025-03-05_at_13.41.49-removebg-preview.png",
  "feature1": "https://verify-ai.com/images/1e8c576a-93ce-4cdc-b9e7-176329343898.avif",
  "feature2": "https://verify-ai.com/images/cec8aa1d-401f-410b-a1eb-0d0c1b66201f.avif",
  "feature3": "https://verify-ai.com/images/e755764f-0928-41cf-b1e9-7d9a4be8f23f.avif",
  "feature4": "https://verify-ai.com/images/79485f21-76f2-48ed-99bd-20a6408b3add.avif"
}

If you want everything to work **offline**, run the helper script to download images locally:

### macOS/Linux
```bash
bash scripts/fetch_assets.sh
```

### Windows (PowerShell)
```powershell
powershell -ExecutionPolicy Bypass -File scripts/fetch_assets.ps1
```

This will save copies into `assets/` and update `index.html` to use local paths.

## GitHub Pages
1. Create a new repo and push this folder.
2. In repo settings → Pages, set the branch to `main` and folder to `/ (root)`.
3. Wait a minute and open the Pages URL.

## Local preview
Just open `index.html` in your browser. (No build step needed.)
