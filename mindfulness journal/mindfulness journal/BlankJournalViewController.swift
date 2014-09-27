//
//  BlankJournalViewController.swift
//  mindfulness journal
//
//  Created by Ally Sorge on 9/25/14.
//  Copyright (c) 2014 Ally Sorge. All rights reserved.
//

import UIKit

protocol BlankJournalDelegate {
    func newJournalEntry(text: String)
}
class BlankJournalViewController: UIViewController {
    
    var delegate: BlankJournalDelegate!
    
    var newEntry : JournalEntry!
    
    var journalPrompt : String! // blank entry does not have a prompt
    
    var journal : String = ""
    
    @IBOutlet var entryTitle: UILabel!
    
    @IBOutlet var journalText: UITextField!

    @IBAction func doneButtonPressed(sender: AnyObject) {
        delegate!.newJournalEntry(journalText!.text)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.journal = journalText.text

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
