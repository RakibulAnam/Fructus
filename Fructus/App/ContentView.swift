//
//  ContentView.swift
//  Fructus
//
//  Created by Jotno on 9/10/23.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    
    var fruits : [Fruit] = fruitsData
    
    @State private var isShowingSettings : Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                   
                }
            }
            .padding(.leading, -25.0)
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action:{
                        isShowingSettings = true
                    
                    }){
                        Image(systemName: "slider.horizontal.3")
                    }//:Button
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingsView()
                    })
            )
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        //: NAVIGATION
    }
}
//MARK: - PREVEIW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
