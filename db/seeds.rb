# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'csv'

# # Host.destroy_all
# Location.destroy_all
# Listing.destroy_all
# Host.destroy_all

# csv_text = File.read("#{Rails.root}/public/new-york-city-airbnb-open-data/AB_NYC_2019.csv")
# csv = CSV.parse(csv_text, headers: true)

require 'smarter_csv/smarter_csv'

data = SmarterCSV.process("#{Rails.root}/public/new-york-city-airbnb-open-data/AB_NYC_2019.csv")

data.each do |row|
  host = Host.create(
    host_id: row['host_id'],
    name: row['host_name'],
    number_of_listings: row['calculated_host_listings_count']
  )
  listing = host.listings.create(
    listing_id: row['id'],
    name: row['name'],
    price: row['price']
  )

  listing.locations.create(
    longtitude: row['longtitude'],
    latitude: row['latitude'],
    area: row['neighbourhood']
  )
end

puts "Created #{Listing.count} listings."
puts "Created #{Host.count} hosts."
puts "Created #{Location.count} locations."
