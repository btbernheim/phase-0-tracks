#Design a nested data structure using a hotel 

#Create the apartment complex using a hotel:

hotel = {
	first_floor: {
		number_of_rooms: 10,
		type_of_rooms: {
			terrace_studio: [
				'queen bed', 
				'tv',
				'night stnad'
				'alarm clock'
				'dresser'
				'desk'
				'chair'
				bathroom: ["toilet", "mirror", "shower", "sink"]
			]
		}
	},
	second_floor: {
		number_of_rooms: 7,
		type_of_rooms: {
			bungalow_1_bed: [
				'queen bed', 
				'tv',
				'night stnad',
				'alarm clock',
				'dresser',
				'desk',
				'chair',
				bathroom: ["toilet", "mirror", "shower", "sink"]
			],
			bungalow_2_bed: [
				'2 queen beds', 
				'tv',
				'night stnad',
				'alarm clock',
				'dresser',
				'desk',
				'chair',
				bathroom: ["toilet", "mirror", "shower", "sink"]
			]
		}
	},
	third_floor: {
		number_of_rooms: 2
		type_of_rooms: {
			executive_suite: [
				'king bed', 
				'tv',
				'night stnad'
				'alarm clock'
				'dresser'
				'desk'
				'chair'
				bathroom: ["toilet", "mirror", "shower", "sink"]
				'mini fridge',
				'sink',
				'balcony',
				'sofa',
				'coffe table'


			],
			penthouse: [
				'king bed', 
				'tv',
				'night stnad'
				'alarm clock'
				'dresser'
				'desk'
				'chair'
				bathroom: ["toilet", "mirror", "shower", "sink"]
				'mini fridge',
				'sink',
				'balcony',
				'sofa',
				'coffe table'
				'hot tub'
			]
		}
	}
}