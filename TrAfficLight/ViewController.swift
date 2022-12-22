//
//  ViewController.swift
//  TrAfficLight
//
//  Created by Konstantin Durkin on 13.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum CurrentLight {
        case red, yellow, green
    }
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
    }
    
    
    @IBAction func startbuttonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        
        switch currentLight {
            
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOff
            currentLight = .red
        }
    }
}





    






