//
//  EntriesViewController.swift
//  mindfulness journal
//
//  Created by Ally Sorge on 9/25/14.
//  Copyright (c) 2014 Ally Sorge. All rights reserved.
//

import UIKit

// subscribe to blank and journal prompt delegates to update new entries here

struct JournalEntry {
    var journalText : String
    var currDate : String
}

class EntriesTableViewController: UITableViewController, BlankJournalDelegate, JournalPromptDelegate  {

    @IBAction func blankButton(sender: UIBarButtonItem) {
        
    }
    
    @IBAction func promptButton(sender: UIBarButtonItem) {
        
    }
    
    var entries: [JournalEntry] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // self.tableView.delegate = self;
       // self.tableView.dataSource = self;

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func unwindToSegue (segue : UIStoryboardSegue) {
        var source: BlankJournalViewController = segue.sourceViewController as BlankJournalViewController
        var newEntry = source.newEntry
        if newEntry != nil {
            entries.append(newEntry)
            self.reloadInputViews()
        }
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func newJournalEntry(entry: String, prompt: String, date: String) {
        var newEntry = JournalEntry(journalText: entry, currDate: date)
        
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("entry") as? NewJournalCellTableViewCell ?? NewJournalCellTableViewCell()
        var newEntry = self.entries[indexPath.row]
        cell.journalName.text = newEntry.journalText
      
        
        return cell
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
