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
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 140, height: 140)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(color: .white, radius: 8)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.darkGray)
                .ignoresSafeArea()
            ColorCircle(color: .red, opacity: 1.0)
        }
    }
}
