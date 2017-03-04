//
//  ViewModel.swift
//  FiniteStateMachines
//
//  Created by Jason Hanson on 3/4/17.
//  Copyright © 2017 Alien Robot Overlords, Inc. All rights reserved.
//

import Signals

class ViewModel {
    
    let statusUpdate = Signal<String>()

    func handlePush() {
        statusUpdate.fire("push transition attempted")
    }
    
    func handleInsertCoin() {
         statusUpdate.fire("insert coin transition attempted")
    }
    
}
