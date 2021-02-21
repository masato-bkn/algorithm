# 選択ソート
# O(n^2)
def selection_sort(array)
    len = array.count

    (0...len).each do |i|
        min = i
        (i + 1...len).each do |j|
            if array[j] < array[min]
                min = j
            end
        end
        tmp = array[i]
        array[i] = array[min]
        array[min] = tmp
    end
    array
end

p selection_sort([9, 5, 1, 3, 6])
