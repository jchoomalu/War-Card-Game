//
//  ContentView.swift
//  War Game
//
//  Created by Jason Hoomalu on 12/17/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                    .imageScale(.large)
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }


                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
            .padding()
        }
    }
    
    func deal () {
        var playerValue = Int.random(in: 2...14)
        var cpuValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerValue)
        cpuCard = "card" + String(cpuValue)
        if (playerValue > cpuValue) {
            playerScore += 1
        }
        else if (cpuValue > playerValue) {
            cpuScore += 1
        }
    }
    
}

#Preview {
    ContentView()
}
