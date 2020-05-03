//
//  MainViewController.swift
//  MyPlaces
//
//  Created by tasya on 30.04.2020.
//  Copyright © 2020 Taisiya V. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = ["Pro Плов", "Дебют", "Галерея", "Veranda",
                           "Белый кролик", "Наши суши", "Гренок", "Дача",
                           "Arigato", "Хочупури", "Urban Food", "Диваня",
                           "Хочу шашлык", "Пират", "Репутация"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        cell.nameLabel.text = restaurantNames[indexPath.row]
        cell.imageOfPlace.image = UIImage(named: restaurantNames[indexPath.row])
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true
        
        return cell
    }
    
    //MARK: - Table view delegat
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
  

}
