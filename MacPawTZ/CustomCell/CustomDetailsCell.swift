//
//  CustomDetailsCell.swift
//  MacPawTZ
//
//  Created by Sasha Leon on 22.07.2022.
//

import UIKit

class CustomDetailsCell: UITableViewCell {
    
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var aircraftLbl: UILabel!
    @IBOutlet weak var helicopterLbl: UILabel!
    @IBOutlet weak var tankLbl: UILabel!
    @IBOutlet weak var apcLbl: UILabel!
    @IBOutlet weak var artielleryLbl: UILabel!
    @IBOutlet weak var mrlLbl: UILabel!
    @IBOutlet weak var militaryAuto: UILabel!
    @IBOutlet weak var fuelTankLbl: UILabel!
    @IBOutlet weak var droneLbl: UILabel!
    @IBOutlet weak var shipLbl: UILabel!
    @IBOutlet weak var antiAircraftLbl: UILabel!
    @IBOutlet weak var specEquipLbl: UILabel!
    @IBOutlet weak var vehiclesLbl: UILabel!
    @IBOutlet weak var cruiseLbl: UILabel!
    @IBOutlet weak var lossDirectLbl: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
