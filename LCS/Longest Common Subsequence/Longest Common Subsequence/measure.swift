//
//  measure.swift
//  Longest Common Subsequence
//
//  Created by Jai on 28/11/21.
//

import Foundation

@discardableResult
public func measure(label: String = #function, tests: Int = 1, printResults output: Bool = true, setup: @escaping () -> Void = { return }, _ block: @escaping () -> Void) -> Double {
    
    guard tests > 0 else { fatalError("Number of tests must be greater than 0") }
    
    var avgExecutionTime : CFAbsoluteTime = 0
    for _ in 1...tests {
        setup()
        let start = CFAbsoluteTimeGetCurrent()
        block()
        let end = CFAbsoluteTimeGetCurrent()
        avgExecutionTime += end - start
    }
    
    avgExecutionTime /= CFAbsoluteTime(tests)
    
    if output {
        let avgTimeStr = "\(avgExecutionTime)".replacingOccurrences(of: "e|E", with: " × 10^", options: .regularExpression, range: nil)
        print(label, "▿")
        print("\tExecution time: \(avgTimeStr)s")
        print("\tNumber of tests: \(tests)\n")
        
    }
    
    return avgExecutionTime
}
