# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "template/map.jinja" import template with context %}

template_install__pkg:
  pkg.installed:
    - pkgs: {{ template.pkgs }}
