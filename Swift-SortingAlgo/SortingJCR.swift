//Ascending and descending order sorting Algorithm
//John Rader

import Foundation

extension Array where Element: Comparable {
    
        func descendingSort(by descendingOrder: ((Element, Element) -> Bool) = (>)) -> [Element] {
        var data = self
        
        //iterates through the array until the second to last element 
        for i in 0..<(data.count-1) { 
            //iterates again from the current element i, comparing the two elements and swaping them, greater number first. 
            for j in 0..<(data.count-i-1) where descendingOrder(data[j+1], data[j]) { 
                data.swapAt(j, j + 1)
            }
        }
        
        return data
    }

    func ascendingSort(by increasingOrder: ((Element, Element) -> Bool) = (<)) -> [Element] {
        var data = self
        
        //iterates through the array
        for i in 0..<(data.count-1) { 
            //iterates again from the current element i, comparing the two elements and swaping them, lesser number first. 
            for j in 0..<(data.count-i-1) where increasingOrder(data[j+1], data[j]) { 
                data.swapAt(j, j + 1)
            }
        }
        
        return data
    }
}

//creates the array to be sorted
let theArray = [9, 3, 2, 5, 1, 7, 6, 4, 11, 20, 14, 42, 13, 26, 62, 23, 52, 76, 21, 15]
 
//creates the sorted arrays
let ascendedSort = theArray.ascendingSort()
let descendedSort = theArray.descendingSort()

//prints the sorted arrays
print(ascendedSort)
print(descendedSort)
 