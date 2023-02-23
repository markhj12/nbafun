//
//  RowView.swift
//  NBA Player Fun
//
//  Created by Mark Hew on 23/2/23.
//

import SwiftUI

struct PlayerRowView: View {
    var player: Player
    
    var body: some View {
        HStack{
            Image(player.imageName).resizable()
                .scaledToFit().clipShape(Circle())
                .background(Circle().foregroundColor(player.team.color)).overlay(Circle().stroke(Color.white, lineWidth: 4))
            Text(player.name)
                .font(.largeTitle)
            Spacer()
        
        }//HStack
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRowView(player: players[1])
            .previewLayout(.fixed(width: 500, height: 100))
    }
}
