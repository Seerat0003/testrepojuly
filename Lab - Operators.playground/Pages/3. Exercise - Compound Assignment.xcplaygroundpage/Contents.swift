/*:
## Exercise - Compound Assignment
 
 Declare a variable whose value begins at 10. Using addition, update the value to 15 using the compound assignment operator. Using multiplication, update the value to 30 using compound assignment. Print out the variable's value after each assignment.
 */
var balance: Double = 10
balance += 5
print("balance: ",balance)
let multiply: Double = balance * 3
print("Multiply value: ", multiply)


/*:
 Create a variable called `pennyBank` that begins at 0. You will use this to keep track of money you earn and spend. For each point below, use the right compound assignment operator to update the balance in your penny bank.
 
- Your neighbor gives you 10 dollars for mowing her lawn
- You earn 20 more dollars throughout the week doing odd jobs
- You spend half your money on dinner and a movie
- You triple what's left in your penny bank by washing windows
- You spend 3 dollars at a convenience store
 
 Print the balance of your penny bank after each step.
 */
var pennyBank: Double = 0
print("Initial Balance: ", pennyBank)
let mowingLawn: Double = pennyBank + 10
print("Balance after mowing lawn: ", mowingLawn)
let oddJobs: Double = mowingLawn + 20
print("Balance after odd jobs: ", oddJobs)
let spent: Double = oddJobs / 2
print("Balance after spending money: ", spent)
let windows: Double = spent * 3
print("Balance after washing windows: ", windows)
let store: Double = windows - 3
print("Balance after store: ", store)
/*:
[Previous](@previous)  |  page 3 of 8  |  [Next: App Exercise - Counting](@next)
 */
