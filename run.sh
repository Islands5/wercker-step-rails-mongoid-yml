config_filename="$PWD/config/mongoid.yml"

if [ -f "$config_filename" ]; then
  warn 'config/mongoid.yml already exists and will be overwritten'
fi

cat <<EOF > "$config_filename"
test:
  sessions:
    default:
      database: mongodb_test
      hosts:
        - <%= ENV['MONGO_PORT_27017_TCP_ADDR'] %>:<%= ENV['MONGO_PORT_27017_TCP_PORT'] %>
      options:
        read: primary
        max_retries: 1
        retry_interval: 0
EOF

info "created mongoid.yml in config directory with content:"
info "$(cat "$config_filename")"
