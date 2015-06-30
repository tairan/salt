ceph:
  - humanname: Ceph packages for $basearch
  - baseurl: http://ceph.com/rpm-hammer/rhel7/$basearch
  - gpgcheck: 1
  - gpgkey: https://ceph.com/git/?p=ceph.git;a=blob_plain;f=keys/release.asc

ceph-noarch:
  - humanname: Ceph noarch packages
  - baseurl: http://ceph.com/rpm-hammer/rhel7/noarch
  - gpgcheck: 1
  - gpgkey: https://ceph.com/git/?p=ceph.git;a=blob_plain;f=keys/release.asc

ceph-source:
  - humanname: Ceph source packages
  - baseurl: http://ceph.com/rpm-hammer/rhel7/SRPMS
  - gpgcheck: 1
  - gpgkey: https://ceph.com/git/?p=ceph.git;a=blob_plain;f=keys/release.asc