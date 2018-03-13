#!/bin/bash
DIR_ROUTE=sample_backup_$(date +%Y%m%d).tar.gz
# compress current directory's contents with DIR_ROUTE name
tar -czf $DIR_ROUTE ./
