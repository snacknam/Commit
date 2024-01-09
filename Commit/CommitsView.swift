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
        
        ZStack {
            Color(.background)
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading, spacing: 32) {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading, spacing: 0) {
                            Text("9 January")
                                .font(.system(size: 24, weight: .light))
                                .foregroundStyle(Color(.gray0))
                            Text("commits")
                                .font(.system(size: 64, weight: .thin))
                                .frame(height: 56)
                        }
                        Spacer()
                        Image("profile")
                            .resizable()
                            .frame(width: 64, height: 64)
                            .clipShape(Circle())
                    }
                    LazyVGrid(columns: columns) {
                        ForEach(0..<49, id: \.self) { index in
                            RoundedRectangle(cornerRadius: 16)
                                .frame(width: 48, height: 48)
                                .foregroundStyle(Color.randomCommitColor())
                        }
                    }
                    Spacer()
                }
                .padding(.horizontal, 8)
                .padding(.top, 16)
            }
            .scrollIndicators(.hidden)
        }
    }
}

extension Color {
    static let commitColors = [
        Color("commit0"),
        Color("commit1"),
        Color("commit2"),
        Color("commit3"),
        Color("commit4")
    ]
    
    static func randomCommitColor() -> Color {
        commitColors.randomElement() ?? .gray
    }
}

#Preview {
    CommitsView()
}
