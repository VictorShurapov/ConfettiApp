//
//  ViewController.swift
//  ConfettiApp
//
//  Created by Victor Shurapov on 8/13/16.
//  Copyright © 2016 Victor Shurapov. All rights reserved.
//

import UIKit
import SAConfettiView

class ViewController: UIViewController {
    
    @IBOutlet weak var confettiView: SAConfettiView!
    
    @IBAction func tumblerButton() {
        tumbler()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        confettiView.type = .Image(UIImage(named: "smiley")!)
        //confettiView.type = .Diamond
    }
    
    func tumbler() {
        if confettiView.isActive() {
            confettiView.stopConfetti()
        }
        else {
            confettiView.startConfetti()
        }
    }
}

