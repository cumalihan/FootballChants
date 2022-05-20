//
//  Manager.swift
//  FootballChants
//
//  Created by Cumali Han Ünlü on 16.05.2022.
//

import Foundation


enum JobType: String {
    case manager = "Manager"
    case headCoach = "Head Coach"
}
struct Manager {
    let name: String
    let job: JobType
    
}
