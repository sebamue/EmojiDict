//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Sebastian Muehl on 1/25/17.
//  Copyright © 2017 Sebastian. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = Emoji()
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthyearLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji.stringEmoji
        birthyearLabel.text = "Birth Year: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
