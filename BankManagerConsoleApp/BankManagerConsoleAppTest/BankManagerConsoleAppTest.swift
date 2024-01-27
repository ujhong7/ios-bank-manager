//
//  BankManagerConsoleAppTest.swift
//  BankManagerConsoleAppTest
//
//  Created by dopamint on 1/27/24.
//

@testable import BankManagerConsoleApp
import XCTest

final class BankManagerConsoleAppTest: XCTestCase {
    
    var queue = Queue<Int>()
    
    func test_queue에_enqueue_호출_시_queue에_추가되는지() {
        queue.enqueue(1)
        queue.enqueue(2)
        let peek = queue.peek
        let result = 1
        XCTAssertEqual(result, peek)
    }
    
    func test_queue에_dequeue_호출_시_맨앞의_값이_반환되는지() {
        queue.enqueue(2)
        queue.enqueue(3)
        queue.enqueue(4)
        queue.dequeue()
        XCTAssertEqual(queue.peek, Optional(3))
    }
    
    func test_queue가_비어있을때_isEmpty_호출_시_true를_반환하는지() {
        XCTAssertTrue(queue.isEmpty)
        queue.enqueue(1)
        XCTAssertFalse(queue.isEmpty)
    }
}
