#!/bin/zsh

set -eu

project_root=${0:a:h:h}

pipx install --force $project_root
