#!/bin/bash

# Create RAR archive
rar a -pangel confidential.rar confidential_report.txt

# Extract hash
rar2john confidential.rar > rarhash.txt

# Crack password
john --wordlist=/usr/share/wordlists/rockyou.txt rarhash.txt

# Show result
john --show rarhash.txt
