# -*- coding: utf-8 -*-
# vim: ft=sls

include:
  - template.install
  - template.config
  - template.service

extend:
  template_config__conffile:
    file:
      - require:
        - pkg: template_install__pkg
  template_service__service:
    service:
      - watch:
        - file: template_config__conffile
      - require:
        - pkg: template_install__pkg

