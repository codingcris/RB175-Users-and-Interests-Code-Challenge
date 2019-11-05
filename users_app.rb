require 'sinatra'
require 'yaml'

before do
  @users_data = YAML.load_file("users.yaml")
  @users = @users_data.keys.map!(&:to_s)
end

helpers do
  def count_interests
    @users_data.keys.inject(0) do |interest_total, user|
      interest_total += @users_data[user][:interests].size
    end
  end
end

get "/" do
  @title = "Our interests"

  erb :home
end

get "/users/:name" do
  @requested_user = params["name"]

  if(@users.include?(@requested_user))
    @title = "#{@requested_user}"
    erb :user
  else
    redirect "/"
  end
end

not_found do
  redirect "/"
end
