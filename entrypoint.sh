#!/bin/ash
set -e

if [ -n "$FLASK_ENV" ]; then
    export FLASK_ENV=$FLASK_ENV
fi

exec "$@"
