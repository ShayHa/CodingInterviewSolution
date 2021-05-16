"""
Find the median of a given list with integers
"""

# If we can't use imports
def find_median(ls):
    ls = sorted(ls)
    l = len(ls)
    if l % 2 ==0:
        return (ls[l//2-1]+ls[l//2])/2
    return ls[l//2]

# If we can import
def find_median_v2(ls):
    import statistics
    return statistics.median(ls)
