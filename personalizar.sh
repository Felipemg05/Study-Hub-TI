#!/bin/bash
# Uso: ./personalizar.sh usuario-github link-youtube
[ $# -ne 2 ] && echo "Uso: ./personalizar.sh usuario-github link-youtube" && exit 1
grep -rl --exclude-dir=.git --exclude=personalizar.sh -e SEU_USUARIO -e LINK_YOUTUBE . | while read f; do sed -i "s|SEU_USUARIO|$1|g; s|LINK_YOUTUBE|$2|g" "$f"; done
echo "Pronto. Confira com: git diff"
