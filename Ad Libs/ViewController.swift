//
//  ViewController.swift
//  Ad Libs
//
//  Created by MjB on 6/7/15.
//  Copyright (c) 2015 MonsterMedia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var pastTenseVerb: UITextField!
    @IBOutlet weak var singularNoun: UITextField!
    @IBOutlet weak var pluralNoun: UITextField!
    @IBOutlet weak var phrase: UITextField!
    @IBOutlet weak var place: UISegmentedControl!
    @IBOutlet weak var sliderNumber: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var generatedAdLib: UITextView!
    
    var pastTenseVerbArray = ["chilled", "hanging out", "rode out", "whippin"]
    var singularNounArray = ["city", "town", "area", "local"]
    var pluralNounArray = ["diamonds", "jewels", "rims"]
    var phraseArray = ["holla at me later", "hop in the ride", "see you on the flip side"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderNumber.text = ""
        generatedAdLib.text = ""
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func slider(sender: UISlider) {
        
        sliderNumber.text = "\(Int(slider.value))"
        println(slider.value)
        
        
    }
 
    @IBAction func generateAdLib(sender: UIButton) {
        
        var placeString = ""
        
        if place.selectedSegmentIndex == 0 {
            placeString = "mall"
        }
        else if place.selectedSegmentIndex == 1 {
            placeString = "club"
        }
        else {
            placeString = "barbershop"
        }
            println(placeString)
        
        generatedAdLib.text = "Peep it, \(pastTenseVerb.text)' out with my partner, 'bout to hit the \(singularNoun.text) \(placeString). As we made it in, a group of \(sliderNumber.text!) chicks walked by. Told me they like they way my \(pluralNoun.text) shine. I looked em in they face and said \(phrase.text)."
        
        }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
 
    @IBAction func randomizePastTenseVerb(sender: UIButton) {
      
        
        let randomText = Int(arc4random_uniform(UInt32(pastTenseVerbArray.count)))
        pastTenseVerb.text = "\(pastTenseVerbArray[randomText])"

      
    }
    
    @IBAction func randomizeSingularNoun(sender: UIButton) {
        
        let randomText = Int(arc4random_uniform(UInt32(singularNounArray.count)))
        singularNoun.text = "\(singularNounArray[randomText])"
    }
    
    
    @IBAction func randomizePluralNoun(sender: UIButton) {
        
        let randomText = Int(arc4random_uniform(UInt32(pluralNounArray.count)))
        pluralNoun.text = "\(pluralNounArray[randomText])"
    }
    
    @IBAction func randomizePhrase(sender: UIButton) {
        
        let randomText = Int(arc4random_uniform(UInt32(phraseArray.count)))
        phrase.text = "\(phraseArray[randomText])"
    }
    
    

}

