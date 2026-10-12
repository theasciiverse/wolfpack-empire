#!/bin/bash
# drive.sh SESSION: a first session as country 2, typed at a human pace into the
# Empire client running in tmux. Recorded asciiverse/wolfpack-empire.cast against
# a private test server (files; fairland 4 30; emp_server on 127.0.0.1:16665;
# exec newcap_script as POGO), never against a live game, as
#   asciinema rec --window-size 100x30 --command "empire -s 127.0.0.1:16665" ...
S=$1
type_line() { local s=$1 i; for ((i=0; i<${#s}; i++)); do tmux send-keys -t "$S" -l "${s:i:1}"; sleep 0.07; done; sleep 0.3; tmux send-keys -t "$S" Enter; }
sleep 2
type_line 2; sleep 0.8          # country name
type_line 2; sleep 2            # password
for c in "nation" "break" "map #" \
         "explore c 0,0 5 gh" "explore c 2,0 5 jh" "explore c 0,0 5 yh" "explore c 2,0 5 nh" \
         "designate 2,0 m" "map #" "census *"; do
  type_line "$c"; sleep 2.6
done
sleep 1.5
type_line quit
