//
//  PersonnalDetails.swift
//  MacPawTZ
//
//  Created by Sasha Leon on 24.07.2022.
//

import Foundation

struct PersonnalDetails: Decodable {
    let date: String
    let day: Int
    let personnel: Int
    let personnelPlus: String?
    let POW: Int?
}

extension PersonnalDetails {
    enum CodingKeyS: String, CodingKey {
        case date, day, personnel, POW
        case personnelPlus = "personnel*"
    }
}


