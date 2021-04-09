# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require_relative '../api_key.rb'

def ny_members
    response = RestClient.get "http://www.opensecrets.org/api/?method=getLegislators&id=NY&apikey=#{$api_key}&output=json"

    json = JSON.parse
end