//
//  ContentView.swift
//  TrafficLightOnSwiftUI
//
//  Created by SummeR on 31.05.2021.
//

import SwiftUI

struct TrafficLightView: View {
    var body: some View {
        ZStack {//накалываем вьюхи
            Color(.darkGray)//фон черного цвета
                .ignoresSafeArea()//заливка фона в черный вместе с SafeArea
            VStack(spacing: 30) {//вертикальный стек
                ColorCircle(color: .red)
                ColorCircle(color: .yellow)
                ColorCircle(color: .green)
                Spacer()
            }
           .padding(.top, 10)
        }
        

    }
    
}

struct ContentView_Previews: PreviewProvider {//превью экран справа
    static var previews: some View {
        TrafficLightView()
    }
}
