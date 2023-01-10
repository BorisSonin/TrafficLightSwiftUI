//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Борис Сонин on 10.01.2023.
//

import SwiftUI


struct ContentView: View {
    @State var opacityRed = 0.5
    @State var opacityYellow = 0.5
    @State var opacityGreen = 0.5
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                RedYellowGreen().redLight.foregroundColor(.red).opacity(opacityRed).padding()
                RedYellowGreen().yellowLight.foregroundColor(.yellow).opacity(opacityYellow).padding()
                RedYellowGreen().greenLight.foregroundColor(.green).opacity(opacityGreen).padding()
                Spacer()
            }
            
            Button(action: changeOpacity) {
                if opacityRed == 1 || opacityYellow == 1 || opacityGreen == 1 {
                    Text("NEXT")
                        .foregroundColor(.white)
                } else {
                    Text("START")
                        .foregroundColor(.white)
                }
            }
            .frame(width: 140, height: 50)
            .font(.system(size: 25, weight: .bold, design: .default))
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4))
            .background(Color.blue).cornerRadius(15)
        }
        .padding(.bottom, -400)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    private func changeOpacity() {
        if opacityRed == 0.5 && opacityYellow == 0.5 && opacityGreen == 0.5 {
            opacityRed = 1
            
        } else if opacityRed == 1 {
            opacityRed = 0.5
            opacityYellow = 1
            
        } else if opacityYellow == 1 {
            opacityYellow = 0.5
            opacityGreen = 1
            
        } else if opacityGreen == 1 {
            opacityGreen = 0.5
        }
    }
}


