def f(v, i):
    if i == 0:
        return v[i]
    else:
        return min(v[i], f(v, i - 1))


l = [5, 4, 6, 8, 10, 12]
print(f(l, len(l) - 1))