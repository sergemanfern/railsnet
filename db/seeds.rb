# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Profile.destroy_all
Profile.create!(
				[
					{
	login: "Manfern",
	name: "Sergey",
	surname:"Sharapov",
	birth:"21.07.1989",
	status:"online",
	about:"student of life",
	friendlist_id:'1',
	password:"inferndb"

},
{
login: "Front",
	name: "Sergey",
	surname:"Awesome",
	birth:"21.07.1992",
	status:"online",
	about:"asshole",
	friendlist_id:'2',
	password:"123"
},
{
login: "Inferman",
	name: "Anthony",
	surname:"Great",
	birth:"21.07.1985",
	status:"online",
	about:"asshole",
	friendlist_id:'3',
	password:"123"
},
{
login: "Cartman",
	name: "Erik",
	surname:"Fatass",
	birth:"21.07.1987",
	status:"online",
	about:"southpark",
	friendlist_id:'4',
	password:"123"
},
{
login: "Tyler",
	name: "Tyler",
	surname:"Durden",
	birth:"25.07.1988",
	status:"online",
	about:"movies",
	friendlist_id:'5',
	password:"123"
}])

p "Created #{Profile.count} profiles"

  














