//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Sebastian Muehl on 1/24/17.
//  Copyright © 2017 Sebastian. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Constant holding DefinitionViewController
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley with sunglasses"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😀"
        emoji2.birthYear = 2012
        emoji2.category = "Smiley"
        emoji2.definition = "A big smile"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤘"
        emoji3.birthYear = 2009
        emoji3.category = "Hand"
        emoji3.definition = "Rock & Roll"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🐱"
        emoji4.birthYear = 2013
        emoji4.category = "Animal"
        emoji4.definition = "A mouse"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐧"
        emoji5.birthYear = 2015
        emoji5.category = "Animal"
        emoji5.definition = "Penguin"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🌭"
        emoji6.birthYear = 2016
        emoji6.category = "Food"
        emoji6.definition = "A delicious Hot Dog"
        
        return[emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
    
    
}

