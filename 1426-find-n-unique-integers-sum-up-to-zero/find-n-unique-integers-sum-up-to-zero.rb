# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
    arr = []
    if n % 2 != 0
        arr.push(0)
        ((n-1)/2).times do |index|
            arr.push(-n + index)
            arr.push(n - index)
        end
    else
        (n/2).times do |index|
            arr.push(-n + index)
            arr.push(n - index)
        end
    end
    return arr
end