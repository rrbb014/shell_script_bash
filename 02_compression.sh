#!/bin/bash
# simple backup script
# -c means create, z means compression f means use archive file
tar -czf shell_script_basic.tar.gz ./
mv shell_script_basic.tar.gz ./backup/
