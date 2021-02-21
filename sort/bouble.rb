# バブルソート
# O(n^2)
def bouble_sort(array)
    len = array.count
    (0...len).each do |i|
        swapped = false

        (i + 1...len).each do |j|
            if array[j] < array[i]
                tmp = array[i]
                array[i] = array[j]
                array[j] = tmp
                swapped = true
            end
        end
        break if !swapped
    end
    array
end

p bouble_sort([9, 5, 1, 3, 6])
