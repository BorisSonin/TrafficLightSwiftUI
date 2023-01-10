//
//  RedYellowGreen.swift
//  TrafficLightSwiftUI
//
//  Created by Борис Сонин on 10.01.2023.
//

import SwiftUI

struct RedYellowGreen: View {
    var body: some View {
        VStack {
            redLight
            yellowLight
            greenLight
        }
    }
    
    var redLight: some View {
            Circle()
            .frame(width: 80, height: 80)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
    
    var yellowLight: some View {
        Circle()
        .frame(width: 80, height: 80)
        .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
    
    var greenLight: some View {
        Circle()
        .frame(width: 80, height: 80)
        .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
    
    
    struct RedYellowGreen_Previews: PreviewProvider {
        static var previews: some View {
            RedYellowGreen()
        }
    }
}
