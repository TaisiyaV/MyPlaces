//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by tasya on 16.05.2020.
//  Copyright © 2020 Taisiya V. All rights reserved.
//

import RealmSwift

class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    
    
    let restaurantNames = ["Pro Плов", "Дебют", "Галерея", "Veranda",
                           "Белый кролик", "Наши суши", "Гренок", "Дача",
                           "Arigato", "Хочупури", "Urban Food", "Диваня",
                           "Хочу шашлык", "Пират", "Репутация"]
    
    func savePlaces() {
        
        
        for place in restaurantNames {
            
            let image = UIImage(named: place)
            guard let imageData = image?.pngData() else { return }
            
            let newPlace = Place()
            
            newPlace.name = place
            newPlace.location = "Tambov"
            newPlace.type = "Restaurant"
            newPlace.imageData = imageData
            
            StorageManager.saveObject(newPlace)
        }
    }
        
    
    
}
