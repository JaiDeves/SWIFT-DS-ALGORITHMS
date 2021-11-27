//
//  main.swift
//  Algorithms
//
//  Created by Ranganatha Jagannatha on 17/11/21.
//

import Foundation

class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var output:[Int] = []
        for index in stride(from: 0, to: nums.count, by: 2){
            let frequency = nums[index]
            let value = nums[index+1]
            output.append(contentsOf: Array(repeating: value, count: frequency))
        }
        return output
    }
}

let sol = Solution()
let ans = sol.decompressRLElist([1,2,3,4])
print(ans)
