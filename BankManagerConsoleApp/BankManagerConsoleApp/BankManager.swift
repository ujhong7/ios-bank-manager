//
//  BankManager.swift
//  BankManagerConsoleApp
//
//  Created by yujaehong on 1/29/24.
//

import Foundation

// 고객
class Customer {
    let number: Int

    init(number: Int) {
        self.number = number
    }
}

// 은행원
class Banker {
    func processCustomer(_ customer: Customer) {
        print("\(customer.number)번 고객 업무 시작")
        // 고객의 업무 처리 (0.7초로 가정)
        Thread.sleep(forTimeInterval: 0.7)
        print("\(customer.number)번 고객 업무 완료")
    }
}

// 은행
class Bank {
    private let banker = Banker()
    private var customerQueue = Queue<Int>()
    
    func open() {
        print("은행 문이 열렸습니다.")
        
        let numberOfCustomers = Int.random(in: 10...30)
        
        for customerNumber in 1...numberOfCustomers {
            customerQueue.enqueue(customerNumber)
        }
        
        // processCustomers()
                
        print("은행 문이 닫힙니다.")
    }
    
    // 🔴
//    func processCustomers() {
//        while !customerQueue.isEmpty {
//            if let customer = customerQueue.dequeue() {
//                banker.processCustomer(customer)
//            }
//        }
//    }
    
}
