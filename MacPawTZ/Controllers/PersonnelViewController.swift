//
//  PersonnelViewController.swift
//  MacPawTZ
//
//  Created by Sasha Leon on 24.07.2022.
//

import UIKit

class PersonnelViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var personnelViewTable: UITableView!
    
    
    var personnel = [PersonnalDetails]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        downloadJSON {
            self.personnelViewTable.reloadData()
            print("success")
        }
        
        personnelViewTable.delegate = self
        personnelViewTable.dataSource = self
        
        personnelViewTable.allowsSelection = false
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170 
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personnel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = personnelViewTable.dequeueReusableCell(withIdentifier: "moreDetailsPersonnel") as! CustomPersonnelCell
        let details = personnel[indexPath.row]
        cell.dateLbl.text = details.date
        cell.dayLbl.text = ("Днів з почтку війни: \(details.day)")
        cell.personnelLbl.text = ("Хороші рускі: \(details.personnel)")
        cell.personnelPlusLbl.text = ("Детально: \(details.personnelPlus ?? "дані відсутні")")
        cell.powLbl.text = ("Військовополонених: \(details.POW ?? 496)")
        

        return cell
    }

    func downloadJSON(completed: @escaping () -> ()) {
        let url = URL(string: "https://raw.githubusercontent.com/MacPaw/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_personnel.json")
        
        
        URLSession.shared.dataTask(with: url!) { data, response, err in
            
            if err == nil {
                do {
                    self.personnel = try JSONDecoder().decode([PersonnalDetails].self, from: data!)
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
