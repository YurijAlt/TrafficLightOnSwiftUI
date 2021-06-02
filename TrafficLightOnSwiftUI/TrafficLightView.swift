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
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.5
    
    @State private var redColor = ColorCircle(color: .red, opacity: 0.5)
    @State private var yellowColor = ColorCircle(color: .yellow, opacity: 0.5)
    @State private var greenColor = ColorCircle(color: .green, opacity: 0.5)
    
    @State private var buttonText = "START"
    
    @State private var brightLight = TrafficLightColors.red

    
    var body: some View {
        ZStack {
            Color(.darkGray)
                .ignoresSafeArea()
            VStack(spacing: 30) {
                redColor
                yellowColor
                greenColor
                Spacer()
                startButton
                
            }
            .padding(.top, 10)
        }
    }
    //MARK: - Start Button Setup
    private var startButton: some View {
        Button(action: { changeColor() }) {
            Text("\(buttonText)")
        }
        .frame(width: 140.0, height: 63.0)
        .background(Color(.white))
        .border(Color.white, width: 1)
        .cornerRadius(15)
        .foregroundColor(.black)
        .font(.system(size: 30))
        .padding(.bottom, 40)
        
    }
    //MARK: - Private Methods
    private func changeColor() {
        buttonText = "NEXT"
        
        switch brightLight {
        case .red:
            redColor = ColorCircle(color: .red, opacity: lightIsOn)
            greenColor = ColorCircle(color: .green, opacity: lightIsOff)
            brightLight = .yellow
        case .yellow:
            redColor = ColorCircle(color: .red, opacity: lightIsOff)
            yellowColor = ColorCircle(color: .yellow, opacity: lightIsOn)
            brightLight = .green
        case .green:
            yellowColor = ColorCircle(color: .yellow, opacity: lightIsOff)
            greenColor = ColorCircle(color: .green, opacity: lightIsOn)
            brightLight = .red
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView()
    }
}
