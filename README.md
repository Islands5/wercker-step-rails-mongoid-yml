# Rails mongoid yml

A [wercker](http://wercker.com/) step to generate mongoid.yml.

## Example
The following `wercker.yml`:

```yaml
box: wercker/ruby
services:
  - wercker/mongodb
build:
  steps:
    - rails-mongoid-yml
```

Will generate the following `config/mongoid.yml`:

``` yaml
test:
  sessions:
    default:
      database: mongodb_test
      hosts:
        - <%= ENV['WERCKER_MONGODB_HOST'] %>
      options:
        read: primary
        max_retries: 1
        retry_interval: 0
```
