//
//  NewEntryViewController.swift
//  mindfulness journal
//
//  Created by Chris Barker on 9/27/14.
//  Copyright (c) 2014 Ally Sorge. All rights reserved.
//

import UIKit

protocol NewEntryDelegate {
    func newJournalEntry(text: String)
}

class NewEntryViewController: UIViewController {

    
    var delegate: NewEntryDelegate!
    var newEntry : JournalEntry!
    
    func getPrompt() -> String {
        return "";
    }
    
    var journalContents : String = ""
    
    var journalCreationTime : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
