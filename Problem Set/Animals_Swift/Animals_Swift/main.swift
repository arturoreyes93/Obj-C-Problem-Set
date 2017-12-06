//
//  main.swift
//  Animals_Swift
//
//  Created by Gabrielle Miller-Messner on 4/12/16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation

// Initialize some animals
let babe = Pig()
let snoopy = GoldenDoodle()
let templeton = Rat()
let sinatra = Rat()
let cary = Pigeon()

// Initialize my dwellings with some animals
let myFarm = Farm(animals:[babe, snoopy, templeton])
let myApartment = Apartment(animals:[sinatra, cary, snoopy])

// Choose an animal to invoke a method
let randomNumber = Int(arc4random_uniform(3))
let farmAnimal = myFarm.animals[randomNumber] as AnyObject
let cityAnimal = myApartment?.animals![randomNumber]
if let farmAnimal = farmAnimal as? Rat {
    farmAnimal.scurry()
} else if let farmAnimal = farmAnimal as? GoldenDoodle {
    farmAnimal.romp()
} else if let farmAnimal = farmAnimal as? Pig {
    farmAnimal.wallow()
}
if let cityAnimal = cityAnimal as? Pigeon {
    cityAnimal.deliverMessage()
    print("Pigeon delivering message")
} else {
    print("Not a pigeon")
}




