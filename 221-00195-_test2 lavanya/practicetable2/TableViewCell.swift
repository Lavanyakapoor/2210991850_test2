//
//  TableViewCell.swift
//  practicetable2
//
//  Created by student-2 on 22/11/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
