//
//  ContentView.swift
//  QuoteMuse
//
//  Created by Jatin Sharma on 05/09/24.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]

    @State private var selected = "Archery"
    @State private var id = 1
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    
    var body: some View {
        VStack {
            Text("QuoteMuse")
                .font(.largeTitle.bold())
            
            Spacer()
            
            VStack {
                Rectangle()
                    .fill(colors.randomElement() ?? .blue)
                    .frame(width: 340, height: 460)
                    .cornerRadius(40)
                    .padding()
                    .overlay(
                            Text("\(selected)")
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                        )
                    
                Text("\(selected)!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            .transition(.slide)
            .id(id)
            
            Spacer()
            
            Button("Try Again") {
                withAnimation(.easeOut(duration: 1)) {
                    selected = activities.randomElement() ?? "Archery"
                    id += 1
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
