require 'csv'

desc 'Import and fill database for directions'

namespace :import do
  task province: :development do
    file = 'provinces.csv'

    CSV.foreach(file) do |row|
      Province.create({
        id: row[1],
        name: row[2]
      })
    end

  end

  task township: :development do
    file = 'tonwships.csv'

    CSV.foreach(file) do |row|
      Township.create({
        id: row[1],
        name: row[2],
        province_id: row[3]
      })
    end

  end

  task district: :development do
    file = 'districts.csv'

    CSV.foreach(file) do |row|
      District.create({
        id: row[1],
        name: row[2],
        township_id: row[3]
      })
    end

  end
end
