# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


CarModel.create!(car_model_name: "Maserati")
CarModel.create!(car_model_name: "DeLorean")
CarModel.create!(car_model_name: "Gremlin")

Car.create!(car_name: "Jane's Car", car_model_id: 3)
Car.create!(car_name: "Joe's Car" , car_model_id: 2)
Car.create!(car_name: "Hector's", car_model_id: 1)

SampleColor.create!(text: "Red", gloss:"high-gloss", car_model_id: 1)
SampleColor.create!(text: "Blue", gloss:"semi-gloss", car_model_id: 2)
SampleColor.create!(text: "Gold", gloss:"matte", car_model_id: 3)
SampleColor.create!(text: "Green", gloss:"high-gloss", car_model_id: 1)
SampleColor.create!(text: "Black", gloss:"semi-gloss", car_model_id: 2)
SampleColor.create!(text: "White", gloss:"matte", car_model_id: 3)
SampleColor.create!(text: "Gray", gloss:"high-gloss", car_model_id: 1)
SampleColor.create!(text: "Orange", gloss:"semi-gloss", car_model_id: 2)
SampleColor.create!(text: "Sea Green", gloss:"matte", car_model_id: 3)
