# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
User.destroy_all
u = User.create(:username => 'admin' , :email => 'events@engineyard.com' , :password => '1234', :password_confirmation => '1234')
u.update_attribute(:admin , true)