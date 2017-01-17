# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 user1 = User.create!(
      :email                 => "test1@gmail.com",
      :password              => "123456",
      :role                  => "sup_admin",
      :created_at            => "2016-12-11 13:02:30"
  )
  user1.skip_confirmation!
  user1.save!
  
  
 user2 = User.create!(
      :email                 => "test2@gmail.com",
      :password              => "123456",
      :role                  => "admin",
      :created_at            => "2016-12-12 13:02:03"
  )
  user2.skip_confirmation!
  user2.save!
  
  user3 = User.create!(
      :email                 => "test3@gmail.com",
      :password              => "123456",
      :role                  => "customer",
      :created_at            => "2016-12-13 13:02:05"
  )
  user3.skip_confirmation!
  user3.save!
  
  user4 = User.create!(
      :email                 => "test4@gmail.com",
      :password              => "123456",
      :role                  => "admin",
      :created_at            => "2016-01-17 18:02:05"
  )
  user4.skip_confirmation!
  user4.save!