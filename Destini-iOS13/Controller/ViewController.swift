//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    
    var storyBrain = StoryBrain()
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        //Check answer
        let userAnswer = sender.currentTitle
        
        storyBrain.checkAnswer(userAnswer: userAnswer!)
        
        updateUI()
        
    }
   
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        firstButton.setTitle(storyBrain.getButtonChoice1(), for: .normal)
        secondButton.setTitle(storyBrain.getButtonChoice2(), for: .normal)
    }
}

