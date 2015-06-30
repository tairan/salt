/etc/yum.repos.d:
  file.recurse:
    - source: salt://yum/files/yum.repos.d


/etc/pki/rpm-gpg:
  file.recurse:
    - source: salt://yum/files/rpm-gpg