//
//  CustomPersonnelCell.swift
//  MacPawTZ
//
//  Created by Sasha Leon on 24.07.2022.
//

import UIKit

class CustomPersonnelCell: UITableViewCell {
    
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var personnelLbl: UILabel!
    @IBOutlet weak var personnelPlusLbl: UILabel!
    @IBOutlet weak var powLbl: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
