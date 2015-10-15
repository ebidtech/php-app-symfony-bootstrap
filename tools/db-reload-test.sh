#!/bin/bash
_script_path="$(dirname "$(readlink -e $0)")"
_platform_path="$(readlink -e "$_script_path/../platform")"

## Clear cache.
cd "$_platform_path" || exit 1
echo "» Clean cache."
rm -rf app/cache/*


## Drop databases.
echo "» Drop test database."
app/console doctrine:database:drop --env=test --force &>/dev/null

## Create databases.
echo "» Create test database."
app/console doctrine:database:create --env=test &>/dev/null

## Create database schemas.
echo "» Create test schema."
app/console doctrine:schema:create --env=test

## Load fixtures if existent.
#echo "» Load test fixtures."
#app/console eb:fixtures:load --env=test --type=ORM --em=default --no-interaction

echo "» Complete."

