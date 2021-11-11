//
//  TableCell.swift
//  1145
//
//  Created by Дария Марковская on 11.11.2021.
//

import UIKit

class TableCell: UITableViewCell {
    
    struct Constant {
        static let idCell = "TableCell"
        static let nameNib = "TableCell"
    }

    @IBOutlet private var Label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        Label.textColor = .black
        Label.textAlignment = .center
        Label.backgroundColor = .clear
        self.backgroundColor = .white
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.Label.text = nil
    }
    
    public func setText(text: String) {
        self.Label.text = text
    }

}

