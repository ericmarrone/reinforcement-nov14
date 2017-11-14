data = { data:
  { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

rooms = data[:data][:rooms]

room_201_capacity = 0

rooms.each do |room|
    if room[:room_number] == "201"
      room_201_capacity = room[:capacity]
    end
end

puts "Room 201's capacity is #{room_201_capacity}."

events = data[:data][:events]

events.each do |event|
  if event[:room_id] == 1 && event[:attendees] <= 50
    puts "ok"
  end
end
