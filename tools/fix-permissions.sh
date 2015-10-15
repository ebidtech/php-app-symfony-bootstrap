#!/bin/bash
_sudo=
_www_user=www-data
_script_path="$(dirname "$(readlink -e $0)")"

[[ "$(whoami)" != "root" ]] && _sudo="sudo"

cd "$(readlink -e "$_script_path/../platform")" && \
    $_sudo setfacl -R -m u:$_www_user:rwx -m u:$(whoami):rwx app/cache app/logs && \
    $_sudo setfacl -dR -m u:$_www_user:rwx -m u:$(whoami):rwx app/cache app/logs
