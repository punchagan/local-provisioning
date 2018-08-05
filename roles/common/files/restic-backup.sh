#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Software
restic -r gs:punchagan-backups:/ backup --tag software --tag ultimate --tag upai  ~/software/upai/
restic -r gs:punchagan-backups:/ backup --tag software --tag ultimate --tag tiks  ~/software/thatte-idli/
restic -r gs:punchagan-backups:/ backup --tag software ~/software/my-repos/

# Notes
restic -r gs:punchagan-backups:/ backup --tag life-in-plain-text  ~/.life-in-plain-text/
