import 'dart:io';

final Map<String, String> morseCodeMap = {
        'A': '.-', 
        'B': '-...', 
        'C': '-.-.', 
        'D': '-..', 
        'E': '.', 
        'F': '..-.', 
        'G': '--.', 
        'H': '....', 
        'I': '..', 
        'J': '.---', 
        'K': '-.-', 
        'L': '.-..', 
        'M': '--', 
        'N': '-.', 
        'O': '---', 
        'P': '.--.', 
        'Q': '--.-', 
        'R': '.-.', 
        'S': '...', 
        'T': '-', 
        'U': '..-', 
        'V': '...-', 
        'W': '.--', 
        'X': '-..-', 
        'Y': '-.--', 
        'Z': '--..'
    };

void main() {
    print('Enter a string:');
    String input = stdin.readLineSync()!;
    String morseCode = convertToMorseCode(input);
    print('Morse code: $morseCode');
}

String convertToMorseCode(String input) {
    String morseCode = '';
    for (int i = 0; i < input.length; i++) {
        String char = input[i].toUpperCase();
        if (morseCodeMap.containsKey(char)) {
            morseCode += morseCodeMap[char]! + ' ';
        } else {
            morseCode += ' ';
        }
    }
    return morseCode.trim();
}