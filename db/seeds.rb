if Rails.env.development? || Rails.env.testing?
  User.destroy_all
  
  1.upto 10 do
     User.create!( name:     FFaker::Name.name, 
                  email:    FFaker::Internet.email, 
                  password: "123456"
                )
  end
end
