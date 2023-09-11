//
//  OnboardingView.swift
//  Fructus
//
//  Created by Jotno on 9/10/23.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTIES
    var fruits : [Fruit] = fruitsData
    
    //MARK: - BODIES
    
    var body: some View {
        TabView{
            
            ForEach(fruits) { item in
                FruitCardView(fruit: item)
            }
            
           // FruitCardView()
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
