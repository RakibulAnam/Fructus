//
//  FruitRowView.swift
//  Fructus
//
//  Created by Jotno on 9/10/23.
//

import SwiftUI

struct FruitRowView: View {
    
    //MARK: - PROPERTIES
    
    var fruit : Fruit
    
    //MARK: - BODY
    var body: some View {
        HStack{
            Image(fruit.image)
                .renderingMode(.original) // will prevent the image to be colorized when added to a list with link color
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5){
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
            
        }//: - HSTACK
    }
}

//MARK: - PREVIEW
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
