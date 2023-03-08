#!/bin/zsh

command_exists=$(command -v AppearanceNotifier &> /dev/null);

if [[ ! $command_exists ]]; then
  echo "AppearanceNotifier is not present in the system.";
  exit 0;
fi

res=$(ps -eaf | pgrep AppearanceNotifier);

if [[ -z $res ]]; then
  AppearanceNotifier >/tmp/appearancenotifier.out 2>/tmp/appearancenotifier.err &;
fi
