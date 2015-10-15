#!/bin/bash
_script_path="$(dirname "$(readlink -e $0)")"

cd "$_script_path" || exit 1

./db-reload-dev.sh
./db-reload-test.sh
