# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# CarModel.create!(car_model_name: "Maserati")
# CarModel.create!(car_model_name: "DeLorean")
# CarModel.create!(car_model_name: "Gremlin")

# Car.create!(car_name: "Jane's Car", car_model_id: 3)
# Car.create!(car_name: "Joe's Car" , car_model_id: 2)
# Car.create!(car_name: "Hector's", car_model_id: 1)

# SampleColor.create!(value_one: "Red", value_two:"Metallic", car_model_id: 1)
# SampleColor.create!(value_one: "Blue", value_two:"Urethane", car_model_id: 2)
# SampleColor.create!(value_one: "Gold", value_two:"Acrylic", car_model_id: 3)
# SampleColor.create!(value_one: "Green", value_two:"Urethane", car_model_id: 1)
# SampleColor.create!(value_one: "Black", value_two:"Acrylic", car_model_id: 2)
# SampleColor.create!(value_one: "White", value_two:"Metallic", car_model_id: 3)
# SampleColor.create!(value_one: "Gray", value_two:"Urethane", car_model_id: 1)
# SampleColor.create!(value_one: "Orange", value_two:"Acrylic", car_model_id: 2)
# SampleColor.create!(value_one: "Sea Green", value_two:"Metallic", car_model_id: 3)


SampleFinish.create!(value_one: "Gloss",  sample_color_id: 3)
SampleFinish.create!(value_one: "Gloss",  sample_color_id: 2)
SampleFinish.create!(value_one: "Gloss",  sample_color_id: 1)
SampleFinish.create!(value_one: "Matte",  sample_color_id: 3)
SampleFinish.create!(value_one: "Matte",  sample_color_id: 2)
SampleFinish.create!(value_one: "Matte",  sample_color_id: 1)
SampleFinish.create!(value_one: "Semi-Gloss",  sample_color_id: 3)
SampleFinish.create!(value_one: "Semi-Gloss",  sample_color_id: 2)
SampleFinish.create!(value_one: "Semi-Gloss",  sample_color_id: 1)
