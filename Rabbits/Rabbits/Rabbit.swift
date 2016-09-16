//
//  Rabbit.swift
//  Rabbits
//
//  Created by Christopher Webb-Orenstein on 9/16/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

import UIKit

struct Rabbit {
    let name: String
    let age: String
    var rabbitPic: UIImage?
    
    init(name:String, age:String, image:UIImage?) {
        self.name = name
        self.age = age
        self.rabbitPic = image
    }
}
