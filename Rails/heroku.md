
##### Create New Heroku Remote
```sh
$ heroku create
```
##### Check Heroku Connection
```sh
$ git remote -v
```
##### Add Existing Local Repo To Heroku
```sh
heroku git:remote -a <heroku app name>
```
##### Rename Heroku Remote
```sh
$ git remote rename heroku <heroku app name>
```
##### Push Master to Heroku
```sh
$ git push heroku master
```
##### Push Other Branch to Heroku
```sh
$ git push heroku branch:<branchname>
```
##### Migrate DB to Heroku
```sh
$ heroku run rake db:migrate
```

##### Restart Heroku Database
```sh
$ heroku restart && heroku pg:reset DATABASE --confirm APP-NAME && heroku run rake db:migrate
```

##### Show logs of Heroku app 

```sh 
$ heroku logs
or flag with -t to show tails
$ heroku logs -t
```
