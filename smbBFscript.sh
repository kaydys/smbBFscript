#!/bin/bash
for share in $(cat <shares_list.txt>); do
  smbclient -N //<IP_TARGET>/$share -c "ls" 2>/dev/null && echo "[!] $share found as a allowed auth anon share.";
done
