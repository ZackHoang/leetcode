def calculate_finish_time(first_start, first_duration,
                          second_start, second_duration)

  min_finish = Float::INFINITY

  first_start.each_index do |i|
    first_end = first_start[i] + first_duration[i]

    second_start.each_index do |j|
      second_begin = [first_end, second_start[j]].max
      finish = second_begin + second_duration[j]

      min_finish = [min_finish, finish].min
    end
  end

  return min_finish
end

def earliest_finish_time(land_start_time, land_duration, water_start_time, water_duration)
  return [calculate_finish_time(land_start_time, land_duration, water_start_time, water_duration),calculate_finish_time(water_start_time, water_duration, land_start_time, land_duration)].min
end