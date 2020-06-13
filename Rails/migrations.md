##### Running migrations
 ```sh
 $ rake db:migrate
 ```
##### Rollback migrations
```sh
$ rake db:rollback
```
##### Rollback multiple migrations
```sh
$ rake db:rollback STEP=2
# will rollback the last 2 migrations
```
##### Rollback and migrate simplified
```sh
$ rake db:migrate:redo STEP=
```
