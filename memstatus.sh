#!/bin/bash
ps -eo rss,pmem,pcpu,vsize,args| sort -k 1 -r -n
