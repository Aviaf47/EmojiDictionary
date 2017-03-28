//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by user120718 on 3/26/17.
//  Copyright © 2017 Aviaf Apps. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "No Emoji"
    
    @IBOutlet weak var largeEmoji: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        largeEmoji.text = emoji
        
        if emoji == "🐹"{
            emojiLabel.text = "A cute hamster!"
        
    }
        if emoji == "🐹"{
            emojiLabel.text = "A cute hamster!"
            
        }
        if emoji == "🐹"{
            emojiLabel.text = "A cute hamster!"
            
        }

        
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
