//
//  CenterModifier.swift
//  AfricaApp
//
//  Created by Usha Sai Chintha on 19/09/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
