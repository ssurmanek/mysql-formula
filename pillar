mysql:
  global:
    client-server:
      default_character_set: utf8

  clients:
    mysql:
      default_character_set: utf8
    mysqldump:
      default_character_set: utf8

  library:
    client:
      default_character_set: utf8

  server:
    # Use this account for database admin (defaults to root)
    root_user: 'slavo-sql'
    # root_password: '' - to have root@localhost without password
    root_password: 'secret'
    #root_password_hash: '*13883BDDBE566ECECC0501CDE9B293303116521A'
    user: mysql
    mysqld:
      # you can use either underscore or hyphen in param names
      bind-address: 0.0.0.0
      log_bin: /var/log/mysql/mysql-bin.log
      datadir: /var/lib/mysql
      port: 3306
      binlog_do_db: dp_db
      auto_increment_increment: 5
      binlog-ignore-db:
       - mysql
       - sys
       - information_schema
       - performance_schema
    mysql:
      # my.cnf param that not require value
      no-auto-rehash: noarg_present

  salt_user:
    salt_user_name: 'salt'
    salt_user_password: 'someotherpass'
    grants:
      - 'all privileges'

  # Manage databases
  database:
    - dp_db
  schema:
      dp_db:
      load: False
    baz:
      load: True
      source: salt://mysql/files/baz.schema.tmpl
      template: jinja
    qux:
      load: True
      source: salt://mysql/files/qux.schema.tmpl
      template: jinja
      context:
        encabulator: Turbo
        girdlespring: differential
    quux:
      load: True
      source: salt://mysql/files/qux.schema.tmpl
      template: jinja
      context:
        encabulator: Retro
        girdlespring: integral

  # Install MySQL headers
  dev:
    # Install dev package - defaults to False
    install: False
