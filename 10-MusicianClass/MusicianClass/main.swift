//
//  main.swift
//  MusicianClass
//
//  Created by Nilsu Aksoy on 3.05.2024.
//

import Foundation

let james = Musicians(nameInit: "James", ageInit: 50, instrumentInit: "Guitar", typeInit: .Vocalist)

print(james.age)
print(james.type)

james.sing()

let kirk = SuperMusician(nameInit: "Kirk", ageInit: 55, instrumentInit: "Guitar", typeInit: .LeadGuitar)
kirk.sing()
//kirk.sing2()
