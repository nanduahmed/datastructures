//
//  Node.swift
//  dataStruturesAndAlgo
//
//  Created by Nandu Ahmed on 3/22/18.
//  Copyright © 2018 Nizaam. All rights reserved.
//

import Foundation

class TreeNode<Type> {
    var value:Type?
    var leftNode:TreeNode?
    var rightNode:TreeNode?
}

class BinaryTree<T> {
    var head:TreeNode<T>?
    
    public init(value:T)  {
        let aNode = TreeNode<T>()
        aNode.value = value
        aNode.leftNode = nil
        aNode.rightNode = nil
        self.head = aNode
        return
    }
    
    func inOrderTraversal()  {
        // Left Tree , Root , Right Tree
        
        
    }
    
    func preOrderTraversal()  {
        
    }
    
    func postOrderTraversal()  {
        
    }
}
