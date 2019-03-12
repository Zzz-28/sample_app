namespace :db do 

  desc "Fill database with sample data"

  task populate: :environment do 
    User.create!( name: "Zzz",
                  email: "599968188@qq.com",
                  password: "Zhao2828",
                  password_confirmation: "Zhao2828",
                  admin: true)
    77.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@qq.com"
      password = "123456"
      User.create!( name: name,
                    email: email,
                    password: password,
                    password_confirmation: password)
    end
  end
end