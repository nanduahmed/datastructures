/*************************************************************************************** 
 *
 * Given a string which consists of lowercase or uppercase letters, find the length of 
 * the longest palindromes that can be built with those letters.
 * 
 * This is case sensitive, for example "Aa" is not considered a palindrome here.
 * 
 * Note:
 * Assume the length of given string will not exceed 1,010.
 * 
 * Example: 
 * 
 * Input:
 * "abccccdd"
 * 
 * Output:
 * 7
 * 
 * Explanation:
 * One longest palindrome that can be built is "dccaccd", whose length is 7.
 ***************************************************************************************/

var pal = "forgeeksskeegfor" // caabbbcbbbaac
aPall(value:pal)

func aPall(value:String) {
    var dict = [String:String]()
    for achar in value {
        print(achar)
        let strFromChar = String.init(achar)
        if let kVal = dict[strFromChar] {
            let finalStr = strFromChar + kVal
            print("final -- \(finalStr)")
            dict[strFromChar] = finalStr
        } else {
            dict[strFromChar] = strFromChar
        }
    }
    var count = 0
    if (value.count%2 == 0) {
        print("Even Loop")
        for apair in dict {
            print(apair)
            if (apair.value.count != 1) {
                count += apair.value.count
            }
        }
    } else {
        print("Odd Loop")
        for apair in dict {
            print(apair)
            count += apair.value.count
        }
    }
    print(count)
}

/*
    Merge two sorted arrays
*/


let myArray = [3, 4, 6, 7,11,16,21,22] //j
let alicesArray = [1, 5, 8, 12, 14, 19] //i

print(mergeArrays(my:myArray, alice:alicesArray))

func mergeArrays(my:[Int] , alice:[Int]) -> [Int] {
    
    var i = 0
    var j = 0
    
    var sorted = [Int]()
    
    while i < alice.count  {
        if (j >= my.count) {
            let remaining = alice[i..<alice.endIndex]
            sorted.append(contentsOf: remaining)
            break
        }
        
        if (i >= my.count) {
            let remaining = my[j..<my.endIndex]
            sorted.append(contentsOf: remaining)
            break
        }
        
        if (alice[i] < my[j]) {
            let aMinval = min(my[j], alice[i])
            print("alice[\(i)] \(alice[i]) < my[\(j)] \(my[j]) value:\(aMinval)")
            sorted.append(aMinval)
            i+=1
        } else {
            let aMinval = min(my[j], alice[i])
            print("alice[\(i)] \(alice[i]) > my[\(j)] \(my[j]) value:\(aMinval)")
            sorted.append(aMinval)
            j+=1
        }
    }
    
    return sorted
}
