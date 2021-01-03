import math

proc getMiddle(word: string): string =
    let maxIndex = word.len - 1
    result = word[floor(maxIndex / 2)..ceil(maxIndex / 2)]

when isMainModule:
    assert getMiddle("asd") == "s"
    assert getMiddle("asdf") == "sd"