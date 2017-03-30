//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by user120718 on 3/26/17.
//  Copyright © 2017 Aviaf Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //var dictionary : Array
    
    @IBOutlet weak var mainTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainTableView.dataSource = self
        mainTableView.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.name
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
                emoji1.name = "😎"
        emoji1.category = "smileys"
        emoji1.description = "I is cool!"
        emoji1.year = "1992"
        emoji1.stringname = "Cool guy"
        
        let emoji2 = Emoji()
        emoji2.name = "💩"
        emoji2.category = "smileys"
        emoji2.description = "I is poo!"
        emoji2.year = "1998"
        emoji2.stringname = "Poo face"
        
        let emoji3 = Emoji()
        emoji3.name = "🐹"
        emoji3.category = "animals"
        emoji3.description = "I is cool!"
        emoji3.year = "1992"
        emoji3.stringname = "hamster"
        
        let emoji4 = Emoji()
        emoji4.name = "🐼"
        emoji4.category = "animals"
        emoji4.description = "I is poo!"
        emoji4.year = "1998"
        emoji4.stringname = "panda"
        
        return [emoji1, emoji2, emoji3, emoji4]
        
        
    }

}

