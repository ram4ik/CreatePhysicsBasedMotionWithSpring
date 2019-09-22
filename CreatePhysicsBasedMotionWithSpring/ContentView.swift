//
//  ContentView.swift
//  CreatePhysicsBasedMotionWithSpring
//
//  Created by ramil on 22/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var rotateBell = false
    var body: some View {
        ZStack {
            Text("Physics-based Animations/Motion")
                .offset(y: -150)
            Image(systemName: "bell.fill")
                .font(.largeTitle)
                .scaleEffect(2)
                .foregroundColor(.blue)
                .rotationEffect(.degrees(rotateBell ? -25 : 60), anchor: .top)
                .animation(Animation.spring(
                    response: 0.87,
                    dampingFraction: 0.1,
                    blendDuration: 5
                    ).repeatForever(autoreverses: false).speed(4))
                .onAppear() {
                    self.rotateBell.toggle()
            }
            
            Circle()
                .frame(width: 25, height: 25)
                .foregroundColor(.pink)
                .offset(y: -35)
            
            Text("2")
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .offset(y: -35)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
