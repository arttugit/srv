/etc/rsyslog.conf:
  file.managed:
    - source: salt://rsyslog/rsyslog.conf

rsyslog.service:
  service.running:
    - name: rsyslog
    - watch: 
      - file: /etc/rsyslog.conf
