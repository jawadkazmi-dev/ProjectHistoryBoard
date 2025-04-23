Faker::Config.locale = 'en'

puts "Create super user"

  FactoryBot.create(:user, email: 'admin@gmail.com', password: '12345678', password_confirmation: '12345678')
  # Create 10 users using FactoryBot
  2.times do
    user = FactoryBot.create(:user)

    # Create 5 projects for each user
    5.times do
      project = FactoryBot.create(:project)

      3.times do
        FactoryBot.create(:project_event, project: project, user: user, event_type: 'comment')
        FactoryBot.create(:project_event, project: project, user: user, event_type: 'status_change')
      end
    end
  end

  puts "Seed data created successfully"
