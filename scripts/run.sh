#!/usr/bin/env bash

echo "ENVIRONMENT: $ENVIRONMENT"
if [ "$ENVIRONMENT" = "development" ]; then
  #  Development build
  echo "Development Server"
  yarn start
else
  #  Production build
  echo "Production Server"
  echo "Files in dist"
  ls dist/
  yarn serve -s -n -p 8123 dist
fi
