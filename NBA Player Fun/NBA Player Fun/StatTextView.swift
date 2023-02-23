//
//  StatTextView.swift
//  NBA Player Fun
//
//  Created by Mark Hew on 23/2/23.
//

import SwiftUI

struct StatTextView: View {
    var statName: String
    var statValue: String
    var body: some View {
        HStack {
            Text("\(statName):")
                .padding(.leading, 30)
                .fontWeight(.bold)
                .font(.system(size: 45))
            Text("\(statValue)")
                .padding(.trailing, 30)
                .font(.system(size: 45))
                .fontWeight(.light)
            Spacer()
        }
    }
}

struct StatTextView_Previews: PreviewProvider {
    static var previews: some View {
        StatTextView(statName: "Age", statValue: "31")
    }
}
