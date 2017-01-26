//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Sebastian Muehl on 1/25/17.
//  Copyright © 2017 Sebastian. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "No EMOJI"
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "😎" {
                definitionLabel.text = "A smiley with sunglasses"
        }
        if emoji == "😀" {
            definitionLabel.text = "A bright smile"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
