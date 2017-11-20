mysql:
  clients:
    mysql:
      default_character_set: utf8
    mysqldump:
      default_character_set: utf8

  library:
    client:
      default_character_set: utf8

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
