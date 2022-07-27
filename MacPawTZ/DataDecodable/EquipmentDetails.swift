//
//  equipmentDetails.swift
//  MacPawTZ
//
//  Created by Sasha Leon on 22.07.2022.
//

import Foundation


struct EquipmentDetails: Decodable {
    
    let date: String
    var day: String?
    let aircraft: Int
    let helicopter: Int
    let tank: Int
    let APC: Int
    let fieldArtillery: Int
    let MRL: Int
    let militaryauto: Int?
    let fuelTank: Int?
    let drone: Int
    let navalShip: Int
    let antiAircraftWarfare: Int
    let specialEquipment: Int?
    let vehiclesAndFuel: Int?
    let cruiseMissiles: Int?
    let greatestLossesDirection: String?
}

extension EquipmentDetails {
    enum CodingKeys: String, CodingKey {
        case date, aircraft, helicopter, tank, APC, MRL, drone
        case fieldArtillery = "field artillery"
        case navalShip = "naval ship"
        case antiAircraftWarfare = "anti-aircraft warfare"
        case fuelTank = "fuel tank"
        case militaryauto = "military auto"
        case specialEquipment = "special equipment"
        case vehiclesAndFuel = "vehicles and fuel tanks"
        case cruiseMissiles = "cruise missiles"
        case greatestLossesDirection = "greatest losses direction"
    }
}
