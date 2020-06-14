# CREATING ADMIN
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
Category.create!(name: "Agriculture")
Category.create!(name: "Architecture and Construction")
Category.create!(name: "Audio/Video Technology")
Category.create!(name: "Business Administration")
Category.create!(name: "Corrections and Security")
Category.create!(name: "Distribution and Logistics")
Category.create!(name: "Education")
Category.create!(name: "Event")
Category.create!(name: "Finance")
Category.create!(name: "General Labour")
Category.create!(name: "Government")
Category.create!(name: "Hospitality and Tourism")
Category.create!(name: "Human Services and Social Work")
Category.create!(name: "Information Technology")
Category.create!(name: "Landscaping and Gardening")
Category.create!(name: "Manufacturing")
Category.create!(name: "Marketing and Sales")
Category.create!(name: "Restaurants and Bars")
Category.create!(name: "Science")
Category.create!(name: "Transportation")
Category.create!(name: "Training")
Category.create!(name: "Warehousing")
Category.create!(name: "Other")

# CREATING POSTS
100.times do
    Post.create!(
        job_title: Faker::Job.title,
        body: Faker::Lorem.paragraph,
        user: User.find(rand(1..40)),
        company_name: Faker::Company.name,
        location: "#{Faker::Address.city}, #{Faker::Address.state}, #{Faker::Address.country}",
        category_id: rand(1..23)
    )
end

# CREATING EXPERIENCES
50.times do
    Experience.create(
        organization: Faker::Company.name,
        location: "#{Faker::Address.city}, #{Faker::Address.state}, #{Faker::Address.country}",
        user_id: rand(1..40),
        position: Faker::Job.title,
        from: Faker::Date.between(from: 40.days.ago, to: 100.days.ago),
        to: Faker::Date.between(from: 3.days.ago, to: 30.days.ago)
    )
end

# CREATING EDUCATIONS
50.times do
    Education.create(
        institution: Faker::University.name,
        location: "#{Faker::Address.city}, #{Faker::Address.state}, #{Faker::Address.country}",
        user_id: rand(1..40),
        certificate: Faker::Superhero.name,
        from: Faker::Date.between(from: 40.days.ago, to: 100.days.ago),
        to: Faker::Date.between(from: 3.days.ago, to: 30.days.ago)
)
end