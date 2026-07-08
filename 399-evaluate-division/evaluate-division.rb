# @param {String[][]} equations
# @param {Float[]} values
# @param {String[][]} queries
# @return {Float[]}
def calc_equation(equations, values, queries)
  @adj = Hash.new { | k, v | k[v] = [] }

  equations.each_with_index do | eq, i |
    a, b = eq
    @adj[a].push([b, values[i]])
    @adj[b].push([a, 1 / values[i]])
  end

  result = []
  queries.each do | q |
    result.push(bfs(q[0], q[1]).to_f)
  end

  return result
end

def bfs(src, target)
  if !@adj.key?(src) || !@adj.key?(target)
    return -1
  end

  queue = []
  queue.push([src, 1])

  visited = Set.new
  visited.add(src)

  while !queue.empty?
    curr_node, curr_weight = queue.shift
    if curr_node == target
      return curr_weight
    end
    @adj[curr_node].each do | node, wt |
      if !visited.include?(node)
        queue.push([node, curr_weight * wt])
        visited.add(node)
      end
    end
  end

  return - 1
end