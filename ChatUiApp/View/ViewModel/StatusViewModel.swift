//
//  StatusViewModel.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 13.04.2024.
//

import Foundation
enum StatusViewModel: Int, CaseIterable {
    
    case notConfigured
    case available
    case busy
    case school
    case movies
    case work
    case batteryLow
    case meeting
    case gym
    case sleeping
    case urgentCallsOnly
    
    var title: String {
        switch self {
        case .notConfigured: return "Click here to update your status"
        case .available: return "Available"
        case .busy: return "Busy"
        case .school: return " At School"
        case .movies: return "At the movies"
        case .work: return "At work"
        case .batteryLow: return "battery about to die"
        case .meeting: return "In a meeting"
        case .gym: return "At the gym"
        case .sleeping: return "Sleeping"
        case .urgentCallsOnly: return "Urgent calls only"
        }
    }
}
