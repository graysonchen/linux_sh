#!/bin/bash
while read l; do
  [[ -n $l && ${l###} = $l ]] && ssh-keygen -l -f /dev/stdin <<<$l;
done < ~/.ssh/authorized_keys
