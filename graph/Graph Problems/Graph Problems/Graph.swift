//
//  Graph.swift
//  Graph Problems
//
//  Created by Nandu Ahmed on 4/19/18.
//  Copyright © 2018 Niz. All rights reserved.
//

import Foundation


class Vertex : CustomStringConvertible {
    var value:String?
    var edges:[Edge] = [Edge]()
    
    init(value:String) {
        self.value = value
    }
    
    var description: String {
        guard let value = value else {
            return "|-|"
        }
        
        return "|\(value)|"
    }
    
}


class Edge {
    var weight:Int = 0
    var neighbour:Vertex?
}

class Graph : CustomStringConvertible {
    
    var vertices:[Vertex] = [Vertex]()
    var isDirected = false
    
    func addVertex(value:Vertex)  {
        self.vertices.append(value)
    }
    
    func addEdge(source:Vertex, neighbour:Vertex, weight:Int) {
        let edge = Edge()
        edge.weight = weight
        
        edge.neighbour = neighbour
        source.edges.append(edge)
    }
    
    var description: String {
        var string = ""
        
        for v in self.vertices {
            var value = ""
            
            for edge in v.edges {
                value.append("\(v.description)-\(edge.weight)->\((edge.neighbour?.description)!)")
            }
            
            string.append(value)
            string.append("\n")
        }
        
        return string
        
    }
   
    func breadthFirstSearch(root:Vertex) -> Void {
        
        print("----- DFS ----- \n")
        var queue = Queue<Vertex>()
        
        var visited = [Bool]()
        
        for _ in self.vertices {
            visited.append(false)
        }
        
        
        queue.enqueue(root)
        visited[0] = true
        var tVertex = root
        while !queue.isEmpty {
            
            tVertex = queue.dequeue()!
            print(tVertex.value ?? "Def Value")
            
            for edge in tVertex.edges {
                let idx = self.vertices.index(where: { (v) -> Bool in
                    v.value == edge.neighbour?.value
                })
                if (visited[idx!] == false) {
                    visited[idx!] = true
                    queue.enqueue(edge.neighbour!)
                }
            }
        }
    }
}
