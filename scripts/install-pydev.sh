#!/bin/bash
# Install package with pipx

set -eu

project_url="git+ssh://git@github.com/furechan/pydev-tool.git"

pipx install $project_url
