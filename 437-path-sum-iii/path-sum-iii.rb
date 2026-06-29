def path_sum(root, target_sum)
  prefix_sum_hash = { 0 => 1 }

  dfs = lambda do |node, curr_sum|
    return 0 if node.nil?

    curr_sum += node.val

    path_count = prefix_sum_hash.fetch(curr_sum - target_sum, 0)

    prefix_sum_hash[curr_sum] = prefix_sum_hash.fetch(curr_sum, 0) + 1

    path_count += dfs.call(node.left, curr_sum)
    path_count += dfs.call(node.right, curr_sum)

    prefix_sum_hash[curr_sum] -= 1

    path_count
  end

  dfs.call(root, 0)
end