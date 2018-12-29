{% from "tmux/map.jinja" import tmux with context %}

tmux:
  pkg.installed:
    - name: {{ tmux.package }}

{% if salt['pillar.get']('tmux:managed_config', tmux.manage_config) == True %}
tmux_conf:
  file.managed:
    - name: {{ salt['pillar.get']('tmux.config_file', tmux.config_file) }}
    - name: {{ tmux.config_file }}
    - source: salt://tmux/files/.tmux.conf
    - user: root
    - group: {{ tmux.group }}
    - mode: 644
    - makedirs: True
    - require:
      - pkg: tmux
{% endif %}
