//
//  main.swift
//  day3_swift
//
//  Created by MacStudent on 2019-10-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class faculty {
    var facultyID: Int!
    var firstName: String?
    var basicSalary: Int?
    var bonus: Int? = nil
    var finSalary: Int?
    func calcSalary() {
        finSalary = basicSalary! + (bonus ?? 0)
    }
    deinit {
        print("Faculty deinit called")
    }
    func printData() {
        print(finSalary!)
    }
    convenience init(facultyID: Int, facultyName: String){
        self.init(basicSalary: 0, bonus1: 0)
        self.facultyID = facultyID
        self.firstName = facultyName
    }
    init(basicSalary: Int, bonus1: Int) {
        self.basicSalary = basicSalary
        self.bonus = bonus1
    }
}
