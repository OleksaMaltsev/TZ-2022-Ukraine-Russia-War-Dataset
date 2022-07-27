//
//  EquipmentViewController.swift
//  MacPawTZ
//
//  Created by Sasha Leon on 22.07.2022.
//

import UIKit

class EquipmentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var detailsTableView: UITableView!
    

    var equipment = [EquipmentDetails]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        downloadJSON {
            self.detailsTableView.reloadData()
            print("success")
        }
        
        detailsTableView.delegate = self
        detailsTableView.dataSource = self
        
        detailsTableView.allowsSelection = false
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 480
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return equipment.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        let cell = detailsTableView.dequeueReusableCell(withIdentifier: "moreDetails") as! CustomDetailsCell
        let details = equipment[indexPath.row]
        cell.dateLbl.text = details.date
        cell.dayLbl.text = ("Днів з почтку війни: \(String(describing: details.day))")
        cell.aircraftLbl.text = ("Літаків: \(String(details.aircraft))")
        cell.helicopterLbl.text = ("Гелікоптерів: \(String(details.helicopter))")
        cell.tankLbl.text = ("Танків: \(String(details.tank))")
        cell.apcLbl.text = ("Бойових броньованих машин: \(String(details.APC))")
        cell.artielleryLbl.text = ("Артилерійських систем: \(String(details.fieldArtillery))")
        cell.mrlLbl.text = ("РСЗВ: \(String(details.MRL))")
        cell.militaryAuto.text = ("Військових автомобілів: \(details.militaryauto ?? 0)")
        cell.fuelTankLbl.text = ("Бензовози: \(details.fuelTank ?? 0)")
        cell.droneLbl.text = ("БпЛА: \(String(details.drone))")
        cell.shipLbl.text = ("Кораблів та катерів: \(String(details.navalShip))")
        cell.antiAircraftLbl.text = ("Засобів ППО: \(String(details.antiAircraftWarfare))")
        cell.specEquipLbl.text = ("Спеціальної техніки: \(details.specialEquipment ?? 0)")
        cell.vehiclesLbl.text = ("Військових авто та цистерн: \(details.vehiclesAndFuel ?? 0)")
        cell.cruiseLbl.text = ("Крилатих ракет: \(details.cruiseMissiles ?? 0)")
        cell.lossDirectLbl.text = ("Напрям найбільших втрат: \(details.greatestLossesDirection ?? "дані відсутні")")
        

        return cell
    }

    func downloadJSON(completed: @escaping () -> ()) {
        let url = URL(string: "https://raw.githubusercontent.com/MacPaw/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_equipment.json")
        
        
        URLSession.shared.dataTask(with: url!) { data, response, err in
            
            if err == nil {
                do {
                    self.equipment = try JSONDecoder().decode([EquipmentDetails].self, from: data!)
                    DispatchQueue.main.async {
                        completed()
                    }
                } catch {
                    print("error from api \(String(describing: err))")
                }
               

            }
        }.resume()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
