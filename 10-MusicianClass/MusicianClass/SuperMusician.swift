//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by Nilsu Aksoy on 3.05.2024.
//

import Foundation


class SuperMusician: Musicians {
    
    func sing2() {
        print("Enter night")
    }
    
    override func sing() {
        super.sing()
        print("exit light")
    }
    
    
}


