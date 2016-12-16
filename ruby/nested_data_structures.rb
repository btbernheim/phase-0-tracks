#Design a nested data structure using a hotel 

#Create the apartment complex using a hotel:
hotel = {
#Add three floors that describe how many rooms are available, room type, and the contents within them.
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
#Creates a first floor hash that holds room_quantity and room_type.
#Gives the roomtype hash an array of room contents.
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
#Adds a second hash that holds an array within the room_type hash.
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

#Add statements that print out a nested piece of data
puts hotel[:first_floor][:room_quantity]
puts hotel[:first_floor][:room_type][:terrace_studio][0]
puts hotel[:second_floor][:room_quantity]
puts hotel[:second_floor][:room_type][:bungalow_1_bed][0]
puts hotel[:second_floor][:room_type][:bungalow_2_bed][0]
puts hotel[:third_floor][:room_quantity]
puts hotel[:third_floor][:room_type][:executive_suite][8]
puts hotel[:third_floor][:room_type][:penthouse][13]
hotel[:first_floor][:room_type][:terrace_studio].push("mini fridge")
#Appends the terrace studio array with 'mini fridge' at index 7
puts hotel[:first_floor][:room_type][:terrace_studio][7]
