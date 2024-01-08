#!/usr/bin/env bash

EVE_SETTINGS=$(cat ./eve_settings.txt)
ACCOUNTS=("15852033 26635504 28433493 28753281")
CHARACTERS=("2113459487 2120307086 2121488510 2121537712 2119746951 2121331056 2121537463 2120306817 2121429160 2121537561")

set -x
for a in $ACCOUNTS; do
  cp ./core_user_backup.dat "${EVE_SETTINGS}/core_user_${a}.dat"
done
for c in $CHARACTERS; do
  cp ./core_char_backup.dat "${EVE_SETTINGS}/core_char_${c}.dat"
done
cp ./core_public_backup.yaml "${EVE_SETTINGS}/core_public__.yaml"
