//
//  Guitarist.swift
//  Guitar
//
//  Created by Gabrielle Miller-Messner on 4/13/16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import Cocoa

@objc class Guitarist: NSObject {
    
    let guitar: Guitar = Guitar(frets: [Fret()], strings: [GuitarString()])
    
    @objc func perform(notes: [Note]) {
        for note in notes {
            do {
                try guitar.playNote(note: note)
                
            } catch myError.Broken {
                print("Quick, replace the string!")
                break
            } catch myError.OutOfTune {
                print("Uh oh! Tuning break.")
                break
            } catch {
                print("Oh well, guess it's time to crowd surf!")
                break
            }
        }
    }
}
