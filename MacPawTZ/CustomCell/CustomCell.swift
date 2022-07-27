//
//  CustomCell.swift
//  MacPawTZ
//
//  Created by Sasha Leon on 21.07.2022.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var categoriesView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatarImg: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
