{% from "tmux/map.jinja" import tmux with context %}

tmux:
  pkg.installed

tmux_conf:
    file:
        - name: {{ tmux.tmux_conf }}
        - managed
        - source: salt://tmux/.tmux.conf
        - require:
            - pkg: tmux
