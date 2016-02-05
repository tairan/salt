# Completely ignore non-RHEL based systems
{% if grains['os_family'] == 'RedHat' %}

{% if grains['osmajorrelease'][0] == '7' %}
  {% set pkg = {
    'rpm': 'http://yum.postgresql.org/9.4/redhat/rhel-7-x86_64/pgdg-centos94-9.4-2.noarch.rpm',
  } %}

{% endif %}

postgres_public_key:
  file.managed:
    - name: /etc/pki/rpm-gpg/RPM-GPG-KEY-PGDG-94
    - source: salt://pkgrepo/postgres/files/RPM-GPG-KEY-PGDG-94

postgres_repo:
  pkg.installed:
    - sources:
      - pgdg-centos94: {{ salt['pillar.get']('epel:rpm', pkg.rpm) }}
    - require:
      - file: postgres_public_key
{% endif %}
