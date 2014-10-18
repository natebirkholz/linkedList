//
//  LinkedListClass.swift
//  test
//
//  Created by Nathan Birkholz on 10/18/14.
//  Copyright (c) 2014 Nate Birkholz. All rights reserved.
//

import Foundation

protocol OutputDelegate {
    func getTheText (text: String)
}

class LinkedList <T: Equatable> {
    var headNode : DasNode<T>?
    
    
    
    
    init () {
        
    }
    
    func insertValue(value: T) -> Void {
        println("0: -------------------------------------------")
        if headNode == nil {
            var nodeForHead = DasNode<T>()
            nodeForHead.value = value
            println("1: \(nodeForHead.value)")
            nodeForHead.next = nil
            println("2: \(nodeForHead.next?.value)")
            headNode = nodeForHead
            return
        }
        println("3:")
        var currentNode = headNode as DasNode!
        println("4: \(currentNode.value)")
        while currentNode?.next != nil {
            println("5: i see \(currentNode.value)")
            println("6: I also see \(currentNode.next?.value)")
            currentNode = currentNode?.next
            println("7: Now i am at \(currentNode.value)")
            println("8: \(currentNode.next?.value)")
        }
        
        println("9:=========================")
        var node = DasNode<T>()
        node.value = value
        println("10: \(node.value)")
        node.next = nil
        
        currentNode?.next = node
        println("11: \(currentNode.next?.value)")
        
        return
        
    }
    
    func removeValue(value: T ) {
        if headNode == nil {
            println("empty list")
            return
        }
        
        if headNode?.value == value {
            var nextNode = headNode?.next as DasNode!
            headNode = nextNode
            return
        }
        
        var currentNode = headNode as DasNode!
        var nextNode = currentNode.next
        
        while currentNode.next?.value != value && currentNode.next?.value != nil {
            nextNode = currentNode.next?.next
            currentNode = currentNode?.next
        }
        if nextNode?.next != nil {
            
            currentNode.next = nextNode?.next
            return
        } else {
            println("\(value) not found ")
        }
        
        
    }
    
    func WalkValues () {
        println("1: Start with  \(headNode?.value)")
        var currentNode = headNode as DasNode!
//        println("2: \(currentNode.value)")
        
        while currentNode.next != nil {
//            println("3: ---------------------------\(currentNode.value)")
//            println("4: \(currentNode.next?.value)")
            currentNode = currentNode?.next
            println("5: \(currentNode.value)")
//            println("6: \(currentNode.next?.value)")

        }
        
    }
    
}