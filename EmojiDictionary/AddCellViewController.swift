//
//  AddCellViewController.swift
//  EmojiDictionary
//
//  Created by martynov on 2018-02-17.
//  Copyright © 2018 martynov. All rights reserved.
//

import UIKit

class AddCellViewController: UIViewController {
    
    var copyEmojiList: [Emoji]? = nil
    
    @IBOutlet weak var addCellName: UITextField!
    
    @IBOutlet weak var addCellDescription: UITextField!
    
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
        
        if let destination = segue.destination as? EmojiTableViewController {
            
            
            if let name = addCellName.text, let description = addCellDescription.text  {
                let emojiSymbols = EmojiAll().emojis
                let indx = arc4random_uniform(UInt32(emojiSymbols.count) - 1 )
                copyEmojiList?.append(Emoji(symbol: emojiSymbols[Int(indx)], name: name, description: description, usage: "None"))
                destination.emojis = copyEmojiList!
                
            }
        }
        
        
    }
    
    
}
