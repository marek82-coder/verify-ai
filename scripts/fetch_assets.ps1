$ErrorActionPreference = "Stop"
New-Item -ItemType Directory -Force -Path assets | Out-Null
Write-Host "Downloading Verify-AI images..."
Invoke-WebRequest -Uri "https://verify-ai.com/images/Screenshot_2025-03-05_at_13.41.49-removebg-preview.png" -OutFile "assets/logo.png"
foreach ($pair in @(@("https://verify-ai.com/images/1e8c576a-93ce-4cdc-b9e7-176329343898.avif", "assets/feature1.avif"),
                    @("https://verify-ai.com/images/cec8aa1d-401f-410b-a1eb-0d0c1b66201f.avif", "assets/feature2.avif"),
                    @("https://verify-ai.com/images/e755764f-0928-41cf-b1e9-7d9a4be8f23f.avif", "assets/feature3.avif"),
                    @("https://verify-ai.com/images/79485f21-76f2-48ed-99bd-20a6408b3add.avif", "assets/feature4.avif"))) {
    try {
        Invoke-WebRequest -Uri $pair[0] -OutFile $pair[1]
    } catch {
        Write-Warning "Failed to download $($pair[0]). Skipping."
    }
}
# Update index.html to use local assets
(Get-Content index.html).Replace("https://verify-ai.com/images/Screenshot_2025-03-05_at_13.41.49-removebg-preview.png", "assets/logo.png").Replace("https://verify-ai.com/images/1e8c576a-93ce-4cdc-b9e7-176329343898.avif", "assets/feature1.avif").Replace("https://verify-ai.com/images/cec8aa1d-401f-410b-a1eb-0d0c1b66201f.avif", "assets/feature2.avif").Replace("https://verify-ai.com/images/e755764f-0928-41cf-b1e9-7d9a4be8f23f.avif", "assets/feature3.avif").Replace("https://verify-ai.com/images/79485f21-76f2-48ed-99bd-20a6408b3add.avif", "assets/feature4.avif") | Set-Content index.html
Write-Host "Done. Local assets saved to ./assets and index.html updated."