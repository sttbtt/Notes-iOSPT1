//
//  NotesDetailViewController.swift
//  Notes(iOSPT1)
//
//  Created by Scott Bennett on 4/30/19.
//  Copyright © 2019 Scott Bennett. All rights reserved.
//

import UIKit

class NotesDetailViewController: UIViewController {

    var note: Note? {
        didSet {
            self.updateViews()
        }
    }
    @IBOutlet weak var noteTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.updateViews()
    }
    
    private func updateViews() {
        guard let note = self.note, isViewLoaded else { return}
        
        noteTextView.text = note.text
        
    }
    

}
