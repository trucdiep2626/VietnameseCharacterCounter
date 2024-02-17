func countVietnameseCharacters(_ inputString: String) -> Int {
    //"aw", "aa", "dd", "ee", "oo", "ow", "w"
    let vietnameseChars: Set<String> = ["aa", "dd", "ee", "oo",]
    var count = 0
    var i = 0
    
    while i < inputString.count - 1 {
        let currentPair = String(inputString[inputString.index(inputString.startIndex, offsetBy: i)]) + String(inputString[inputString.index(inputString.startIndex, offsetBy: i+1)])
        
        if vietnameseChars.contains(currentPair) || currentPair.contains("w") {
            if(currentPair.contains("w"))
            {
                count += currentPair.filter { $0 == "w" }.count
            }
            else
            {
                count += 1
            }
            
            i += currentPair.count
        } else {
            i += 1
        }
    }
    return count
}

let inputString = "haawdbchuwwwwhguubhvooooowhhdd"
print(countVietnameseCharacters(inputString))


