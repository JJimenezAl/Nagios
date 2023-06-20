#!/bin/bash
su nagios
scp BKPSACCT.$(date +%d-%m-%y).sql nagios@server:/bkp/


