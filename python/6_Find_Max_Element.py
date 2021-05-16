"""
Find the max element of a given list of integers.
"""
# If we can use max function
def max_element(ls):
    return max(ls)

# If we can't use max but can use sort
def max_element_v2(ls):
    return sorted(ls)[-1]

# If we can't use either max or sort
def max_element_v3(ls):
    n = 0
    for num in ls:
        if num > n:
            n = num
    return n
