//
//  SourceLInkView.swift
//  Fructus
//
//  Created by Jotno on 9/10/23.
//

import SwiftUI

struct SourceLInkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLInkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLInkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
