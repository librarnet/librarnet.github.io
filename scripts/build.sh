#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$project_dir"

hugo_bin="${HUGO_BIN:-hugo}"
expected_hugo="$(cat .hugo-version)"
expected_theme="$(cat .blowfish-version)"
actual_hugo="$("$hugo_bin" version)"
if [[ "$actual_hugo" != "hugo v${expected_hugo}"[+-]*extended* ]]; then
  printf 'Use Hugo Extended %s (found: %s). Set HUGO_BIN to its executable if needed.\n' "$expected_hugo" "$actual_hugo" >&2
  exit 1
fi

# Require the theme's own Git metadata; never fall back to an ancestor repository.
if [[ ! -e themes/blowfish/.git ]]; then
  printf 'Initialize themes/blowfish as described in README.md.\n' >&2
  exit 1
fi
actual_theme="$(git -C themes/blowfish rev-parse HEAD)"
if [[ "$actual_theme" != "$expected_theme" ]]; then
  printf 'Blowfish revision differs from .blowfish-version; see README.md.\n' >&2
  exit 1
fi
if [[ -n "$(git -C themes/blowfish status --porcelain)" ]]; then
  printf 'Keep theme changes in project overrides; themes/blowfish must be clean.\n' >&2
  exit 1
fi

exec "$hugo_bin" --environment production --minify --printI18nWarnings --printPathWarnings "$@"
