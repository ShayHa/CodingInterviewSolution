# Using dictionary
def count_words(ls):
    d = {}
    for x in ls:
        d[x] = d.get(x, 0) + 1
    return d

# Using Counter
def count_words_v2(ls):
    from collections import Counter
    return Counter(ls)
