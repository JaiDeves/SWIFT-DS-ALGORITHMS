//
//  main.swift
//  Algorithms
//
//  Created by Ranganatha Jagannatha on 17/11/21.
//

import Foundation

class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var output:[Int] = []
        for (i,val) in nums.enumerated(){
            let ind = index[i]
            output.insert(val, at: ind)
        }
        return output
    }
}

let sol = Solution()
let ans = sol.createTargetArray([0,1,2,3,4], [0,1,2,2,1])
print(ans)

