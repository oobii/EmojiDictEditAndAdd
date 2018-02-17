//
//  AddCellViewController.swift
//  EmojiDictionary
//
//  Created by martynov on 2018-02-17.
//  Copyright © 2018 martynov. All rights reserved.
//

import UIKit

class AddCellViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let addEmoji = Emoji(symbol: "🏀", name: "Basketball", description: "Sport", usage: "None")
        if let destination = segue.destination as? EmojiTableViewController {
            
            destination.emojis.append(addEmoji)
        }
        
        
    }


}
