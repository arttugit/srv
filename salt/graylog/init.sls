install-graylog-repo:
  cmd.run:
    - name: wget https://packages.graylog2.org/repo/packages/graylog-3.0-repository_latest.deb

update-repo:
  cmd.run:
    - name: sudo dpkg -i graylog-3.0-repository_latest.deb

install-pkg:
  cmd.run:
    - name: sudo apt-get update && sudo apt-get install graylog-server

/etc/graylog/server/server.conf:
  file.managed:
    - source: salt://graylog/server.conf

graylog-server:
  service.running:
    - name: graylog-server.service
    - watch:
      - file: /etc/graylog/server/server.conf

