require_relative 'base'

class MyApp < SinatraRecord
  require 'sinatra/activerecord'
  require 'sinatra/json'
  require 'json'
  require 'multi_json'

  db = URI.parse('postgres://vagrant:vagrant@localhost/sinatra')

  ActiveRecord::Base.establish_connection(
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )

  get '/' do
    { :foo => Foozer.first.user }.to_json
  end

end
