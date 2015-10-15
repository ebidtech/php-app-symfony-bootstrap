#!/bin/bash
_script_path="$(dirname "$(readlink -e $0)")"
_platform_path="$(readlink -e "$_script_path/../platform")"

## Clear cache.
cd "$_platform_path" || exit 1
echo "» Clean cache."
rm -rf app/cache/*


## Drop databases.
echo "» Drop dev database."
app/console doctrine:database:drop --env=dev --force &>/dev/null

## Create databases.
echo "» Create dev database."
app/console doctrine:database:create --env=dev &>/dev/null

## Create database schemas.
echo "» Create dev schema."
app/console doctrine:schema:create --env=dev

## Load fixtures if existent.
#echo "» Load dev fixtures."
#app/console eb:fixtures:load --env=dev --type=ORM --em=default --no-interaction

echo "» Complete."
