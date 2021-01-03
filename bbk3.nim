import strutils

proc mummble(input: string): string =
    var parts: seq[string]
    for (i, c) in input.pairs:
        parts.add(c.toLowerAscii.repeat(i+1).capitalizeAscii)
    result = parts.join("-")

when isMainModule:
    assert mummble("asd") == "A-Ss-Ddd"
    assert mummble("foo") == "F-Oo-Ooo"
    assert mummble("QWERTY") == "Q-Ww-Eee-Rrrr-Ttttt-Yyyyyy"