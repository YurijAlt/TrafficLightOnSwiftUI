//
//  ColorCircle.swift
//  TrafficLightOnSwiftUI
//
//  Created by SummeR on 01.06.2021.
//

import SwiftUI

struct ColorCircle: View {
    
    let color: Color
    let opacity: Double
    
    
    var body: some View {
        Circle()
            .foregroundColor(color
                                .opacity(opacity))
            .frame(height: 140)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(color: .white, radius: 8)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            ColorCircle(color: .red, opacity: 1.0)
        }
    }
}
