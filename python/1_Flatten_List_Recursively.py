"""
The trick here is that I am using the new_ls parameter as a list to append.
Since this list is created on first call to the function it is the same object that
I append to.
"""

def rc(ls, new_ls=[]):
    for x in ls:
        if isinstance(x, list):
            rc(x, new_ls)
        else:
            new_ls.append(x)
    return new_ls
