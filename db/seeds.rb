# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
weapon1 = Weapon.create name: 'spear', power_score: 10
weapon2 = Weapon.create name: 'mine', power_score: 20
weapon3 = Weapon.create name: 'air gun', power_score: 30
fighter1 = Fighter.create name: 'Fighter1', life_score: 100, attack_score: 70
fighter2 = Fighter.create name: 'Fighter2', life_score: 100, attack_score: 50
fighter3 = Fighter.create name: 'Fighter3', life_score: 100, attack_score: 30
