//
//  TwoSum.swift
//  LeetCode
//
//  Created by Demian Turner on 11/06/2020.
//  Copyright © 2020 Demian Turner. All rights reserved.
//

import Foundation

// https://leetcode.com/problems/two-sum/

// Given nums = [2, 7, 11, 15], target = 9,
// Given nums = [3, 3], target = 6

// correct
class Solution3 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (candidate1, num) in nums.enumerated() {
            let complement = target - nums[candidate1]
            
            if let candidate2 = dict.first(where: { $0.value == complement } )?.key,
                dict.values.contains(complement)
            {
                return [candidate1, candidate2]
            }
            dict.updateValue(num, forKey: candidate1)
        }
        return [0]
    }
}

// correct but inefficient
class Solution2 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        nums.enumerated().forEach { (idx, num) in
            dict.updateValue(num, forKey: idx)
        }
        
        for (candidate1, _) in nums.enumerated() {
            let complement = target - nums[candidate1]
            if let candidate2 = dict.first(where: { $0.value == complement } )?.key,
                dict.values.contains(complement),
                candidate2 != candidate1
            {
                return [candidate1, candidate2]
            }
        }
        return [0]
    }
}

// correct but inefficient
class Solution1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for candidate1 in nums {
            var restOfCandidates = nums
            let idx = nums.firstIndex(of: candidate1) ?? 0
            restOfCandidates.remove(at: idx)
            
            for candidate2 in restOfCandidates {
                let sum = candidate1 + candidate2
                if sum == target {
                    let first = nums.firstIndex(of: candidate1)! as Int
                    let second = nums.lastIndex(of: candidate2)! as Int
                    if first == second {
                        continue
                    } else {
                        return [first, second]
                    }
                } else {
                    continue
                }
            }
        }
        return [0]
    }
}
