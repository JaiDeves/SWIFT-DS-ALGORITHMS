//
//  main.swift
//  Algorithms
//
//  Created by Ranganatha Jagannatha on 17/11/21.
//

import Foundation
/*
class Solution:SampleProtocol {
    var sample: String?{
        return "Solution"
    }
    func smallerNumbersThanCurrent(_ nums: [Int]) -> Int {
        var map:[Int:Int] = [:]
        var output = 0
        for value in nums{
            
        }
        print(map)
        return output
    }
}

let sol = Solution()
let ans = sol.smallerNumbersThanCurrent([8,1,2,2,3])


protocol SampleProtocol{
    var sample:String?{get set}
}
extension SampleProtocol{
    var sample:String?{ get { return nil } set{} }
}

class TestClass:SampleProtocol {
    var sample: String?{
        return "Solution"
    }
}
func printValue(_ value: SampleProtocol){
    print(0.06 * 100)
    print(0.07 * 100 )
    print(0.08 * 100)
    print(value.sample)
}
let testObj = TestClass()
printValue(testObj)
//print(ans)
enum TestCase :SampleProtocol{
    var sample: String?{
        return "sample"
    }
    
}
*/

func sumOfSeries(input1: Int, input2: Int, input3:Int)->Int{
    var startingNumber = input1
    let difference = input2
    var frequency = input3
    
    var series:[Int] = []
    while frequency > 0 {
        series.append(startingNumber)
        startingNumber += difference
        frequency -= 1
    }
    
    let sum = series.reduce(0) { (res, val) -> Int in
        res + val
    }
    
    let nthFib = findNthFib(n: sum)
    return nthFib * sum
}

func findNthFib(n:Int)->Int{
    let fib:[Int] = [ 0, 1, 1, 2, 3, 5 ]
    let goldenRatio = 1.6180339;

    if n < 6{
        return fib[n]
    }
    
    var t = 5, fn = 5;
    
    while (t < n) {
        fn = Int((Double(fn) * goldenRatio).rounded())
        t += 1;
    }
    return fn
}

let asn = sumOfSeries(input1: 5, input2: 1, input3: 2)
print(asn)
