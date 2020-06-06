# User.create!(
#     email: "admin@example.com",
#     password: '123456',
#     password_confirmation: '123456',
#     admin: true
# )

# 40.times do
#     Post.create!(
#         job_title: Faker::Job.title,
#         body: "JOIN US AND MAKE $100000000 EVERY SECOND",
#         user: User.first,
#         company_name: Faker::Company.name,
#         job_description: Faker::Lorem.paragraph,
#         job_duration: "#{rand(6)} months",
#         location: "#{Faker::Address.city}, #{Faker::Address.state}, #{Faker::Address.country}"
#     )
# end

# 40.times do
#     User.create!(
#         email: Faker::Internet.email,
#         name: Faker::Name.name,
#         admin: false,
#         password: '123456'
#     )
# end

40.times do
    Experience.create(
        organization: Faker::Company.name,
        location: "#{Faker::Address.city}, #{Faker::Address.state}, #{Faker::Address.country}",
        user_id: rand(1..41)
)
end

40.times do
    Education.create(
        institution: Faker::University.name,
        location: "#{Faker::Address.city}, #{Faker::Address.state}, #{Faker::Address.country}",
        user_id: rand(1..41),
        certificate: Faker::Superhero.name
)
end