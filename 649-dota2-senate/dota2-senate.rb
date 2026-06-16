# @param {String} senate
# @return {String}
def predict_party_victory(senate)
  radiant_queue = Queue.new()
  dire_queue = Queue.new()

  senate.chars.each_with_index do | ch, i |
    if ch == "R"
      radiant_queue.push(i)
    else
      dire_queue.push(i)
    end
  end

  while radiant_queue.length > 0 && dire_queue.length > 0
    dire_turn = dire_queue.pop()
    radiant_turn = radiant_queue.pop()
    if dire_turn < radiant_turn
      dire_queue.push(dire_turn + senate.length)
    else
      radiant_queue.push(radiant_turn + senate.length)
    end
  end

  return radiant_queue.length > dire_queue.length ? "Radiant" : "Dire"
end