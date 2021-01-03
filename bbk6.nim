import tables, strutils

const morseDecoder = {
    ".-": "A",
    "-...": "B",
    "-.-.": "C",
    "-..": "D",
    ".": "E",
    "..-.": "F",
    "--.": "G",
    "....": "H",
    "..": "I",
    ".---": "J",
    "-.-": "K",
    ".-..": "L",
    "--": "M",
    "-.": "N",
    "---": "O",
    ".--.": "P",
    "--.-": "Q",
    ".-.": "R",
    "...": "S",
    "-": "T",
    "..-": "U",
    "...-": "V",
    ".--": "W",
    "-..-": "X",
    "-.--": "Y",
    "--..": "Z",
    ".----": "1",
    "..---": "2",
    "...--": "3",
    "....-": "4",
    ".....": "5",
    "-....": "6",
    "--...": "7",
    "---..": "8",
    "----.": "9",
    "-----": "0",
    "": " ",
    ".-.-.-": ".",
    "--..--": ",",
    "---...": ".",
    "..--..": "?",
    "-.-.--": "!",
    "...---...": "SOS",
    "-....-": "''",
    "-..-.": "/",
    "-.--.-": "()",
    ".--.-.": "@",
    "-...-": "="
}.toTable()

proc decodeMorse(morseCode: string): string =
    let words = morseCode.split("   ")
    for word in words:
        let tokens = word.split(" ")
        for token in tokens:
            result &= morseDecoder[token]
        result &= ' '
    result.delete(result.len-1, result.len-1)

when isMainModule:
    const morseCode = "-.-- --- ..-   .... .- ...- .   .-   -... .. --.   -... .-. .- .. -.   ..-. --- .-.   -.- --- - .-.. .. -."
    echo decodeMorse(morseCode)