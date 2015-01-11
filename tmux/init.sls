{% from "tmux/map.jinja" import tmux with context %}

tmux:
  pkg.installed: []

tmux_conf:
  file.managed:
    - name: {{ salt['pillar.get']('tmux.config_path', tmux.tmux_conf) }}
    - source: salt://tmux/files/.tmux.conf
    - require:
      - pkg: tmux
