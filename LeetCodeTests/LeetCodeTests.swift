//
//  LeetCodeTests.swift
//  LeetCodeTests
//
//  Created by Demian Turner on 11/06/2020.
//  Copyright © 2020 Demian Turner. All rights reserved.
//

import XCTest
@testable import LeetCode

class LeetCodeTests: XCTestCase {

    func testSums1() {
        let sol = Solution1()
        let sum = 9
        let array = [2, 7, 11, 15]
        let ret = sol.twoSum(array, sum)
        
        let idx1 = ret.first!
        let idx2 = ret.last!
        
        XCTAssertEqual(ret.count, 2)
        XCTAssertNotEqual(idx1, idx2)
        XCTAssertEqual(array[idx1] + array[idx2], sum)
    }
    
    func testSums2() {
        let sol = Solution1()
        let sum = 13
        let array = [1, 11, 6, 7]
        let ret = sol.twoSum(array, sum)
        
        let idx1 = ret.first!
        let idx2 = ret.last!
        
        XCTAssertEqual(ret.count, 2)
        XCTAssertNotEqual(idx1, idx2)
        XCTAssertEqual(array[idx1] + array[idx2], sum)
    }
    
    func testSums3() {
        let sol = Solution1()
        let sum = 6
        let array = [3, 3]
        let ret = sol.twoSum(array, sum)
        
        let idx1 = ret.first!
        let idx2 = ret.last!
        
        XCTAssertEqual(ret.count, 2)
        XCTAssertNotEqual(idx1, idx2)
        XCTAssertEqual(array[idx1] + array[idx2], sum)
    }
    
    func testSums4() {
        let sol = Solution2()
        let sum = 9
        let array = [2, 7, 11, 15]
        let ret = sol.twoSum(array, sum)
        
        let idx1 = ret.first!
        let idx2 = ret.last!
        
        XCTAssertEqual(ret.count, 2)
        XCTAssertNotEqual(idx1, idx2)
        XCTAssertEqual(array[idx1] + array[idx2], sum)
    }
    
    func testSums5() {
        let sol = Solution2()
        let sum = 13
        let array = [1, 11, 6, 7]
        let ret = sol.twoSum(array, sum)
        
        let idx1 = ret.first!
        let idx2 = ret.last!
        
        XCTAssertEqual(ret.count, 2)
        XCTAssertNotEqual(idx1, idx2)
        XCTAssertEqual(array[idx1] + array[idx2], sum)
    }
    
    func testSums6() {
        let sol = Solution2()
        let sum = 6
        let array = [3, 3]
        let ret = sol.twoSum(array, sum)
        
        let idx1 = ret.first!
        let idx2 = ret.last!
        
        XCTAssertEqual(ret.count, 2)
        XCTAssertNotEqual(idx1, idx2)
        XCTAssertEqual(array[idx1] + array[idx2], sum)
    }
    
    func testSums7() {
        let sol = Solution3()
        let sum = 9
        let array = [2, 7, 11, 15]
        let ret = sol.twoSum(array, sum)
        
        let idx1 = ret.first!
        let idx2 = ret.last!
        
        XCTAssertEqual(ret.count, 2)
        XCTAssertNotEqual(idx1, idx2)
        XCTAssertEqual(array[idx1] + array[idx2], sum)
    }
    
    func testSums8() {
        let sol = Solution3()
        let sum = 13
        let array = [1, 11, 6, 7]
        let ret = sol.twoSum(array, sum)
        
        let idx1 = ret.first!
        let idx2 = ret.last!
        
        XCTAssertEqual(ret.count, 2)
        XCTAssertNotEqual(idx1, idx2)
        XCTAssertEqual(array[idx1] + array[idx2], sum)
    }
    
    func testSums9() {
        let sol = Solution3()
        let sum = 6
        let array = [3, 3]
        let ret = sol.twoSum(array, sum)
        
        let idx1 = ret.first!
        let idx2 = ret.last!
        
        XCTAssertEqual(ret.count, 2)
        XCTAssertNotEqual(idx1, idx2)
        XCTAssertEqual(array[idx1] + array[idx2], sum)
    }
}
