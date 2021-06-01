//
//  ColorCircle.swift
//  TrafficLightOnSwiftUI
//
//  Created by SummeR on 01.06.2021.
//

import SwiftUI

struct ColorCircle: View {
    
    let color: Color // переменная для инициализации цвета
    
    
    var body: some View {
        Circle()
            .foregroundColor(color)//цвет фона фигуры
//            .ignoresSafeArea() //заливает всю площадь экрана в тч и safe area
            .frame(width: 140, height: 140)
            .clipShape(Circle())//обрезание по фигуре, которую передадим в иниц
            .overlay(Circle().stroke(Color.white, lineWidth: 5))//наложение фигуры с белого цвета-srtoke-шов(граница окружности толщиной 5
            .shadow(color: .white, radius: 8)//тень радиусом 8
    }
}

struct ColorCircle_Previews: PreviewProvider {//превью
    static var previews: some View {
        ZStack {
            Color(.black)//фон превью
                .ignoresSafeArea()//модификатор игнора
            ColorCircle(color: .red)//фигура
        }
    }
}
