nginx-repo:
  file.managed:
    - name: /etc/yum.repos.d/nginx.repo
    - source: salt://pkgrepo/nginx/files/nginx.repo
