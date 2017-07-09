import Foundation
//Create function to check if number is prime
func isPrime(number: Int) -> Bool{
  //If number is less than two, then it isn't prime
   if number < 2{
      return false
   }
  //Create variable of half of the number
  let halfnum=number/2
  //Create variables
  var checkPrime=2
  var prime=0
  //While checkPrime is less than or equal to halfnum
  while checkPrime <= halfnum{
    if number%checkPrime != 0{
      prime=prime+1
    }else{
      return false
    }
  checkPrime=checkPrime+1 }
  //If prime is equal to halfnum or halfnum minus 1
  if prime == halfnum{
    return true
  }else if prime == (halfnum-1){
    return true
  }
  return false
}
//Get user input then check if prime
print("Welcome to the Prime Number Finder/Checker!!!")
print("Do NOT input a negative number.")
print("Type a number to check if its prime, or 'find' to find prime numbers.")
var userInput=readLine()!
//Create variable
let number = Int(userInput)
//If input is find
if userInput == "find"{
  //Create loop
  //Create variable
  var number=1
  while true{
    if isPrime(number: number){
      print("\(number) is prime!")
    }
    number=number+1
  }
//Add a non-prime number finder just for fun
}else if userInput == "findn"{
  //Create loop
  //Create variable
  var number=1
  while true{
    if isPrime(number: number) != true{
      print("\(number) is NOT prime!")
    }
    number=number+1
  }
//If the converted number is not nil, then number is a valid integer
}else if number != nil{
  if isPrime(number: number!){
    print("\(number!) is prime!")
  }else{
    print("\(number!) is NOT prime!")
}
//If userInput is not a command or valid integer
}else{
  print("Error, \'\(userInput)\' is not a valid number or command.")
  print("Or, it may just be a too long number.")
}
