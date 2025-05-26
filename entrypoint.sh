#!/bin/bash

rm -rf /app/node_modules
cp -rfu /cache/node_modules/. /app/node_modules/
exec npm run dev