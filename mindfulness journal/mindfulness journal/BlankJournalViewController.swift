//
//  BlankJournalViewController.swift
//  mindfulness journal
//
//  Created by Ally Sorge on 9/25/14.
//  Copyright (c) 2014 Ally Sorge. All rights reserved.
//

import UIKit

protocol BlankJournalDelegate {
    
}
class BlankJournalViewController: UIViewController {
    
    var delegate: BlankJournalDelegate!
    
    var newEntry : JournalEntry!
    
    var journalPrompt : String! // blank entry does not have a prompt
    
    var journal : String = ""
    
    @IBOutlet var entryTitle: UILabel!
    
    @IBOutlet var journalText: UITextField!

    @IBOutlet var doneButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.journal = journalText.text

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
              
                newEntry = JournalEntry(journalText: journalText.text, currDate: entryTitle.text!)
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
