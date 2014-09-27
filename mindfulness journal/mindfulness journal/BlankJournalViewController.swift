//
//  BlankJournalViewController.swift
//  mindfulness journal
//
//  Created by Ally Sorge on 9/25/14.
//  Copyright (c) 2014 Ally Sorge. All rights reserved.
//

import UIKit

class BlankJournalViewController: NewEntryViewController {
    
    @IBOutlet var entryTitle: UILabel!
    
    @IBOutlet var journalText: UITextField!

    @IBAction func doneButtonPressed(sender: AnyObject) {
        delegate!.newJournalEntry(journalText!.text, creationTime: self.journalCreationTime)
        self.navigationController?.popViewControllerAnimated(true)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.journalContents = journalText.text
    }
}
