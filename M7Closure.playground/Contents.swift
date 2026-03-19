import UIKit

/*
{(params: String) -> String in
    
    print("test")
    return params
}

{() -> String in
    
}

{() in
}

{
    
}
*/

func sayHello()
{
    print("Closure 1")
}
sayHello()

let sayHelloClosure: () -> Void = {() in
    print("Unnamed Closure 1")
}
sayHelloClosure

let a = sayHelloClosure

func add(a: Int, b: Int) -> Int
{
    return a + b
}

let arithemeticFunction: ((Int, Int) -> Int)? = {(a: Int, b: Int) -> Int in
        return a+b
}

func showAlert(message: String, title: String = "Alert")
{
    
}
