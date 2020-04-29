//
//  ScavengerHuntViewController.swift
//  It's Your Birthday
//
//  Created by Haden Olfers on 4/26/20.
//  Copyright © 2020 Haden Olfers. All rights reserved.
//

import UIKit

class ScavengerHuntViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradientBackground(colorOne: Color.Purple, colorTwo: Color.Green)
        startingpictures()
        hidepresents()
        BlurEffect.alpha = 0
        FinishedBlurEffect.alpha = 0
        Clue.text = ""
        UnlockIncorrectLabel.text = ""
    }
    var Done = false
    @IBOutlet weak var MainMenuButton: UIButton!
    
    @IBOutlet weak var OneLabel: UILabel!
    @IBOutlet weak var TwoLabel: UILabel!
    @IBOutlet weak var ThreeLabel: UILabel!
    @IBOutlet weak var FourLabel: UILabel!
    @IBOutlet weak var FiveLabel: UILabel!
    @IBOutlet weak var SixLabel: UILabel!
    @IBOutlet weak var SevenLabel: UILabel!
    @IBOutlet weak var EightLabel: UILabel!
    @IBOutlet weak var NineLabel: UILabel!
    @IBOutlet weak var TenLabel: UILabel!
    
    @IBOutlet weak var PresentOne: UIButton!
    @IBOutlet weak var PresentTwo: UIButton!
    @IBOutlet weak var PresentThree: UIButton!
    @IBOutlet weak var PresentFour: UIButton!
    @IBOutlet weak var PresentFive: UIButton!
    @IBOutlet weak var PresentSix: UIButton!
    @IBOutlet weak var PresentSeven: UIButton!
    @IBOutlet weak var PresentEight: UIButton!
    @IBOutlet weak var PresentNine: UIButton!
    @IBOutlet weak var PresentTen: UIButton!
    
    @IBOutlet weak var BlurEffect: UIVisualEffectView!
    @IBOutlet weak var ClueLabel: UILabel!
    @IBOutlet weak var Clue: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var SendButton: UIButton!
    @IBOutlet weak var UnlockIncorrectLabel: UILabel!
    
    @IBOutlet weak var FinishedBlurEffect: UIVisualEffectView!
    @IBOutlet weak var FinishedMainMenuButton: UIButton!
    
    @IBAction func PresentOne(_ sender: Any) {
        PresentOne.setImage(UIImage.init(named: "OpenPresent"), for: .normal)
        BlurEffect.alpha = 1
        TwoLabel.alpha=1
        Clue.text = presents.presentone.givehint()
        PresentTwo.alpha = 1
        UnlockIncorrectLabel.alpha=0
        PresentOne.isEnabled = false
    }
    @IBAction func PresentTwo(_ sender: Any) {
        PresentTwo.setImage(UIImage.init(named: "OpenPresent"), for: .normal)
        BlurEffect.alpha = 1
        ThreeLabel.alpha=1
        Clue.text = presents.presenttwo.givehint()
        PresentThree.alpha = 1
        UnlockIncorrectLabel.alpha=0
        PresentTwo.isEnabled = false
    }
    @IBAction func PresentThree(_ sender: Any) {
        PresentThree.setImage(UIImage.init(named: "OpenPresent"), for: .normal)
        BlurEffect.alpha = 1
        FourLabel.alpha=1
        Clue.text = presents.presentthree.givehint()
        PresentFour.alpha = 1
        UnlockIncorrectLabel.alpha=0
        PresentThree.isEnabled = false
    }
    @IBAction func PresentFour(_ sender: Any) {
        PresentFour.setImage(UIImage.init(named: "OpenPresent"), for: .normal)
        BlurEffect.alpha = 1
        FiveLabel.alpha=1
        Clue.text = presents.presentfour.givehint()
        PresentFive.alpha = 1
        UnlockIncorrectLabel.alpha=0
        PresentFour.isEnabled = false
    }
    @IBAction func PresentFive(_ sender: Any) {
        PresentFive.setImage(UIImage.init(named: "OpenPresent"), for: .normal)
        BlurEffect.alpha = 1
        SixLabel.alpha=1
        Clue.text = presents.presentfive.givehint()
        PresentSix.alpha = 1
        UnlockIncorrectLabel.alpha=0
        PresentFive.isEnabled = false
    }
    @IBAction func PresentSix(_ sender: Any) {
        PresentSix.setImage(UIImage.init(named: "OpenPresent"), for: .normal)
        BlurEffect.alpha = 1
        SevenLabel.alpha=1
        Clue.text = presents.presentsix.givehint()
        PresentSeven.alpha = 1
        UnlockIncorrectLabel.alpha=0
        PresentSix.isEnabled = false
    }
    @IBAction func PresentSeven(_ sender: Any) {
        PresentSeven.setImage(UIImage.init(named: "OpenPresent"), for: .normal)
        BlurEffect.alpha = 1
        EightLabel.alpha=1
        Clue.text = presents.presentseven.givehint()
        PresentEight.alpha = 1
        UnlockIncorrectLabel.alpha=0
        PresentSeven.isEnabled = false
    }
    @IBAction func PresentEight(_ sender: Any) {
        PresentEight.setImage(UIImage.init(named: "OpenPresent"), for: .normal)
        BlurEffect.alpha = 1
        NineLabel.alpha=1
        Clue.text = presents.presenteight.givehint()
        PresentNine.alpha = 1
        UnlockIncorrectLabel.alpha=0
        PresentEight.isEnabled = false
    }
    @IBAction func PresentNine(_ sender: Any) {
        PresentNine.setImage(UIImage.init(named: "OpenPresent"), for: .normal)
        BlurEffect.alpha = 1
        TenLabel.alpha=1
        Clue.text = presents.presentnine.givehint()
        PresentTen.alpha = 1
        UnlockIncorrectLabel.alpha=0
        PresentNine.isEnabled = false
    }
    @IBAction func PresentTen(_ sender: Any) {
        PresentTen.setImage(UIImage.init(named: "OpenPresent"), for: .normal)
        BlurEffect.alpha = 1
        Clue.text = presents.presentten.givehint()
        UnlockIncorrectLabel.alpha=0
        PresentTen.isEnabled = false
        Done = true
    }
    
    @IBAction func SendButton(_ sender: Any) {
        if ThreeLabel.alpha != 1 {
            passwordtextfield(password: .pass2) }
        if FourLabel.alpha != 1 {
            passwordtextfield(password: .pass3) }
        if FiveLabel.alpha != 1 {
            passwordtextfield(password: .pass4) }
        if SixLabel.alpha != 1 {
            passwordtextfield(password: .pass5) }
        if SevenLabel.alpha != 1 {
            passwordtextfield(password: .pass6) }
        if EightLabel.alpha != 1 {
            passwordtextfield(password: .pass7) }
        if NineLabel.alpha != 1 {
            passwordtextfield(password: .pass8) }
        if TenLabel.alpha != 1 {
            passwordtextfield(password: .pass9) }
        if TenLabel.alpha == 1 {
            passwordtextfield(password: .pass10)}
        if TwoLabel.alpha != 1 {
        passwordtextfield(password: .pass1) }
    }

func startingpictures() {
    PresentOne.setImage(UIImage.init(named: "Present"), for: .normal)
    PresentTwo.setImage(UIImage.init(named: "Present"), for: .normal)
    PresentThree.setImage(UIImage.init(named: "Present"), for: .normal)
    PresentFour.setImage(UIImage.init(named: "Present"), for: .normal)
    PresentFive.setImage(UIImage.init(named: "Present"), for: .normal)
    PresentSix.setImage(UIImage.init(named: "Present"), for: .normal)
    PresentSeven.setImage(UIImage.init(named: "Present"), for: .normal)
    PresentEight.setImage(UIImage.init(named: "Present"), for: .normal)
    PresentNine.setImage(UIImage.init(named: "Present"), for: .normal)
    PresentTen.setImage(UIImage.init(named: "Present"), for: .normal)
}

func hidepresents() {
    PresentOne.alpha = 1
    OneLabel.alpha = 1
    
    PresentTwo.alpha = 0
    TwoLabel.alpha = 0
    
    PresentThree.alpha = 0
    ThreeLabel.alpha = 0
    
    PresentFour.alpha = 0
    FourLabel.alpha = 0
    
    PresentFive.alpha = 0
    FiveLabel.alpha = 0
    
    PresentSix.alpha = 0
    SixLabel.alpha = 0
    
    PresentSeven.alpha = 0
    SevenLabel.alpha = 0
    
    PresentEight.alpha = 0
    EightLabel.alpha = 0
    
    PresentNine.alpha = 0
    NineLabel.alpha = 0
    
    PresentTen.alpha = 0
    TenLabel.alpha = 0
}

func buttonborders() {
    FinishedMainMenuButton.layer.cornerRadius = 15
    FinishedMainMenuButton.layer.borderWidth = 1
    FinishedMainMenuButton.layer.borderColor = UIColor.black.cgColor
}

func passwordtextfield(password: passwords) {
    if textField.text?.lowercased() != password.password()?.lowercased() {
        UnlockIncorrectLabel.alpha=1
        UnlockIncorrectLabel.text="Incorrect"
        textField.text=""
        self.view.endEditing(true)
    } else {
        BlurEffect.alpha=0
        UnlockIncorrectLabel.alpha=0
        textField.text=""
        self.view.endEditing(true)
    }
    
    if Done == true {
           FinishedBlurEffect.alpha = 1
       }
}

struct Color {
    static let Purple = UIColor(red: 125.0/255.0, green: 91.0/255.0, blue: 190.0/255.0, alpha: 1.0)
    static let Green = UIColor(red: 91.0/255.0, green: 190.0/255.0, blue: 150.0/255.0, alpha: 1.0)
}

/* var timer = Timer()
 var seconds: Int = 0
 
 func startTimer() {
 timer.invalidate()
 timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
 }
 
 func  stopTimer(){
 timer.invalidate()
 }
 
 @objc func timerAction() {
 seconds += 1
 OneLabel.text = "\(seconds)"
 }*/

enum passwords {
    case pass1,pass2,pass3,pass4,pass5,pass6,pass7,pass8,pass9,pass10
    
    func password() -> String? {
        switch self {
        case .pass1:
            return "".lowercased()
        case .pass2:
            return "Wakeland".lowercased()
        case .pass3:
            return "Fury".lowercased()
        case .pass4:
            return "214".lowercased()
        case .pass5:
            return "3rdGrade".lowercased()
        case .pass6:
            return "Lax".lowercased()
        case .pass7:
            return "2005".lowercased()
        case .pass8:
            return "Apple".lowercased()
        case .pass9:
            return "Happy".lowercased()
        case .pass10:
            return "Birthday".lowercased()
        }
    }
}



enum presents {
    case presentone,presenttwo,presentthree,presentfour,presentfive,presentsix,presentseven,presenteight,presentnine,presentten
    
    func givehint() -> String! {
        switch self {
        case .presentone:
            return "Well well well. Today is your birthday. Time for my revenge!!! Your first gift is hidden in a place you never look. But above it is a place where I always look."
        case .presenttwo:
            return "So I finally gave you the code huh! This gift may be your smallest or your biggest gift you’ll just have to find out! This gift you won’t use in the morning but it is by something dad uses every morning."
        case .presentthree:
            return "This gift will be used a lot by you in your games. So what other games do you play?"
        case .presentfour:
            return "This is something you don’t know exists but you will be glad you have it. I have put this in a spot that you do know exists but you will never suspect. This place is in a room connected to yours."
        case .presentfive:
            return "So this next gift is something you have been using for 7 years! But It is located in something you never zip and have only had for a few months."
        case .presentsix:
            return "This is almost like a double gift and I think you’ll be excited. It is near a place that dad sweats a lot but not to close."
        case .presentseven:
            return "This is a thing you didn’t have on your list but I know that you want it! You have been complaining about not having one. So now you will have to look in a place near a big bed and very close to sparkly gems."
        case .presenteight:
            return "So I see you are ready for your next present. This next thing you will love to have in your hands. Or will it be in your hands? This is located near some entertainment that we always take on road trips."
        case .presentnine:
            return "Since you've been so patient as to wait you are now granted to go to a place of mess near breakable glass."
        case .presentten:
            return "Now this present is located in a rectangle with a view. Good luck and go search."
        }
    }
    
    
}

}
