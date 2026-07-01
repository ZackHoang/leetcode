def max_zig_zag(node, direction, count)
  return if node.nil?

  @max = [@max, count].max

  if direction == "left"
    # Going right continues the zigzag
    max_zig_zag(node.right, "right", count + 1)

    # Going left restarts
    max_zig_zag(node.left, "left", 1)
  else
    # Going left continues the zigzag
    max_zig_zag(node.left, "left", count + 1)

    # Going right restarts
    max_zig_zag(node.right, "right", 1)
  end
end

def longest_zig_zag(root)
  @max = 0
  max_zig_zag(root, "left", 0)
  max_zig_zag(root, "right", 0)
  @max
end