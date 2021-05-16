"""
Given a list of integers/ words we have to find the first element
that appears only once.

Given: [1,1,2,3,4]
Result: 2
"""
def find_non_rec(ls):
    for n in ls:
        if ls.count(n) > 1:
            continue
        else:
            return n
    return -1
