import strutils, algorithm

proc spinWords(input: string): string =
    var words = input.split(' ')
    for (i, w) in words.pairs:
        if (w.len >= 5):
            words[i] = w.reversed.join
    result = words.join(" ")

when isMainModule:
    assert spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
    assert spinWords("This is a test") == "This is a test"
    assert spinWords("This is another test") == "This is rehtona test"