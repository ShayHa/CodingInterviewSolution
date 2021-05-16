"""
Because we need to keep the order of the list we use the trick
to check if the item is already in a set or not.

If we only needed the unique items we could just do set(ls).
"""
def unique_ls(ls):
    s = set()
    return [x for x in ls if not (x in s or s.add(x))]
