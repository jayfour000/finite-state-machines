//
//  ViewController.swift
//  FiniteStateMachines
//
//  Created by Jason Hanson on 3/4/17.
//  Copyright © 2017 Alien Robot Overlords, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let viewModel = ViewModel()

    @IBOutlet weak var accessColorView: UIView!
    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.statusUpdate.subscribe(on: self) { (statusMessage) in
            self.statusLabel.text = statusMessage
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pushTurnstyleButtonAction(_ sender: Any) {
        viewModel.handlePush()
    }
    
    
    @IBAction func instertCoinButtonAction(_ sender: Any) {
        viewModel.handleInsertCoin()
    }
   

}

