DRY_RUN="--dry-run=true"
REPOSITORY="nilius/renovate_issue"
docker run --rm \
  -e RENOVATE_TOKEN=${RENOVATE_TOKEN} \
  -e LOG_LEVEL=debug \
  -e RENOVATE_GIT_FS=ssh \
  -e RENOVATE_ENDPOINT=https://api.github.com \
  --net=host -v $(pwd)/config.js:/config.js -e RENOVATE_CONFIG_FILE=/config.js \
   renovate/renovate:32.9.3 \
  "${DRY_RUN}" "${REPOSITORY}"

