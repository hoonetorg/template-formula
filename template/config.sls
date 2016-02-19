# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "template/map.jinja" import template with context %}

template_config__conffile:
  file.managed:
    - name: {{ template.conffile }}
    - source: salt://template/files/configtempl.jinja
    - template: jinja
    - context:
      confdict: {{template|json}}
    - mode: 644
    - user: root
    - group: root
