//
//  ViewController.swift
//  Graph Problems
//
//  Created by Nandu Ahmed on 4/19/18.
//  Copyright © 2018 Niz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let graph = Graph()
        
        let a = Vertex(value:"1")
        let b = Vertex(value:"2")
        let c = Vertex(value:"3")
        let d = Vertex(value:"4")
        let e = Vertex(value:"5")
        let f = Vertex(value:"6")

        
        graph.addVertex(value: a)
        graph.addVertex(value: b)
        graph.addVertex(value: c)
        graph.addVertex(value: d)
        graph.addVertex(value: e)
        graph.addVertex(value: f)

        
        graph.addEdge(source: a, neighbour: c, weight: 10)
        graph.addEdge(source: c, neighbour: e, weight: 20)
        graph.addEdge(source: e, neighbour: f, weight: 30)
        graph.addEdge(source: b, neighbour: a, weight: 40)
//        graph.addEdge(source: e, neighbour: f, weight: 50)
        graph.addEdge(source: e, neighbour: d, weight: 5)
        graph.addEdge(source: f, neighbour: d, weight: 15)
        graph.addEdge(source: d, neighbour: b, weight: 15)
        graph.addEdge(source: e, neighbour: b, weight: 15)

        
        print(graph.description)
        
        graph.breadthFirstSearch(root: a)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

