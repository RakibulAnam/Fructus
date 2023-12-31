//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Jotno on 9/10/23.
//

import SwiftUI

struct FruitDetailView: View {
    
    //MARK: PROPERTIES
    
    var fruit : Fruit
    
    //MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment : .leading, spacing: 20) {
                    // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                    // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                    // NUTRIENTS
                        
                        FruitNutrientView(fruits: fruit)
                    
                    // SUBHEADLINE
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                    // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                    
                    // LINK
                        
                        SourceLInkView()
                        
                    }//: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)

                //: VSTACK
            }
            .edgesIgnoringSafeArea(.top)
            //: SCROLL
        }
        .navigationViewStyle(StackNavigationViewStyle())
        //: NAVIGATION
    }
}

//MARK: PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
