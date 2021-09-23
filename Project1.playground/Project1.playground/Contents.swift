import UIKit

/*:
 # Problem 1: Primes
 
 Make  a function to determine if an inputted whole number is prime.
 **Things to consider:*
 * Numbers 1-3 are automatically prime
 * Any even number greater than 2 is not prime
 * For any whole number n, if there is a whole number m  less than n and greater than 1 such that n % m == 0, n is not prime
 */

/*:
 # Questions about function:
 * I chose this problem for two reasons. First, I love playing with and handling number datas, so this looked like a fun challenge. Second, since it involves numbers, I could rapidly run tests with a simple for loop.
 * This function takes a single parameter called num, of type Int. This is to be the input number we are checking whether it is prime or not.
 * There was no need for extra constants or variables other than the one created by the for loop to iteratively divide the input by smaller numbers to check if one returns a remaineder of zero.
 * A variable is a data type that can be changed over time, while a constant's value is static and set in stone as soon as it is initialized.*/

/*:
 
 Psuedocode:
 * bool isPrime(num){
 * CHECK if num > 3
 * if NO: it is prime
 * if YES:
 * --CHECK if num is even
 * --if YES: it is not prime
 * --if NO:
 * ----CHECK all numbers (1, num) if any number divides num cleanly (no remainder).
 * ----if any YES: it is not prime
 * ----if NO: it is prime
 
 */
/**/

func isPrime(num: Int) -> Bool {
    if num > 3 {
        if num % 2 == 0 {
            return false
        }
        else {
            for i in 2..<num {
                if num % i == 0{
                    return false
                }
                else {
                    
                }
                
            }
            return true
            
        }
    }
    
    else {
        return true
    }
}
// end of function
var val: Int
var total: Float = 0
var primes: Float = 0
var res: Float

var lastPrime = 0
var diff: Int

// random test thing for fun
for index in 1...100{
    if(isPrime(num: index)){
        val = 1
        primes += 1
        
        diff = index - lastPrime
        lastPrime = index
    }
    else{
        val = 0
        
        
    }
    total += 1
    res = primes / total
    //val
}


/*:
 # Problem 3: Parenthesis Checker
 
 Make a function that takes in a string and checks if the parenthesis are formatted properly.
 **Things to note:*
 * There must be equal number of opening and closing paranthesis
 * A proper match includes an opening paranthesis followed by a closing.
 * Cannot have a closing before opening in a pair.
 * */

/*: Questions about function:
 * I chose this function because I was slightly familiar with the problem from data structures. However, I also was already thinking of a solution as soon as I saw this problem so figured might as well continue with it.
 * This function takes a single parameter, expression, of type String, as input. This is the string to be checked for proper paranthesis pairing.
 * The function also has constant, chars, that is initialized as an array. This holds the input string as a split array, and is constant becase its contents must stay the same throughout the runtime.
 * The function also has a variable, total, of type Int. This represents the current "parenthesis balance value" of the string, a number I made up to represent the difference between opening and closing parenthesis. This can be used both during run time and at the end of the function to check for any unmatched parenthesis.
 
 */
/*:
 Psuedocode:
 * Split string into array of characters and store as constant
 * initialize variable "total" to represent the balance between paranthesis
 * FOR EACH character in string array
 * --CHECK what paraenthsis is reached
 * --IF "(", add 1 to total
 * --IF ")", subtract 1 from total
 * --At any point, IF total becomes negative:
 * ----return false (we have reached an unmateched closing paranthesis
 * At the end:
 * IF total = 0: return true because the opening/closing totals are balanced
 * ELSE: return false because there is differing numbers of paranthesis types
 
 */

func verifyParenthesis(expression: String) -> Bool {
    // referenced https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjckJ7qz5XzAhUQ6p4KHf6XDckQFnoECAUQAQ&url=https%3A%2F%2Fstackoverflow.com%2Fquestions%2F25921204%2Fconvert-swift-string-to-array%2F25921323&usg=AOvVaw0bF1U0Yf62Y7vrks5SM6Z6 to find suitable function to split into characters.
    let chars = Array(expression)
    
    var total = 0
    for letter in chars {
        if letter == "("{
            total += 1
        }
        else if letter == ")"{
            total -= 1
        }
        if total < 0 {
            
            return false
        }
    }
    if total == 0 {
        return true
    }
    else {
        return false
    }
   

}
//end of function
let hello: String = "ewgr"
//let chars = Array(hello)
print("hi")

//testing
verifyParenthesis (expression: "((") // false
verifyParenthesis (expression: "(())") // true
verifyParenthesis (expression: "()()") // true
verifyParenthesis (expression: "(()))") // false
verifyParenthesis (expression: ")(") // false
