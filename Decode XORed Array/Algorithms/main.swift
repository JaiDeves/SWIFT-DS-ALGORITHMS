//
//  main.swift
//  Algorithms
//
//  Created by Ranganatha Jagannatha on 17/11/21.
//

import Foundation

class Solution {
    func decode(_ encoded: [Int], _ first: Int) -> [Int] {
        var array:[Int] = [first]
        for index in 0..<encoded.count{
            let val = array[index] ^ encoded[index]
            array.append(val)
        }
        return array
    }
}

let sol = Solution()
let ans = sol.decode([1,2,3], 1)
print(ans)
