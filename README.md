# PHP App bootstrap
This projects serves as a base for PHP Symfony App projects.

## Usage

##### Clone this repository.

```bash
git clone git@github.com:ebidtech/php-app-symfony-bootstrap.git <MY_PROJECT>
```

##### Clear the README file.

```bash
echo "" > README.md
```

##### Reset the repository's history, so that your project does not contain the bootstrap's history.

```bash
rm -rf .git
git init
git add .
git commit -m "Initial commit."
```

##### Add a new remote to your repository.

```bash
git remote add origin <MY_REPOSITORY_URL>
```

##### Push the first commit to your own repository.

```bash
git push -u origin master
```

## Setup

### Composer

You can download and install composer running ```tools/install-composer.sh```. It will be installed to the repository's base directory, and can be executed with ```php composer.phar```.

You can install a specific composer version by running ```COMPOSER_VERSION=1.0.0-alpha10 tools/install-composer-sh```. By editing **tools/install-composer.sh** you can fix a specific version of composer to always be downloaded for your project.

### PHPUnit

By default **composer.json** is configured to download PHPUnit. Before using PHPUnit you should edit **tests/bootstrap.php** and change ```<<TEST_TOP_LEVEL_NAMESPACE>>``` to the top namespace of your test code (by default the PSR-4 standard is used).


## Badges

##### Test Suite
[![Circle CI](https://circleci.com/gh/:owner/:repo.png?circle-token=:circle-token)](https://circleci.com/gh/:owner/:repo/tree/master)

##### Composer LOCK
[![Dependency Status](https://www.versioneye.com/user/projects/:TOKEN/badge.svg?style=flat)](https://www.versioneye.com/user/projects/:TOKEN)

##### Composer JSON
[![Dependency Status](https://www.versioneye.com/user/projects/:TOKEN/badge.svg?style=flat)](https://www.versioneye.com/user/projects/:TOKEN)
