//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by user120718 on 3/26/17.
//  Copyright © 2017 Aviaf Apps. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = Emoji()
    
    
    @IBOutlet weak var largeEmoji: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var birthyearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!

    override func viewDidLoad() {
               super.viewDidLoad()

        largeEmoji.text = emoji.name
        birthyearLabel.text = "Birthyear: \(emoji.year)"
        categoryLabel.text = "Category: \(emoji.category)"
        emojiLabel.text = emoji.stringname
        

        
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
