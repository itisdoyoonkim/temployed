# User.create!(
#     email: "admin@example.com",
#     password: '123456',
#     password_confirmation: '123456',
#     admin: true
# )

40.times do
    Post.create!(
        title: Faker::Job.title,
        body: Faker::Job.field,
        user: User.first
    )
end