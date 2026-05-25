# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    prefix = [];
    postfix = [];
    curr_product = 1
    nums.each_index do | i |
        curr_product *= nums[i]
        prefix.push(curr_product)
    end
    curr_product = 1
    (nums.length - 1).downto(0) do | i |
        curr_product *= nums[i]
        postfix.prepend(curr_product)
    end
    nums.each_index do | i |
        prev = prefix[i - 1]
        if (i - 1 == -1)
            prev = 1
        end
        nxt = postfix[i + 1]
        if (nxt == nil)
            nxt = 1
        end
        nums[i] = prev * nxt
    end
    return nums
end