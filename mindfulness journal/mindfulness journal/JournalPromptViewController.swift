//
//  JournalPromptViewController.swift
//  mindfulness journal
//
//  Created by Ally Sorge on 9/25/14.
//  Copyright (c) 2014 Ally Sorge. All rights reserved.
//

import UIKit

protocol JournalPromptDelegate {}
    


class JournalPromptViewController: UIViewController {
    
    var delegate: JournalPromptDelegate!
    
    var newEntry: JournalEntry!
    
   
    @IBOutlet var journalText: UITextField!
    @IBOutlet var journalPrompt: UILabel!
    @IBOutlet var doneButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if var secondViewController = segue.destinationViewController as? EntriesTableViewController {
            if (sender as? UIButton != self.doneButton) {
                return;
            }
            else {
                newEntry = JournalEntry(journalText: journalText.text, currDate: journalText.text)
            }
        }
        
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
