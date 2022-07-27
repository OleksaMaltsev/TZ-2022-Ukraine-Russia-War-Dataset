//
//  ViewController.swift
//  MacPawTZ
//
//  Created by Sasha Leon on 20.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var categoriesView: UITableView!
    
    let categories = ["Металобрухт", "Хороші рускі"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesView.delegate = self
        categoriesView.dataSource = self
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = categoriesView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        let category = categories[indexPath.row]
        cell.avatarImg.image = UIImage(named: category)
        cell.nameLabel.text = category


        return cell
    }


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath == [0, 0] {
            performSegue(withIdentifier: "equipmentView", sender: self)
        } else if indexPath == [0, 1] {
            performSegue(withIdentifier: "personnelView", sender: self)
        }
    }
}
