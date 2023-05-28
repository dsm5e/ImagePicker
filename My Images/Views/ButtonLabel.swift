//
//  ButtonLabel.swift
//  My Images
//
//  Created by dsm 5e on 28.05.2023.
//

import SwiftUI

struct ButtonLabel: View {
    @State var symbolName: String
    @State var label: String
    
    var body: some View {
        HStack {
            Image(systemName: symbolName)
            Text(label)
        }
        .font(.headline)
        .padding()
        .frame(height: 40)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(15)
    }
}

struct ButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabel(symbolName: "camera", label: "Camera")
    }
}
