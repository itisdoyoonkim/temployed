User.create!(
    email: "admin@example.com",
    password: '123456',
    password_confirmation: '123456',
    admin: true
)

# CREATING USERS
40.times do
    User.create!(
        email: Faker::Internet.email,
        name: Faker::Name.name,
        admin: false,
        password: '123456'
    )
end

# CREATING CATEGORIES
Category.create!(name: "Agriculture, Food, and Natural Resources")
Category.create!(name: "Architecture and Construction")
Category.create!(name: "Arts, Audio/Video Technology and Communications")
Category.create!(name: "Business Management and Administration")
Category.create!(name: "Education and Training")
Category.create!(name: "Finance")
Category.create!(name: "Government and Public Administration")
Category.create!(name: "Health Science")
Category.create!(name: "Hospitality and Tourism")
Category.create!(name: "Human Services")
Category.create!(name: "Information Technology")
Category.create!(name: "Law, Public Safety, Corrections and Security")
Category.create!(name: "Manufacturing")
Category.create!(name: "Marketing, Sales and Service")
Category.create!(name: "Science, Technology, Engineering and Mathematics")
Category.create!(name: "Transportation, Distribution and Logistics")

# CREATING POSTS
40.times do
    Post.create!(
        job_title: Faker::Job.title,
        body: "said nobody",
        user: User.first,
        company_name: Faker::Company.name,
        job_description: Faker::Lorem.paragraph,
        job_duration: "#{rand(1..8)} months",
        location: "#{Faker::Address.city}, #{Faker::Address.state}, #{Faker::Address.country}",
        category_id: rand(1..16)
    )
end

# CREATING EXPERIENCES
40.times do
    Experience.create(
        organization: Faker::Company.name,
        location: "#{Faker::Address.city}, #{Faker::Address.state}, #{Faker::Address.country}",
        user_id: rand(1..41)
)
end

# CREATING EDUCATIONS
40.times do
    Education.create(
        institution: Faker::University.name,
        location: "#{Faker::Address.city}, #{Faker::Address.state}, #{Faker::Address.country}",
        user_id: rand(1..41),
        certificate: Faker::Superhero.name
)
end