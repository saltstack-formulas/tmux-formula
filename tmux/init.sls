{% from "tmux/map.jinja" import tmux with context %}

tmux:
  pkg.installed: []

tmux_conf:
  file.managed:
    - name: {{ tmux.tmux_conf }}
    - source: salt://tmux/.tmux.conf
    - require:
      - pkg: tmux
