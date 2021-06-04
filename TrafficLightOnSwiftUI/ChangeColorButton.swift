//
//  ChangeColorButton.swift
//  TrafficLightOnSwiftUI
//
//  Created by SummeR on 04.06.2021.
//

import SwiftUI

struct ChangeColorButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action){
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
        }
        .padding()
        .frame(width: 300, height: 63)
        .background(Color(.white))
        .border(Color.white, width: 1)
        .cornerRadius(15)
        .foregroundColor(.black)
        .font(.system(size: 30))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 3)
        )
        .shadow(color: .white, radius: 8)
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color(.darkGray)
                .ignoresSafeArea()
            ChangeColorButton(title: "START", action: {})
        }
    }
}
