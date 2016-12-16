#Design a nested data structure using a hotel 

#Create the apartment complex using a hotel:

hotel = {
	first_floor: {
		room_quantity: 10,
		room_type: {
			terrace_studio: [
				'queen bed', 
				'tv',
				'night stnad',
				'dresser',
				'desk',
				'chair',
				'bathroom'
			]
		}
	},
	second_floor: {
		room_quantity: 7,
		room_type: {
			bungalow_1_bed: [
				'queen bed', 
				'tv',
				'night stnad',
				'alarm clock',
				'dresser',
				'desk',
				'chair',
				'bathroom'
			],
			bungalow_2_bed: [
				'2 queen beds', 
				'tv',
				'night stnad',
				'alarm clock',
				'dresser',
				'desk',
				'chair',
				'bathroom'
			]
		}
	},
	third_floor: {
		room_quantity: 2,
		room_type: {
			executive_suite: [
				'king bed', 
				'tv',
				'night stnad',
				'alarm clock',
				'dresser',
				'desk',
				'chair',
				'bathroom',
				'mini fridge',
				'sink',
				'balcony',
				'sofa',
				'coffe table'
			],
			penthouse: [
				'king bed', 
				'tv',
				'night stnad',
				'alarm clock',
				'dresser',
				'desk',
				'chair',
				'bathroom',
				'mini fridge',
				'sink',
				'balcony',
				'sofa',
				'coffe table',
				'hot tub'
			]
		}
	}
}

puts hotel[:first_floor][:room_quantity]
puts hotel[:first_floor][:room_type][:terrace_studio][0]
puts hotel[:second_floor][:room_quantity]
puts hotel[:second_floor][:room_type][:bungalow_1_bed][0]
puts hotel[:second_floor][:room_type][:bungalow_2_bed][0]
puts hotel[:third_floor][:room_quantity]
puts hotel[:third_floor][:room_type][:executive_suite][8]
puts hotel[:third_floor][:room_type][:penthouse][13]
hotel[:first_floor][:room_type][:terrace_studio].push("mini fridge")
puts hotel[:first_floor][:room_type][:terrace_studio][7]
