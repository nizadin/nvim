#!/bin/zsh

res=$(ps -eaf | pgrep AppearanceNotifier);

if [[ -z $res ]]; then
  AppearanceNotifier >/tmp/appearancenotifier.out 2>/tmp/appearancenotifier.err &;
fi
