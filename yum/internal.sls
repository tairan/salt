include:
  - yum.absent

base:
  pkgrepo.managed:
    - humanname: CentOS-$releasever - Base
    - name: base
    - baseurl: http://{{ salt['pillar.get']('mirrors:host') }}/centos/$releasever/os/$basearch/
    - gpgcheck: 1
    - gpgkey: http://{{ salt['pillar.get']('mirrors:host') }}/centos/RPM-GPG-KEY-CentOS-7

updates:
  pkgrepo.managed:
    - humanname: CentOS-$releasever - Updates
    - name: updates
    - baseurl: http://{{ salt['pillar.get']('mirrors:host') }}/centos/$releasever/updates/$basearch/
    - gpgcheck: 1
    - gpgkey: http://{{ salt['pillar.get']('mirrors:host') }}/centos/RPM-GPG-KEY-CentOS-7

extras:
  pkgrepo.managed:
    - humanname: CentOS-$releasever - Extras
    - name: extras
    - baseurl: http://{{ salt['pillar.get']('mirrors:host') }}/centos/$releasever/extras/$basearch/
    - gpgkey: 1
    - gpgkey: http://{{ salt['pillar.get']('mirrors:host') }}/centos/RPM-GPG-KEY-CentOS-7

centosplus:
  pkgrepo.managed:
    - humanname: CentOS-$releasever - Plus
    - name: centosplus
    - baseurl: http://{{ salt['pillar.get']('mirrors:host') }}/centos/$releasever/centosplus/$basearch/
    - gpgcheck: 1
    - gpgkey: http://{{ salt['pillar.get']('mirrors:host') }}/centos/RPM-GPG-KEY-CentOS-7

epel:
  pkgrepo.managed:
    - humanname: Extra Packages for Enterprise Linux 7 - $basearch
    - name: epel
    - baseurl: http://{{ salt['pillar.get']('mirrors:host') }}/epel/7/$basearch
    - gpgcheck: 1
    - gpgkey: http://{{ salt['pillar.get']('mirrors:host') }}/epel/RPM-GPG-KEY-EPEL-7