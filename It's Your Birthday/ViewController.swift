//
//  ViewController.swift
//  It's Your Birthday
//
//  Created by Haden Olfers on 4/26/20.
//  Copyright © 2020 Haden Olfers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradientBackground(colorOne: Color.Purple, colorTwo: Color.Green)
        startbuttonborder()
    }
    @IBOutlet weak var StartButton: UIButton!
    @IBOutlet weak var HappyBirthdayLabel: UILabel!
    @IBOutlet weak var PresentImage: UIImageView!
    
    func startbuttonborder() {
        StartButton.layer.cornerRadius = 15
        StartButton.layer.borderWidth = 1
        StartButton.layer.borderColor = UIColor.black.cgColor
    }
    
    struct Color {
            static let Purple = UIColor(red: 125.0/255.0, green: 91.0/255.0, blue: 190.0/255.0, alpha: 1.0)
            static let Green = UIColor(red: 91.0/255.0, green: 190.0/255.0, blue: 150.0/255.0, alpha: 1.0)
        }
    }

    extension UIView {
        func setGradientBackground(colorOne: UIColor, colorTwo: UIColor) {
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = bounds
            gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
            gradientLayer.locations = [0.0,1.0]
            gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
            gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
            
            layer.insertSublayer(gradientLayer, at: 0)
        }
        
    }




