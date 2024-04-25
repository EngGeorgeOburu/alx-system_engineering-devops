#!/usr/bin/bash
# Sends a JSON POST request to agiven URL with a given JSON file
curl-s -H "Content-Type: application/json" -d "$(cat "$2")" "$!"

