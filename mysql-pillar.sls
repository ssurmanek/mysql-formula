mysql:
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
    root_user: 'admin'
    root_password: 'secret'
    root_password_hash: '*8EEEB203A36B7E305C135CC82C9C16982072921E'
    mysqld:
      # you can use either underscore or hyphen in param names
      bind-address: 0.0.0.0
      datadir: /var/lib/mysql
      auto_increment_increment: 5
    mysql:
      # my.cnf param that not require value
      no-auto-rehash: noarg_present

  salt_user:
    salt_user_name: 'slavo'
    salt_user_password: 'secret'
    grants:
      - 'all privileges'
      
  # Manage databases
  database:
    - dp_db
  schema:
      dp_db:
      load: False
  user:
    slavo:
      password: 'secret'
      host: localhost
      databases:
        - database: dp_db
          grants: ['all privileges']
  # Install MySQL headers
  dev:
    # Install dev package - defaults to False
    install: False
