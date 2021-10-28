//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var stories = Stories();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @objc func updateUI(){
        //we get the question and set it to the text label
        storyLabel.text = stories.getStoryTitle();
        
        choice1Button.setTitle(stories.getStoryChoice1(), for: .normal)
        choice2Button.setTitle(stories.getStoryChoice2(), for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        //next step of story

        let userChoice = sender.currentTitle!;
        stories.checkAnswer(userAnswer: userChoice)
        
        updateUI()
    }

}

