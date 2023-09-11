//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Jotno on 9/10/23.
//

import SwiftUI

struct FruitHeaderView: View {
    
    //MARK: PROPERTIES
    
    var fruit : Fruit
    
    @State private var isAnimatingImage : Bool = false
    
    //MARK: BODY
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.5), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1 : 0.5)
        
        }
        .onAppear {
            withAnimation(.easeIn(duration: 1)){
                isAnimatingImage = true
            }
        }
        //: ZSTACK
        
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
