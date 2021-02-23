# クイックソート
# O(NlogN)
def quit_sort(array)
    return array if array.count <= 1

    pivot = array[0]
    left = []
    right = []

    (1...array.count).each do |i|
        if pivot < array[i]
            right << array[i]
        else
            left << array[i]
        end
    end

    quit_sort(left) + [pivot] + quit_sort(right)
end

a = [10,3,8,5,7,9,11]
p quit_sort(a)
