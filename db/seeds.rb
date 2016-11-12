if Rails.env.development? || Rails.env.testing?
  User.delete_all

  count = 1
  10.times do |user|
    User.create(
      email:      "user-#{count += 1}@email.com",
      password:   "password",
    )
  end
end
