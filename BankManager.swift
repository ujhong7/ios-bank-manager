//
//  BankManager.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

class Node<T> {
    
    var value: T
    var next: Node?

    init(value: T) {
        self.value = value
    }
}

class LinkedList<T: Equatable> {
    var head: Node<T>?
    var tail: Node<T>?
    
    func append(_ data: T) {
        if head != nil {
            tail?.next = Node(value: data)
            tail = tail?.next
        }  else {
            head = Node(value: data)
            tail = head
        }
    }
    
    func remove(_ at: Int) {
        if at == 1 {
            head = head?.next
            if head == nil {
                tail = nil
            }
            return
        }
        let previous = searchNodeIndex(with: at - 1)
        previous?.next = previous?.next?.next
        
    }
    
    func searchNodeIndex(with index: Int) -> Node<T>? {
        var now = head
        for i in 1...index {
            if index == 1 || i == index || now?.next == nil {
                return now
            }
            now = now?.next
        }
        return now
    }
    
    func searchNodeValue(with: T) -> Node<T>? {
        var now = head
        var index = 1
        while now?.next != nil {
            if now?.value == with {
                return now
            }
            now = now?.next
            index += 1
        }
        return now
    }
}

class Queue<T> {
    
    var linkedList = LinkedList<Int>()
    
    var isEmpty: Bool {
        return linkedList.head == nil
    }
    
    var peek: Int? {
        return linkedList.head?.value
    }
    
    func enqueue(_ value: Int) {
        linkedList.append(value)
    }
    
    func dequeue() {
        linkedList.remove(1)
    }
    
}
