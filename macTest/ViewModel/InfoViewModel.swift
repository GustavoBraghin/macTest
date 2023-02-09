//
//  InfoViewModel.swift
//  macTest
//
//  Created by Gustavo da Silva Braghin on 09/02/23.
//

import Foundation

class InfoViewModel {
    let infoModel: InfoModel
    
    init(infoModel: InfoModel) {
        self.infoModel = infoModel
    }
    
    func printInfo() {
        print("Title is \(infoModel.title) and text is \(infoModel.text)")
    }
}
