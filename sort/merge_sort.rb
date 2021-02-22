# マージソート
# 計算量 O(NlogN)

def merge_sort(arr)
    return arr if arr.count <= 1

    mid = arr.count / 2
    left = arr.take(mid)
    right = arr.drop(mid)

    left = merge_sort(left)
    right = merge_sort(right)

    merge(left, right)
end

def merge(left, right)
    return left if right.empty?
    return right if left.empty?

    min = if left.first < right.first
        left.shift
    else
        right.shift
    end

    [min].concat(merge(left, right))
end

a = [10,3,8,5,7,9,11]
p merge_sort(a)
