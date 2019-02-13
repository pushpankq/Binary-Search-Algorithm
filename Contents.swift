import UIKit

var str = "Hello, playground"


func binarySearch<T:Comparable>(array:[T] , searchItem: T) -> Int?
{
    
    var low = 0
    var high = array.count - 1

    while low <= high {
        
        let mid = (low + high)/2
        
        if searchItem == array[mid] {
            
            return mid
        }
        else if searchItem > array[mid]{
            
            low = mid + 1
        }
        else {
            
            high = mid - 1
        }
    }
    
    return nil
}


let array1 = ["hello","hi","ill"]
let item = "hello"
binarySearch(array: array1, searchItem: item)


