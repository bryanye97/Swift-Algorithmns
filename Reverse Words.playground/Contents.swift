import Foundation

var sampleSentence = "This sentence is made to illustrate the reverse words algorithm"

func reverseEveryWordInSentence(sentence: String) -> String {
    let allWords = sentence.componentsSeparatedByString(" ")
    var newSentence = ""
    
    for word in allWords {
        
        if newSentence != "" {
            newSentence += " "
        }
        
        let reversedWord = String(word.characters.reverse())
        
        newSentence += reversedWord
    }
    
    return newSentence
}

print(reverseEveryWordInSentence(sampleSentence))

func reverseEveryOtherWordInSentence(sentence: String) -> String {
    let allWords = sentence.componentsSeparatedByString(" ")
    var newSentence = ""
    
    
    
    for index in 0...allWords.count - 1 {
        let word = allWords[index]
        
        if newSentence != "" {
            newSentence += " "
        }
        
        if index % 2 == 0 {
            newSentence += word
        } else {
            let reversedWord = String(word.characters.reverse())
            newSentence += reversedWord
        }
    }
    
    return newSentence
}

print(reverseEveryOtherWordInSentence(sampleSentence))

func reverseEveryOtherWordInSentenceAndRemoveVowels(sentence: String) -> String {
    let allWords = sentence.componentsSeparatedByString(" ")
    var newSentence = ""
    
    
    
    for index in 0...allWords.count - 1 {
        let word = allWords[index]
        
        if newSentence != "" {
            newSentence += " "
        }
        
        if index % 2 == 0 {
            newSentence += word.stringByRemovingVowels()
        } else {
            let reversedWord = String(word.characters.reverse())
            newSentence += reversedWord.stringByRemovingVowels()
        }
    }
    
    return newSentence
}

print(reverseEveryOtherWordInSentenceAndRemoveVowels(sampleSentence))

extension String {
    func stringByRemovingVowels() -> String {
        var newWord = self
        let vowels = ["a", "e", "i", "o", "u"]
        
        for vowel in vowels {
            newWord = newWord.stringByReplacingOccurrencesOfString(vowel, withString: "")
        }
        
        return newWord
    }
}