//
//  ContentView.swift
//  testing
//
//  Created by Laura Antunez on 4/22/24.
//

import SwiftUI

struct ContentView: View {
    var activites = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing","Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple]
    @State private var selected = "Basketball"
    @State private var id = 1
    
    
    
    var body: some View {
    VStack {
        Text("Why not try...")
            .font(.largeTitle.bold())
        
        VStack {
            
            Circle()
                .fill(colors.randomElement() ?? .blue)
                .padding()
                .overlay(
                    Image(systemName: "figure.\(selected.lowercased())")
                        .font(.system(size: 144))
                        .foregroundColor(.white)
                )
            Text("\(selected)!")
                .font(.title)
            }
        .transition(.slide)
        .id(id)
        
        Spacer()
        Button("Try again") {
            withAnimation(.easeInOut(duration: 1)){
            selected = activites.randomElement() ?? "Archery"
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
