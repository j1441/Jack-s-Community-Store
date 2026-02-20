# AIOStreams for Umbrel (Community App)

This folder contains the packaged Umbrel app for AIOStreams.

## How to Deploy
1.  Push this entire `umbrel-community-app-store` folder to your GitHub repository (the one you use as a Community Store).
2.  Add your GitHub repo URL to the Umbrel App Store settings.
3.  Install "AIOStreams" from the store.

## Tailscale Integration
The `docker-compose.yml` is set up to run AIOStreams on port 3000.
Since `getfilmbox.com` connects to this Umbrel via Tailscale:
- The AIOStreams manifest URL will be: `http://<YOUR-UMBREL-TAILSCALE-IP>:3000/manifest.json`
- Ensure `AIOSTREAMS_AUTH` is set securely if exposed (even over Tailscale).

## File Structure
- `umbrel-app.yml`: App metadata (name, version, port)
- `docker-compose.yml`: Service definition (app_proxy + aiostreams)
- `exports.sh`: Shared env vars (empty for now)
