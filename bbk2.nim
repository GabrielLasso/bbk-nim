import strutils, sequtils

proc highAndLow(numbers: string): string =
    let numbersSeq = numbers.split(' ').mapIt(it.parseInt())
    result = $numbersSeq.max & " " & $numbersSeq.min

when isMainModule:
    assert highAndLow("1 2 3 4 5 6") == "6 1"
    assert highAndLow("6 5 4 3 2 1") == "6 1"
    assert highAndLow("1 -1 2 -2 3 -3") == "3 -3"