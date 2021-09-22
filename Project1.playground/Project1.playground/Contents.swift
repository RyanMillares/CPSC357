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
 **Things to consider:*
 * There must be equal number of opening and closing paranthesis
 * A proper match includes an opening paranthesis followed by a closing.
 * Cannot have a closing before opening in a pair.
 * */

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
    let chars = Array(expression) //chars is constant because once initialized, it is expected to stay the same
    
    
    var total = 0 //total is a variable because we want to update its value during runtime
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
let hello: String = "ewgr"
//let chars = Array(hello)
print("hi")

//testing
verifyParenthesis (expression: "((") // false
verifyParenthesis (expression: "(())") // true
verifyParenthesis (expression: "()()") // true
verifyParenthesis (expression: "(()))") // false
verifyParenthesis (expression: ")(") // false
