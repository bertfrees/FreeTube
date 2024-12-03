#!/usr/bin/env bash

# assume the first argument that does not start with -- is the URL
for arg in "$@"; do
	case "$arg" in
		--*)
			: skip
			;;
		*)
			URL="$arg"
			break
			;;
	esac
done

# YTDL_HOST and YTDL_PORT must in environment

curl "http://${YTDL_HOST}:${YTDL_PORT}/download?url=${URL}"
