#!/usr/bin/env bash

EVE_SETTINGS=$(cat ./eve_settings.txt)
BACKUP_ACCOUNT="15852033"
BACKUP_CHARACTER="2113459487"

set -x
cp "${EVE_SETTINGS}/core_user_${BACKUP_ACCOUNT}.dat" ./core_user_backup.dat
cp "${EVE_SETTINGS}/core_char_${BACKUP_CHARACTER}.dat" ./core_char_backup.dat
cp "${EVE_SETTINGS}/core_public__.yaml" ./core_public_backup.yaml
