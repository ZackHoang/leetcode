# @param {Integer[][]} rooms
# @return {Boolean}
def can_visit_all_rooms(rooms)
  room_set = Set.new()
  dfs = lambda do | room_index |
    if room_set.include?(room_index)
      return
    end
    room_set.add(room_index)
    rooms[room_index].each do | key |
      dfs.call(key)
    end
  end
  dfs.call(0)
  return room_set.length == rooms.length
end