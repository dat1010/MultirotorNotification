10.times do |user|
  User.create!(
    email: "user#{user}@mail.com"
  )
end

puts "10 Users with emails created"
