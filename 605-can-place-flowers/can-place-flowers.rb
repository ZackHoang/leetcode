# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
    count = n
    flowerbed.each_index do |index|
        if count == 0
            break
        end
        if (flowerbed[index] == 1)
            next
        else
            if (index == 0 && flowerbed[index + 1] == 0)
                flowerbed[index] = 1
                count -= 1
            elsif (index == flowerbed.length - 1 && flowerbed[index - 1] == 0)
                flowerbed[index] = 1
                count -= 1
            elsif (flowerbed[index + 1] == 0 && flowerbed[index - 1] == 0)
                flowerbed[index] = 1
                count -= 1
            end
        end
    end
    return count == 0 ? true : false
end