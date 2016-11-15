if Rails.env.development? || Rails.env.testing?
  1.upto 10 do |count|
     User.create(name: "User#{count}", email: "user-#{count}@email.com") 
  end
end
