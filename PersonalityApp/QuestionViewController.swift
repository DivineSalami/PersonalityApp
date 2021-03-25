//
//  QuestionViewController.swift
//  PersonalityApp
//
//  Created by P.M. Student on 3/24/21.
//

import UIKit

class QuestionViewController: UIViewController {

    var questions: [Question] = [ Question(text: "Which do you prefer to eat?",
                                           type: .question1,
                                           answers: [Answer (text: "Chicken", type: .snail),
                                                     Answer (text: "Burger", type: .cuttlefish),
                                                     Answer (text: "Apples", type: .octopus),
                                                     Answer (text: "Ramen", type: .kompi)
                                           ]),
                                  Question(text: "What would you rather be?",
                                           type: .question2,
                                            answers: [Answer (text: "A dictator", type: .snail),
                                                     Answer (text: "A benevolent king", type: .cuttlefish),
                                                     Answer (text: "A snail", type: .octopus),
                                                     Answer (text: "Elkay EZH2O Enhanced Wall Mounted Filtered Water Bottle Refilling Station, Light Gray", type: .kompi)
                                           ]),
                                  
                                  Question(text: "Where would you live?",
                                           type: .question3,
                                           answers: [Answer (text: "The abyss(Florida)", type: .snail),
                                                     Answer (text: "England", type: .cuttlefish),
                                                     Answer (text: "Cambodia", type: .octopus),
                                                     Answer (text: "In space", type: .kompi)
                                           ]),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
