# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
HostDetail.create!(name: "やおちゅう",
                  latitude: "",
                  longitude: "",
                  acceptable_date: "",
                  rate: "",
                  description: "",
                  link: "",
                  address: "",
                  acceptable: 1)

HostDetail.create!(name: "空",
                  latitude: "",
                  longitude: "",
                  acceptable_date: "",
                  rate: "",
                  description: "",
                  link: "",
                  address: "",
                  acceptable: 0)