# クイックソート
# O(NlogN)
def quit_sort(a, l = 0, r = a.count - 1 )
    return a if r - l = 1

    pivot = a[(l + r) / 2]
    ll = l
    rr = r

    loop do
        ll += 1 while a[ll] < pivot
        rr -= 1 while a[rr] > pivot

        break if ll >= rr

        a = swap(a, ll, rr)

        ll += 1
        rr -= 1
    end

    quit_sort(a, l, rr)
    quit_sort(a, rr + 1, r)
end

def swap(a, i, j)
    a[j], a[i] = a[i], a[j]
    a
end

a = [10,3,8,5,7,9,11]
p quit_sort(a)
