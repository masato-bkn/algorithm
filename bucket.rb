# バケットソート
def bucket_sort(arr, n)
    # 値が取りうる数だけ要素を持つ配列を作る
    # n -> 10
    # arrには0-10の値が格納される
    tmp = Array.new(n + 1, 0)

    # arrに格納されている値の数を数える
    arr.count.times do |i|
        tmp[arr[i]] = tmp[arr[i]] + 1
    end

    sorted = []

    tmp.count.times do |i|
        if !tmp[i].zero?
            tmp[i].times do |j|
                sorted << i
            end
        end
    end

    sorted
end

p bucket_sort([11,0, 1, 4, 10], 11)
