#!/bin/bash

set -eou pipefail

failed=0

function checkSerialNumbers()
{
    serial1=$(/usr/libexec/PlistBuddy -c "Print PlatformInfo:Generic:MLB" EFI/OC/config.plist)
    serial2=$(/usr/libexec/PlistBuddy -c "Print PlatformInfo:Generic:SystemSerialNumber" EFI/OC/config.plist)
    serial3=$(/usr/libexec/PlistBuddy -c "Print PlatformInfo:Generic:SystemUUID" EFI/OC/config.plist)

    if [ "${serial1}" == "[GETYOUROWN]" ] && [ "${serial2}" == "[GETYOUROWN]" ] && [ "${serial3}" == "[GETYOUROWN]" ]; then
        echo 0
    else
        echo 1
    fi
}

test_pattern='\[GETYOUROWN\]'

# configPlistChanged=$(git diff-index -M --name-only --cached HEAD -- '*config.plist')

if git diff-index -M --name-only --cached HEAD -- '*config.plist' >/dev/null 2>&1
then
    result=$(checkSerialNumbers)

    if [ ${result} == 1 ]; then
        echo "COMMIT REJECTED!" >&2
        echo "Remove values for MLB, SystemSerialNumber and SystemUUID before committing." >&2
        echo '----' >&2
        failed=1
    else
        failed=0
    fi
fi

exit ${failed}