lotipi.co
========

You will need imagemagick

```shell
brew install imagemagick #OSX Users
```

```shell
bundle
bundle exec rake db:create
bundle exec rake railties:install:migrations
bundle exec rake db:migrate
bundle exec rake db:seed
bundle exec rake spree_sample:load
```
