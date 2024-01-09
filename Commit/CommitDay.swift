//
//  CommitDay.swift
//  Commit
//
//  Created by 관식 on 1/9/24.
//

import Foundation

struct CommitDay: Identifiable {
    let id = UUID()
    let date: Date
    let commitCount: Int
}
