#!/usr/bin/env bash
set -euo pipefail
mkdir -p assets
echo "Downloading Verify-AI images..."
curl -L "https://verify-ai.com/images/Screenshot_2025-03-05_at_13.41.49-removebg-preview.png" -o assets/logo.png
curl -L "https://verify-ai.com/images/1e8c576a-93ce-4cdc-b9e7-176329343898.avif" -o assets/feature1.avif || true
curl -L "https://verify-ai.com/images/cec8aa1d-401f-410b-a1eb-0d0c1b66201f.avif" -o assets/feature2.avif || true
curl -L "https://verify-ai.com/images/e755764f-0928-41cf-b1e9-7d9a4be8f23f.avif" -o assets/feature3.avif || true
curl -L "https://verify-ai.com/images/79485f21-76f2-48ed-99bd-20a6408b3add.avif" -o assets/feature4.avif || true
# Update index.html to use local assets
sed -i.bak 's|https://verify-ai.com/images/Screenshot_2025-03-05_at_13.41.49-removebg-preview.png|assets/logo.png|g' index.html || true
sed -i.bak 's|https://verify-ai.com/images/1e8c576a-93ce-4cdc-b9e7-176329343898.avif|assets/feature1.avif|g' index.html || true
sed -i.bak 's|https://verify-ai.com/images/cec8aa1d-401f-410b-a1eb-0d0c1b66201f.avif|assets/feature2.avif|g' index.html || true
sed -i.bak 's|https://verify-ai.com/images/e755764f-0928-41cf-b1e9-7d9a4be8f23f.avif|assets/feature3.avif|g' index.html || true
sed -i.bak 's|https://verify-ai.com/images/79485f21-76f2-48ed-99bd-20a6408b3add.avif|assets/feature4.avif|g' index.html || true
echo "Done. Local assets saved to ./assets and index.html updated."