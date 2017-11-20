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
    root_user: 'slavo-sql'
    # root_password: '' - to have root@localhost without password
    root_password: 'secret'
    #root_password_hash: '*13883BDDBE566ECECC0501CDE9B293303116521A'
    user: mysql
    mysql:
      # my.cnf param that not require value
      no-auto-rehash: noarg_present

  # Manage databases
  database:
    - dp_db
  schema:
      dp_db:
      load: False
  user:
    slavo-sql:
      password: 'secret'
      host: localhost
      databases:
        - database: dp_db
          grants: ['all privileges']
  # Install MySQL headers
  dev:
    # Install dev package - defaults to False
    install: False
