//
//  ViewController.swift
//  Animations_Spring_UIKit
//
//  Created by Artem Sulzhenko on 03.11.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var springView: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func runButtonAction() {
        springView.animation = "wobble"
        springView.curve = "easeIn"
        springView.animate()
    }
    
}

