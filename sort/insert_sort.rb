# 挿入ソート
# O(n^2)
def insert_sort(a)
    len = a.count

    (1...len).each do |i|
        k = a[i]
        j = i - 1
        while j >= 0 && a[j] > k
            a[j+1] = a[j]
            j -= 1
        end

        a[j + 1] = k
    end
    a
end

p insert_sort([9, 5, 1, 3, 6])
