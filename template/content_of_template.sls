# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "template/map.jinja" import template with context %}

/tmp/template.yaml:
  file.managed:
    - contents: |
        {{template|yaml(False)|indent(8)}}
