//
//  CommitsViewModel.swift
//  Commit
//
//  Created by 관식 on 1/9/24.
//

import SwiftUI

class CommitsViewModel: ObservableObject {
    @Published var commits: [Commit] = []
}
