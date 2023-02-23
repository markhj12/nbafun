//
//  PlayerListView.swift
//  NBA Player Fun
//
//  Created by Mark Hew on 23/2/23.
//

import SwiftUI

struct PlayerListView: View {
    var body: some View {
        NavigationView{
            List(players) {
                currentPlayer in
                NavigationLink(destination: PlayerDetailsView(player: currentPlayer)){
                    PlayerRowView(player: currentPlayer)
                        .frame(height: 60)
                }
            }
            .navigationBarTitle(Text("NBA Finals Players"))
            
        }
        
    }
}

struct PlayerListView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListView()
    }
}
