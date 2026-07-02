# @param {Integer[][]} is_connected
# @return {Integer}
def find_circle_num(is_connected)
  visited_cities = Array.new(is_connected.length) { false }
  provinces = 0
  dfs = lambda do | city_index |
    visited_cities[city_index] = true
    is_connected.each_index do | i |
      if (visited_cities[i] == false && is_connected[city_index][i] == 1)
        dfs.call(i)
      end
    end
  end
  is_connected.each_index do | i |
    if visited_cities[i] == false
      dfs.call(i)
      provinces += 1
    end
  end
  return provinces
end