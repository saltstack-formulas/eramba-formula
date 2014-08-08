/var/tmp/eramba:
  file.directory:
    - user: www-data
    - group: www-data
    - mode: 644
    - makedirs: True

{% for day in salt['pillar.get']('eramba:cron:daily') %}

/var/tmp/eramba/{{ day }}:
  cron.present:
    - identifier: {{ day }}
    - name: wget {{ salt['pillar.get']('eramba:domain') }}{{ day }}/{{ salt['pillar.get']('eramba:cron:security_key') }}
    - user: www-data
    - hour: 01

{% endfor %}

{% for year in salt['pillar.get']('eramba:cron:yearly') %}

/var/tmp/eramba/{{ year }}:
  cron.present:
    - identifier: {{ year }}
    - name: wget {{ salt['pillar.get']('eramba:domain') }}{{ year }}/{{ salt['pillar.get']('eramba:cron:security_key') }}
    - user: www-data
    - month: 01
    - day: 01
    - minute: 01

{% endfor %}
