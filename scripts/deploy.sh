#!/usr/bin/env sh
# Deploy member-engagement-deck.html to the Mplify Salesforce org
# (Member Portal) using the Salesforce CLI (`sf`).
#
# Usage:
#   sh scripts/deploy.sh                 # uses the default authenticated org
#   sh scripts/deploy.sh mplify          # uses a named org alias
#
# Authenticate once (browser):
#   sf org login web --alias mplify --instance-url https://mplify.my.salesforce.com --set-default
#
# After deploy, add a community page that hosts the Visualforce page
# MemberEngagementDeck, or iframe:
#   /apex/MemberEngagementDeck
#   /resource/memberEngagementDeck/member-engagement-deck.html
#
# The Member Portal page (published separately) is:
#   https://members.mplify.net/s/member-engagement
set -eu

ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
cd "$ROOT"

if ! command -v sf >/dev/null 2>&1; then
  if [ -x "$HOME/.local/bin/sf" ]; then
    PATH="$HOME/.local/bin:$PATH"
    export PATH
  fi
fi

if ! command -v sf >/dev/null 2>&1; then
  echo "Salesforce CLI (sf) is not on PATH." >&2
  echo "Install with: npm install -g @salesforce/cli" >&2
  exit 1
fi

STAGE="$ROOT/force-app/main/default/staticresources/memberEngagementDeck"
rm -rf "$STAGE"
mkdir -p "$STAGE/assets"
cp "$ROOT/member-engagement-deck.html" "$STAGE/"
cp -R "$ROOT/assets/fonts" "$STAGE/assets/"

TARGET_ARGS=""
if [ "${1-}" != "" ]; then
  TARGET_ARGS="--target-org $1"
fi

# shellcheck disable=SC2086
sf project deploy start --source-dir force-app $TARGET_ARGS
echo
echo "Deployed. In Experience Builder, add a page that hosts Visualforce page MemberEngagementDeck"
echo "or link to /apex/MemberEngagementDeck (community URL prefix may apply)."
