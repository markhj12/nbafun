//
//  ContentView.swift
//  NBA Player Fun
//
//  Created by Mark Hew on 23/2/23.
//

import SwiftUI

struct PlayerDetailsView: View {
    var player: Player

    var body: some View {
        VStack {
            Image(player.team.imageName).resizable().scaledToFit()
            
            Image(player.imageName)
                .clipShape(Circle())
                .background(Circle().foregroundColor(Color.white)).overlay(Circle().stroke(Color.white, lineWidth: 4))
                .offset(x:0, y:-90)
                .padding(.bottom, -90)
                .shadow(radius: 15)
            
            
            Text(player.name)
                .font(.system(size: 50))
                .fontWeight(.heavy)
            StatTextView(statName: "Age", statValue: "\(player.age)")
            StatTextView(statName: "Height", statValue: player.height)
            StatTextView(statName: "Weight", statValue: "\(player.weight.description)lbs")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetailsView(player: players[0])

    }
}
