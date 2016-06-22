#!/bin/bash
sudo find / -type f -size +1024000k -exec du -h {} \;
