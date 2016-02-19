# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "template/map.jinja" import template with context %}

template_service__service:
  service.{{ template.service.state }}:
    - name: {{ template.service.name }}
{% if template.service.state in [ 'running', 'dead' ] %}
    - enable: {{ template.service.enable }}
{% endif %}

