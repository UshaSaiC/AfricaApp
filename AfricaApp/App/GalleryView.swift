//
//  GalleryView.swift
//  AfricaApp
//
//  Created by Usha Sai Chintha on 18/09/22.
//

import SwiftUI

struct GalleryView: View {
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    // Grid id made of 3 things : Data, Grid items array and lazyvgrid or lazyhgrid that brings data and layout together
    // 1. Simple Grid
     let gridLayout: [GridItem] = [
         GridItem(.flexible()),
         GridItem(.flexible()),
         GridItem(.flexible())
     ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                ForEach(animals) { item in
                    Image(item.image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 1))
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
