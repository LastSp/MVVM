//
//  ViewModel.swift
//  MVVM
//
//  Created by Андрей Колесников on 29.08.2021.
//

import Foundation

protocol TableViewData {
    var numberOfRows: Int { get }
    var profiles: [Profile] { get }
}

class ViewModel: TableViewData {
    var numberOfRows: Int {
        return profiles.count
    }
    
    var profiles: [Profile] = [
        Profile(name: "Andrew", secondName: "Kolesnikov", age: 19),
        Profile(name: "Danya", secondName: "Goncharov", age: 20),
        Profile(name: "Sergey", secondName: "Ilin", age: 18)
    ]
    
    
    private var profile = Profile(name: "Andrew", secondName: "Kolesnikov", age: 18)
    
    var name: String {
        return profile.name
    }
    
    var secondName: String {
        return profile.secondName
    }
    
    var age: String {
        return String(describing: profile.age)
    }
    
}

