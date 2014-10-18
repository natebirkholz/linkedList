//
//  ViewController.swift
//  test
//
//  Created by Nathan Birkholz on 10/18/14.
//  Copyright (c) 2014 Nate Birkholz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var node0 = 200
    var node1 = 123
    var node2 = 345
    var node3 = 22
    var node4 = 267
    
    var nodeListFor = LinkedList<Int>()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func goButton(sender: AnyObject) {
        
        println("A")
        self.nodeListFor.insertValue(node0)
        println("B")

        self.nodeListFor.insertValue(node1)
        println("C")

        self.nodeListFor.insertValue(node2)
        println("C")

        self.nodeListFor.insertValue(node3)
        
        println("D")

        self.nodeListFor.insertValue(node4)
        
        println("E")

        
        self.nodeListFor.WalkValues()
        println("")
        
        self.nodeListFor.removeValue(22)
        
        self.nodeListFor.WalkValues()
        println("")
        
        self.nodeListFor.insertValue(1723)
        
        self.nodeListFor.WalkValues()
        println("")
        
        self.nodeListFor.insertValue(5)
        
        self.nodeListFor.WalkValues()
        println("")
        
        self.nodeListFor.insertValue(1723)
        
        self.nodeListFor.WalkValues()
        println("")
        
        self.nodeListFor.removeValue(22)
        
        self.nodeListFor.WalkValues()
        println("")
        
        self.nodeListFor.removeValue(345)
        
        self.nodeListFor.WalkValues()
        println("")

    }

    


    

}

