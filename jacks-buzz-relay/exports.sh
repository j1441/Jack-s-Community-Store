# Static IPs on Umbrel's shared app network (10.21.0.0/16).
# Container-name DNS is unreliable here: bare service names collide across
# apps, and <app>_<service>_1 names contain underscores, which strict URL
# parsers (MinIO mc) reject. Official apps pin IPs — same pattern as bitcoin.
export APP_JACKS_BUZZ_RELAY_IP="10.21.61.2"
export APP_JACKS_BUZZ_RELAY_POSTGRES_IP="10.21.61.3"
export APP_JACKS_BUZZ_RELAY_REDIS_IP="10.21.61.4"
export APP_JACKS_BUZZ_RELAY_MINIO_IP="10.21.61.5"

# Relay URL override: drop a user.env next to the app's data dir to pin the
# community host (e.g. a Tailscale MagicDNS name). The relay binds its
# community to this host — changing it re-seeds a community for the new host.
_buzz_user_env="${UMBREL_ROOT:-/home/umbrel/umbrel}/app-data/jacks-buzz-relay/user.env"
[ -f "${_buzz_user_env}" ] && . "${_buzz_user_env}"
export APP_JACKS_BUZZ_RELAY_URL="${APP_JACKS_BUZZ_RELAY_URL:-ws://${DEVICE_DOMAIN_NAME:-umbrel.local}:8482}"
export APP_JACKS_BUZZ_RELAY_MEDIA_URL="${APP_JACKS_BUZZ_RELAY_MEDIA_URL:-http://${DEVICE_DOMAIN_NAME:-umbrel.local}:8482/media}"
