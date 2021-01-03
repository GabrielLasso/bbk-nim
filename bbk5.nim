import sequtils

proc imposter(integers: openArray[int]): int =
    if (integers.countIt(it mod 2 == 0) == 1):
        result = integers.filterIt(it mod 2 == 0)[0]
    else:
        result = integers.filterIt(it mod 2 == 1)[0]

when isMainModule:
    assert imposter(@[2,6,8,-10,3]) == 3
    assert imposter(@[206847684,1056521,7,17,1901,21104421,7,1,35521,1,7781]) == 206847684