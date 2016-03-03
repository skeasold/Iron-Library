## Iron Library

Iron Library is a simple app to keep track of authors and books.

![Alt text](https://raw.githubusercontent.com/skylarking/Iron-Library/master/screenshots/main.jpg)

## Ruby Version
v2.3.0

## Database Creation & Initialization
PSQL
```
rake db:create
rake db:migrate
```

## Defaults
Iron Library comes with one default book and author. To load run:
```
rake db:seed
```

## Planned Tasks
- [ ] Dropdown for book authors when creating a new book.
- [ ] Better styling of individual books and authors.
