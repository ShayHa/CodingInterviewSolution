# When ls is a list of words
# Using for loop
def count_words(ls):
    d = {}
    for x in ls:
        d[x] = d.get(x, 0) + 1
    return d

# Using collections
def count_words_v2(ls):
    from collections import Counter
    return Counter(ls)
