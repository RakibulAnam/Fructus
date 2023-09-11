//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Jotno on 9/11/23.
//

import SwiftUI

struct SettingsRowView: View {
    
    //MARK: - PROPERTIES
    
    var name : String
    var content : String? = nil
    var linkLabel : String? = nil
    var linkDestination : String? = nil
    
    
    //MARK: - BODY
    var body: some View {
        VStack {
            
            Divider().padding(.vertical, 4)
            
            HStack{
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                }
                else if (linkLabel != nil && linkDestination != nil) {
                    Link(destination: URL(string: "https://\(linkDestination!)")!) {
                        Text(linkLabel!)
                        Image(systemName: "arrow.up.right.square")
                            .foregroundColor(.pink)
                    }
                }
                else {
                    EmptyView()
                }
            }
        }//:HSTACK

    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group{
            SettingsRowView(name: "Developer", content: "Rohid")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            
            SettingsRowView(name: "Developer", linkLabel: "google", linkDestination: "google.com")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
        
    
    }
}
