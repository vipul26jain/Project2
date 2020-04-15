# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ----Channel-----
Channel.delete_all
Channel.create([
	{id:1, name:'Star Gold', default_name: 'star_gold'},
	{id:2, name:'Sony Max', default_name: 'sony_max'}
])

# ----Show-----
Show.delete_all
Show.create([
	{id:1, name:'Mahabharat', default_name: 'mahabharat', duration: '1'},
	{id:2, name:'Ramayan', default_name: 'ramayan', duration: '1'}
])

# ----ChannelShow-----
ChannelShow.delete_all
ChannelShow.create([
	{id:1, channel_id: 1, show_id: 1,start_time: '9:00 am', end_time: '10:00 am'},
	{id:2, channel_id: 1, show_id: 2,start_time: '10:00 am', end_time: '11:00 am'},
	{id:3, channel_id: 2, show_id: 2,start_time: '9:00 am', end_time: '10:00 am'},
	{id:4, channel_id: 2, show_id: 1,start_time: '10:00 am', end_time: '11:00 am'}
])