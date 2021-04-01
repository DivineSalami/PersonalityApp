//
//  ResultsViewController.swift
//  PersonalityApp
//
//  Created by P.M. Student on 3/24/21.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var ResultsLabel: UILabel!
    @IBOutlet weak var DefinitionLabel: UILabel!
    var responses: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
calculatePersonalityResult()
        
        navigationItem.hidesBackButton = true
    
    }
    
    func calculatePersonalityResult() {
        var frequencyOfAnswer: [CharacterType: Int] = [:]
        let responseTypes = responses.map{ $0.type }
        
        for response in responseTypes {
            frequencyOfAnswer[response] = (frequencyOfAnswer [response] ?? 0) + 1
        }
        
        let frequentAnswersSorted = frequencyOfAnswer.sorted(by: {(pair1, pair2) -> Bool in
            return pair1.value > pair2.value
        })
        let mostCommonAnswer = frequentAnswersSorted.first!.key
            
        ResultsLabel.text = "you are a \(mostCommonAnswer.rawValue)!"
        DefinitionLabel.text = mostCommonAnswer.definition
        
    }
    

    

}
