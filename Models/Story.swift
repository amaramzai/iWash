//
//  File.swift
//  
//
//  Created by Amar Amzari on 21/08/23.
//

import Foundation

struct Story: Identifiable {
    let id: UUID = .init()
    var content: [String]
    var imageName: String
    var footer: String?
}
