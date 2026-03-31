//
//  Int+Lotto.swift
//  M4Lotto
//
//  Created by Settimi, Niccolo B. on 3/31/26.
//

import Foundation

extension Int
{
    static func sortedRandomArray(count: Int, ranRange: ClosedRange<Int>) -> [Int]
    {
        var array: [Int] = []
        while array.count < count
        {
            let num = Int.random(in: ranRange)
            
            if (!array.contains(num))
            {
                array.append(num)
            }
            
        }
        return array.sorted()
    }
}
