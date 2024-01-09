//
//  ContentView.swift
//  Commit
//
//  Created by 관식 on 1/9/24.
//

import SwiftUI

struct CommitsView: View {
    var body: some View {
        
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        
        VStack(alignment: .leading) {
            Text("commits")
                .font(.system(size: 72, weight: .thin))
            LazyVGrid(columns: columns) {
                ForEach(0..<28, id: \.self) { index in
                    Circle()
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    CommitsView()
}
