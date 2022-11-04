//
//  ViewController.swift
//  Animations_Spring_UIKit
//
//  Created by Artem Sulzhenko on 03.11.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var springView: SpringView!
    @IBOutlet var runButton: SpringButton!
    @IBOutlet var nameAnimationLabel: UILabel!
    @IBOutlet var stopButton: SpringButton!
    
    var numberAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springView.layer.cornerRadius = 10
        runButton.layer.cornerRadius = 10
        nameAnimationLabel.isHidden = true
        stopButton.layer.cornerRadius = 10
        stopButton.isHidden = true
    }

    @IBAction func runButtonAction() {
        runButton.animation = "fadeIn"
        runButton.curve = "linear"
        runButton.animate()
        
        switch numberAnimation{
        case 0:
            stopButton.isHidden = false
            runButton.setTitle("Next", for: .normal)
            numberAnimation += 1
            springView.animation = "wobble"
            springView.curve = "easeIn"
            springView.animate()
            nameAnimation()
        case 1:
            numberAnimation += 1
            springView.animation = "pop"
            springView.curve = "easeInOut"
            springView.duration =  1.0
            springView.animate()
            nameAnimation()
        case 2:
            numberAnimation += 1
            springView.animation = "swing"
            springView.curve = "linear"
            springView.animate()
            nameAnimation()
        case 3:
            numberAnimation += 1
            springView.animation = "squeeze"
            springView.curve = "easeInSine"
            springView.animate()
            nameAnimation()
        case 4:
            numberAnimation += 1
            springView.animation = "shake"
            springView.curve = "easeInCubic"
            springView.animate()
            nameAnimation()
        case 5:
            numberAnimation = 0
            springView.animation = "flipX"
            springView.curve = "easeInOutCubic"
            springView.animate()
            nameAnimation()
        default:
            break
        }
    }
    
    @IBAction func stopButtonAction() {
        stopButton.animation = "fadeIn"
        stopButton.curve = "linear"
        stopButton.animate()
        numberAnimation = 0
        runButton.setTitle("Run", for: .normal)
        nameAnimationLabel.isHidden = true
        stopButton.isHidden = true
    }
    
    func nameAnimation(){
        nameAnimationLabel.isHidden = false
        nameAnimationLabel.text = "Name animation: \n\(springView.animation)"
    }
    
}

