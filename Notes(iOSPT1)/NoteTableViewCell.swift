//
//  NoteTableViewCell.swift
//  Notes(iOSPT1)
//
//  Created by Scott Bennett on 4/29/19.
//  Copyright © 2019 Scott Bennett. All rights reserved.
//

import UIKit

protocol NoteTableViewCellDelegate: AnyObject {
    func shareNote(for cell: NoteTableViewCell)
}

class NoteTableViewCell: UITableViewCell {

    @IBOutlet weak var noteText: UILabel!
    
    var note: Note? {
        didSet {
            self.updateViews()
        }
    }
    
    weak var delegate: NoteTableViewCellDelegate?
    
    private func updateViews() {
        guard let note = self.note else { return }
            self.noteText.text = note.text
        
    }
    
    @IBAction func shareButtonTapped(_ sender: UIButton) {
        self.delegate?.shareNote(for: self)
    }
    
    
}
