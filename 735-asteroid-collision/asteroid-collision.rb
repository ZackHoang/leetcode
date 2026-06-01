# @param {Integer[]} asteroids
# @return {Integer[]}
def asteroid_collision(asteroids)
  asteroids_after_collision = []
  asteroids.each_index do | i |
    while (!asteroids_after_collision.empty? && asteroids[i] < 0 && asteroids_after_collision[-1] > 0)
      diff = asteroids[i] + asteroids_after_collision[-1]
      if diff < 0
        asteroids_after_collision.pop()
      elsif diff > 0
        asteroids[i] = 0
      else diff == asteroids_after_collision[-1]
        asteroids[i] = 0
        asteroids_after_collision.pop()
      end
    end
    if asteroids[i] != 0
      asteroids_after_collision.push(asteroids[i])
    end
  end
  return asteroids_after_collision
end