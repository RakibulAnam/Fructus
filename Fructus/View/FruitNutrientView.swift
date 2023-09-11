//
//  FruitNutrientView.swift
//  Fructus
//
//  Created by Jotno on 9/10/23.
//

import SwiftUI

struct FruitNutrientView: View {
    
    //MARK: - PROPERTIES
    
    var fruits : Fruit
    let nutrients : [String] = ["Energy", "Sugar", "Fat", "Protien", "Vitamins", "Minerals"]
    
    //MARK: - BODY
    
    var body: some View {
        
        
        
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack{
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruits.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruits.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
        
    
    }
}

struct FruitNutrientView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientView(fruits: fruitsData[0])
            .preferredColorScheme(.dark)
            .frame(width: 375, height: 480)
            .padding()
    }
}
