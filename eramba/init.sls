{{ salt['pillar.get']('eramba:path') }}:
  file.directory:
    - user: www-data
    - group: www-data
    - dir_mode: 755
    - file_mode: 644
    - recurse:
      - user
      - group
      - mode
    - makedirs: True

eramba-source:
    file.managed:
        - unless: ls {{ salt['pillar.get']('eramba:path') }}/index.php
        - name: /tmp/{{ salt['pillar.get']('eramba:file') }}
        - source: '{{ salt['pillar.get']('eramba:source') }}'
        - source_hash: '{{ salt['pillar.get']('eramba:source_hash') }}'

extract:
    module.run:
        - name: archive.unzip
        - options: -qn
        - zipfile: /tmp/{{ salt['pillar.get']('eramba:file') }}
        - dest: {{ salt['pillar.get']('eramba:path') }}
