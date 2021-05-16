# Using strip to remove spaces in the begining or at the end of as sentence
def count_words(s):
    return len(s.strip().split())

# Using for loop
def count_words_v2(s):
    c = 0
    for x in s.strip().split():
        if x:
            c += 1
    return c
