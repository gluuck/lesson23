require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School!!!</a>"
end

get '/about' do

	erb :about
end

get '/visit' do
	erb :visit
end

get '/contacts' do
	erb :contacts
end
get '/admin' do
	erb :admin
end

post '/visit' do
	@username = params[:username]
	@phone = params[:phone]
	@datetime = params[:datetime]
	@table = params[:table]
	@color = params[:color]
	
	hh ={
		:username => 'Введите имя',
		:phone => 'Введите телефон',
		:datetime => 'Введите дату и время'
	}
	hh.each { |key,value|
		if params[key] == ''
			@error =hh[key]
			return erb :visit
		end
	 }
	erb "ok user name is #{@username}  #{@phone} #{@datetime} #{@table} #{@color}"
	#gets 
end