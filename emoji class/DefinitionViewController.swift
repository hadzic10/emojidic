//
//  DefinitionViewController.swift
//  emoji class
//
//  Created by Harun  Hadzic on 8/8/18.
//  Copyright © 2018 Harun  Hadzic. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    @IBOutlet weak var DefinitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🤢" {
            DefinitionLabel.text = "Sick mans"
        }
        if emoji == "😎" {
            DefinitionLabel.text = "He's got some shades"
        }
        if emoji == "😘" {
            DefinitionLabel.text = "Blowing Kiss"
        }
        if emoji == "🙂" {
            DefinitionLabel.text = "Smile Face"
        }
        if emoji == "🤥" {
            DefinitionLabel.text = "He lies"
        }
        if emoji == "🤩" {
            DefinitionLabel.text = "Stars"
        }
        if emoji == "💩" {
            DefinitionLabel.text = "Savy"
        }
        if emoji == "👳🏻‍♂️" {
            DefinitionLabel.text = "Towel Head"
        }
        if emoji == "⛄️" {
            DefinitionLabel.text = "Snowman"
        }
        if emoji == "🤓" {
            DefinitionLabel.text = "Nerdy Smile"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
