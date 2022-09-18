//
//  CreditsView.swift
//  AfricaApp
//
//  Created by Usha Sai Chintha on 19/09/22.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
      Copyright © Usha Sai
      All right reserved
      Better Apps ♡ Less Code
    """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
