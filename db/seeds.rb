# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.delete_all()

valkyries = Team.create({name: "UVic Valkyries"})
gryffindor = Team.create({name: "Hogwarts Gryffindor"})
bear_pack = Team.create({name: "CodeClan Bear Pack"})

Player.delete_all()

p1 = Player.create({name: "Cookie", jersey: 12, team_id: valkyries.id})
p2 = Player.create({name: "Martin", jersey: 13, team_id: gryffindor.id})
p3 = Player.create({name: "Rubot", jersey: 01, team_id: bear_pack.id})
p3 = Player.create({name: "Dennis", jersey: 81, team_id: valkyries.id})