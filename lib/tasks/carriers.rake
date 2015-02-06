namespace :user do

  desc 'generate fake data for the presentation of the innovation project'

  task carriers: :environment do
    carriers_generated = 40

    carriers_generated.times do
      FactoryGirl.create(:user, :carrier)
    end

  end
end
