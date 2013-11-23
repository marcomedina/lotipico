lotipi.co
========

You will need rmagick

```shell
brew install rmagick #OSX Users
```

```shell
bundle
bundle exec rake db:crate
bundle exec rake railties:install:migrations
bundle exec rake db:migrate
bundle exec rake db:seed
bundle exec rake spree_sample:load
```
