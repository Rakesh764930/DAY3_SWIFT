//
//  StudentStructure.swift
//  day3_swift
//
//  Created by MacStudent on 2019-10-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
struct Student {
    var studentID: Int
    var studentName: String
    var marks:[String : Float]
    var percentage: Float
    var total: Float
    var result: String
    init(){
        self.studentID = 0
        self.studentName = String()
        self.marks = [:]
        self.total = 0.0
        self.percentage = 0.0
        self.result = "Unknown"
    }
    init(studentID: Int, studentName: String, marks:[String:Float]){
        self.studentID = studentID
        self.studentName = studentName
        self.marks = marks
        self.total = 0.0
        self.percentage = 0.0
        self.result = "Unknown"
    }
    mutating func calculateTotal() {
        self.total = 0
        for m in self.marks{
            total += m.value
        }
    }
    func printD(){
        print(studentName)
        print(total)
    }
}




