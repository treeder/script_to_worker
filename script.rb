require 'mini_fb'
require 'yaml'
require_relative 'app/models/user'

config = YAML.load_file('config.yml')
raise "Bad config" unless config
payload = YAML.load_file('payload.yml')
raise "Bad payload" unless payload
# Have IronWorkerNG.load_payload load payload.yml if it exists or if there's no -payload arg
user = User.new(payload['name'])
user.speak
