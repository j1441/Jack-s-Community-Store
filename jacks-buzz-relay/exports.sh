# Static IPs on Umbrel's shared app network (10.21.0.0/16).
# Container-name DNS is unreliable here: bare service names collide across
# apps, and <app>_<service>_1 names contain underscores, which strict URL
# parsers (MinIO mc) reject. Official apps pin IPs — same pattern as bitcoin.
export APP_JACKS_BUZZ_RELAY_IP="10.21.61.2"
export APP_JACKS_BUZZ_RELAY_POSTGRES_IP="10.21.61.3"
export APP_JACKS_BUZZ_RELAY_REDIS_IP="10.21.61.4"
export APP_JACKS_BUZZ_RELAY_MINIO_IP="10.21.61.5"
