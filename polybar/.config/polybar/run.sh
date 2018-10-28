#!/usr/bin/env bash
killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 0.1; done
export MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g')
polybar "${1:-bar}"
