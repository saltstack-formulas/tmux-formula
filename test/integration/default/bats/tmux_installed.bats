#!/usr/bin/env bats

@test "tmux binary is in our \$PATH" {
  command -v tmux
}

@test "tmux version is 1.8" {
  run tmux -V
  [[ ${lines[0]} =~ "1.8" ]]
}

@test "verify tmux.conf exists as defined in pillar.example" {
  run bash -c "test -f /tmp/tmux.conf"
  [ ${status} = 0 ]
}
