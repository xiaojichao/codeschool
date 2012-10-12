# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Daley', city: cities.first)

user = User.last || User.create(email: 'myuser@example.com', passwor: 'passw0rd', password_confirmation: 'passw0rd', confirmed_at: Time.now)

course = Course.find_or_create_by_title("Ruby course")

course.challenges.create do |challenge|
  challenge.title = 'Find'
  challenge.task = "Write the method `longest_name` for `User` class to find the longest `full_name`"

  challenge.additional_information = <<-MARKDOWN
  ```ruby
  class CreateUser < ActiveRecord::Migration
    def self.change
      create_table :users do |t|
        t.string :full_name
        t.string :email
        t.timestamps
      end
    end
  end
  ```
  MARKDOWN

  challenge.console = <<-MARKDOWN
  class User < ActiveRecord::Base
  end
  MARKDOWN

  challenge.verification_code = <<-MARKDOWN
    User.longest_name.should == 'Vladimir'
  MARKDOWN
end
