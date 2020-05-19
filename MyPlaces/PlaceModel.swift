//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by tasya on 16.05.2020.
//  Copyright © 2020 Taisiya V. All rights reserved.
//

import UIKit

struct Place {
    
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
    
    static let restaurantNames = ["Pro Плов", "Дебют", "Галерея", "Veranda",
                           "Белый кролик", "Наши суши", "Гренок", "Дача",
                           "Arigato", "Хочупури", "Urban Food", "Диваня",
                           "Хочу шашлык", "Пират", "Репутация"]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Тамбов", type: "Ресторан", image: nil, restaurantImage: place))
        }
        
        return places
    }
        
    
    
}
