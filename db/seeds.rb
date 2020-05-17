# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do
    Users.creat(
      name
      username
      bio
      city
      state
      title
      email
      password
    )
end

Memberships.create(
    user_id
    character_id
    )
end
campaigns.create(
    name
    location
    story
    lvl
    owner_id
 )
end


characters.create(
    user_id
    name
    race
    level
    background
  end
