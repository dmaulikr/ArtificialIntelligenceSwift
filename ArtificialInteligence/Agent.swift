//
//  Agent.swift
//  ArtificialInteligence
//
//  Created by Gabriel Cavalcante on 18/07/17.
//  Copyright © 2017 Gabriel Cavalcante. All rights reserved.
//

import UIKit

class Agent {
    
    var initialState: String!
    var finalState: String!
    var states: [String : [String]]!
    var problem: KindOfProblem!
    
    var successor: [Node]? = nil
    var cost: Int = 0
    
    init(initialState: String, finalState: String, states: [String : [String]], problem: KindOfProblem) {
        self.initialState = initialState
        self.finalState = finalState
        self.states = states
        self.problem = problem
    }
    
    func problemSolvingWithBreadthSearch() -> [String] {
        let breadthSearch = BreadthSearch(states: states, finalState: finalState)
        
        return breadthSearch.search(from: initialState)
    }
    
    func problemSolvingWithDepthSearch() -> [String] {
        let depthSearch = DepthSearch(states: states, finalState: finalState)
        
        return depthSearch.search(from: initialState)
    }
}
