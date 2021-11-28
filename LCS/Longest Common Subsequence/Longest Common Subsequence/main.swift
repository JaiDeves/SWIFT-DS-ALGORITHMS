//
//  main.swift
//  Longest Common Subsequence
//
//  Created by Jai on 28/11/21.
//

import Foundation

struct LCS{
    
    func basicRecursion(_ inputString1:String,_ inputString2:String, i:Int,j:Int)->Int{

        if i == 0 || j == 0{
            return 0
        }
        if inputString1[i-1] == inputString2[j-1]{
            return 1 + basicRecursion(inputString1, inputString2, i: i-1, j: j-1)
        }else{
            return max(basicRecursion(inputString1, inputString2, i: i-1, j: j), basicRecursion(inputString1, inputString2, i: i, j: j-1))
        }
    }
    
    func memoization(_ inputString1:String,_ inputString2:String)->Int{
        let m = inputString1.count, n = inputString2.count
        var map:[[Int]] = Array(repeating: Array(repeating: -1, count: n+1), count: m+1)
        
        func solveSubProblem(i:Int,j:Int)->Int{
            if map[i][j] != -1{
                return map[i][j]
            }
            if i == 0 || j == 0{
                return 0
            }
            var ans = 0
            if inputString1[i-1] == inputString2[j-1]{
                ans = 1 + solveSubProblem(i: i-1, j: j-1)
            }else{
                ans = max(solveSubProblem(i: i-1, j: j), solveSubProblem(i: i, j: j-1))
            }
            map[m][n] = ans
            return ans
        }
        return solveSubProblem(i: m, j: n)
    }
    
    
    func tabular(_ inputString1:String,_ inputString2:String)->Int{
        let m = inputString1.count, n = inputString2.count
        var map:[[Int]] = Array(repeating: Array(repeating: 0, count: n+1), count: m+1)
        
        for i in 1...m{
            for j in 1...n{
                if inputString1[i-1] == inputString2[j-1]{
                    map[i][j] = 1 + map[i-1][j-1]
                }else{
                    map[i][j] = max(map[i-1][j], map[i][j-1])
                }
            }
        }
        return map[m][n]
    }
   
}


let sol = LCS()
let inputString1 = "AGGTAB"
let inputString2 = "GXTXAYB"


measure(label:"basicRecursion") {
    let answer = sol.basicRecursion(inputString1, inputString2,i:inputString1.count  ,j: inputString2.count )
    print(answer)
}
measure(label:"memoization") {
    let answer = sol.memoization(inputString1, inputString2)
    print(answer)
}
measure(label:"tabular") {
    let answer = sol.tabular(inputString1, inputString2)
    print(answer)
}

