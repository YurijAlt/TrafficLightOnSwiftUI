//
//  ContentView.swift
//  TrafficLightOnSwiftUI
//
//  Created by SummeR on 31.05.2021.
//

import SwiftUI

enum TrafficLightColors {
    case red
    case yellow
    case green
}

struct TrafficLightView: View {
    @State private var buttonText = "START"
    
    @State private var redColorState = 0.5
    @State private var yellowColorState = 0.5
    @State private var greenColorState = 0.5
    
    @State private var brightLight = TrafficLightColors.red

    var body: some View {
        ZStack {
            Color(.darkGray)
                .ignoresSafeArea()
            VStack(spacing: 30) {
                ColorCircle(color: .red, opacity: redColorState)
                ColorCircle(color: .yellow, opacity: yellowColorState)
                ColorCircle(color: .green, opacity: greenColorState)
                
                Spacer()
                
                ChangeColorButton(title: buttonText) {
                    if buttonText == "START" {
                        buttonText = "NEXT"
                    }
                    changeColor()
                }
                .padding(.bottom, 40)
            }
            .padding(.top, 20)
        }
    }

    //MARK: - Private Methods
    private func changeColor() {
        let lightIsOn = 1.0
        let lightIsOff = 0.5
        
        switch brightLight {
        case .red:
            brightLight = .yellow
            greenColorState = lightIsOff
            redColorState = lightIsOn
        case .yellow:
            brightLight = .green
            redColorState = lightIsOff
            yellowColorState = lightIsOn
        case .green:
            brightLight = .red
            greenColorState = lightIsOn
            yellowColorState = lightIsOff
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView()
    }
}
