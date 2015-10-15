#!/bin/sh

cp ../tools/pre-commit ../.git/hooks/pre-commit
chmod +x ../.git/hooks/pre-commit
pushd ../platform/vendor/squizlabs/php_codesniffer/CodeSniffer/Standards
rm -rf Symfony2
git clone https://github.com/ebidtech/Symfony2-coding-standard.git Symfony2
popd
