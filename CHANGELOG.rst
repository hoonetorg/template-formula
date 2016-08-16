template formula
================

0.0.2 (2016-08-16)

- updated map.jinja to use yaml for dict's
- moved functionality of defaults.yaml into map.jinja (into 'base'-dict of salt['grains.filter_by']
- result is (nearly) backward compatible
  - base (old defaults.yaml) is 'base'-dict 
  - merged with and overridden by os_family -settings (if os_family could not be found - default matches)
  - merged with and overridden by 'template:lookup'-pillar
  - merged with and overridden by 'template'-pillar

0.0.1 (2016-02-19)

- Initial version
