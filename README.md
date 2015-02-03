# Rails mongoid yml [![wercker status](https://app.wercker.com/status/bea5e7b320c0775f47d3abe1bf7bf92f/s "wercker status")](https://app.wercker.com/project/bykey/bea5e7b320c0775f47d3abe1bf7bf92f)

A [wercker](http://wercker.com/) step to generate mongoid.yml.

## Example
The following `wercker.yml`:

```yaml
box: wercker/ruby
services:
  - wercker/mongodb
build:
  steps:
    - heathrow/rails-mongoid-yml
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
