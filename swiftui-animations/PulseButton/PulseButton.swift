//
//  ContentView.swift
//  PulseButton
//
//  Created by José Tony on 10/01/23.
//

import SwiftUI

struct PulseButton: View {
  var tint: Color = .red
  
  @State private var scale: CGFloat = 1
  @State private var shadowScale: CGFloat = 1
  @State private var opacity: Double = 1
  
  var body: some View {
    ZStack {
      tint
        .opacity(opacity)
        .frame(width: 86, height: 86)
        .cornerRadius(100)
        .scaleEffect(shadowScale)
        .onAppear {
          withAnimation(
            .easeInOut(duration: 1.8)
            .repeatForever(autoreverses: false)
          ) {
            opacity = 0
            shadowScale = 2.2
          }
        }
      
      
      Button {
        print("pressed")
      } label: {
        ButtonLabel()
          .padding(.horizontal, 16)
          .padding(.vertical, 20)
      }
      .buttonBorderShape(.roundedRectangle(radius: 100))
      .buttonStyle(.borderedProminent)
      .tint(tint)
      .scaleEffect(scale)
      .onAppear {
        withAnimation(
          .easeInOut(duration: 1)
          .repeatForever(autoreverses: true)) {
            scale = 1.2
            opacity = 1
          }
      }
      
      
    }
  }
}

struct PulseButton_Previews: PreviewProvider {
  static var previews: some View {
    PulseButton(tint: .green)
  }
}











