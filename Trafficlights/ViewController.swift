//
//  ViewController.swift
//  Trafficlights
//
//  Created by Anna Melekhina on 21.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startButtonLabel: UIButton!
    
    enum Views {
        case red, yellow, green
    }
    var colorSelected = Views.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        startButtonLabel.layer.cornerRadius = 10
        redView.layer.cornerRadius = 72
        yellowView.layer.cornerRadius = 72
        greenView.layer.cornerRadius = 72
        
        redView.alpha = 0.5
        yellowView.alpha = 0.5
        greenView.alpha = 0.5
        
    }

    @IBAction func startButton(_ sender: UIButton) {
            
        startButtonLabel.setTitle("NEXT", for: .normal)
        colorSwitch()
      
    }
    func colorSwitch() {
        switch colorSelected {
        case .red:
            redView.alpha = 1
            yellowView.alpha = 0.5
            greenView.alpha = 0.5
            colorSelected = .yellow
        case .yellow:
            yellowView.alpha = 1
            redView.alpha = 0.5
            greenView.alpha = 0.5
            colorSelected = .green
        case .green:
            greenView.alpha = 1
            yellowView.alpha = 0.5
            redView.alpha = 0.5
            colorSelected = .red
        }
    }
    
}

