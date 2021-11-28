//
//  main.swift
//  Algorithms
//
//  Created by Ranganatha Jagannatha on 17/11/21.
//

import Foundation

class Solution {
    func countKDifference(_ nums: [Int], _ k: Int) -> Int {
        var pairs = 0
        var counts = [Int: Int]()
        
        for num in nums {
            counts[num] = (counts[num] ?? 0) + 1
            pairs += (counts[num-k] ?? 0) + (counts[num+k] ?? 0)
        }
        
        return pairs
    }
}
let sol = Solution()

let ans = sol.countKDifference([3,2,3,5,4], 2)
print(ans)

