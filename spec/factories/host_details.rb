FactoryBot.define do
  factory :hostDetail do
    name { "sample" }
    acceptable_date { nil }
    rate { nil }
    description { nil }
    link { nil }
    address { nil }
    latitude { 39.3306115 }
    longitude { 141.530138 }
    acceptable { nil }
    marker_icon { nil }
    image { nil }
    maximum_acceptability { nil }
  end
end