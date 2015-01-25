require 'csv'

namespace :import do

  desc 'Import data from csv file and fill the table of provinces'
  task provinces: :environment do
    file = File.read('lib/tasks/provinces.csv')
    parsedFile = CSV.parse(file)

    Province.connection

    parsedFile.each do |row|
      Province.create({
        code: row[0],
        name: row[1]
      })
    end
  end

  desc 'Import data from csv file and fill the table of townships'
  task townships: :environment do
    file = File.read('lib/tasks/tonwships.csv')
    parsedFile = CSV.parse(file)

    Township.connection

    parsedFile.each do |row|
      Township.create({
        code: row[0],
        name: row[1],
        province_id: row[2]
      })
    end
  end

  desc 'Import data from csv file and fill the table of districts'
  task districts: :environment do
    file = File.read('lib/tasks/districts.csv')
    parsedFile = CSV.parse(file)

    District.connection

    parsedFile.each do |row|
      District.create({
        code: row[0],
        name: row[1],
        township_id: row[2]
      })
    end
  end

end
