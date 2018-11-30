#!/bin/bash
set -e

if [ ! -f ./extensions/SemanticMediaWiki/.smw.json ]; then
    php maintenance/update.php --skip-external-dependencies --quick
fi

exec apache2-foreground -DFOREGROUND "$@"
