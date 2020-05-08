
##### Create New Heroku Remote
```sh
heroku create
```
##### Check Heroku Connection
```sh
git remote -v
```
##### Add Existing Local Repo To Heroku
```sh
heroku git:remote -a <heroku app name>
```
##### Rename Heroku Remote
```sh
git remote rename heroku <heroku app name>
```
##### Push Master to Heroku
```sh
git push heroku master
```
##### Push Other Branch to Heroku
```sh
git push heroku testbranch:<branchname>
```
##### Migrate DB to Heroku, or Restart Heroku
```sh
heroku run rake db:migrate; heroku run rake db:restart
