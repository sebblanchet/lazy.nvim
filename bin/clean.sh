#!/usr/bin/env bash

set -ex

_clean() {
  local dir=${1:?}
  mkdir -p "$dir"
  rm -rfv "${dir:?}/"*
}

_clean ~/.local/share/nvim
_clean ~/.local/state/nvim
_clean ~/.cache/nvim
