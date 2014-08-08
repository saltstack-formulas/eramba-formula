{{ salt['pillar.get']('eramba:path') }}/app/Config/database.php:
  file.managed:
    - source: salt://eramba/files/database.php
    - user: root
    - group: root
    - mode: 644
    - require:
    - template: jinja
    - defaults:
        datasource: {{ salt['pillar.get']('eramba:db:datasource', 'Database/Mysql') }}
        persistent: {{ salt['pillar.get']('eramba:db:persistent', 'false') }}
        host: {{ salt['pillar.get']('eramba:db:host', 'localhost') }}
        login: {{ salt['pillar.get']('eramba:db:login', '') }}
        password: {{ salt['pillar.get']('eramba:db:password', '') }}
        database: {{ salt['pillar.get']('eramba:db:database', 'eramba') }}
        prefix: {{ salt['pillar.get']('eramba:db:prefix', '') }}
