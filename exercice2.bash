#!/bin/bash

CRON_ENTRY="*/5 * * * * /bin/bash exercice1.bash /home/user/folders/\$(date +\%Y-\%m-\%d)"

(crontab -l; echo "$CRON_ENTRY" ) | crontab -