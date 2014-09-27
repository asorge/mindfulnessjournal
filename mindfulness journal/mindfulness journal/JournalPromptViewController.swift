//
//  JournalPromptViewController.swift
//  mindfulness journal
//
//  Created by Ally Sorge on 9/25/14.
//  Copyright (c) 2014 Ally Sorge. All rights reserved.
//

import UIKit

class JournalPromptViewController: NewEntryViewController {
   
    @IBOutlet var journalText: UITextField!
    @IBOutlet var journalPrompt: UILabel!
    @IBOutlet var doneButton: UIButton!
    
    @IBAction func doneButtonPressed(sender: AnyObject) {
        delegate!.newJournalEntry(journalText!.text)
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}
