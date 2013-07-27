tmux:
  pkg.installed

/usr/share/tmux/.tmux.conf:
    file:
        - managed
        - source: salt://tmux/.tmux.conf
        - require:
            - pkg: tmux
