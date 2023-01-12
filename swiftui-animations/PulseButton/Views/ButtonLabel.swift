//
//  ButtonLabel.swift
//  swiftui-animations
//
//  Created by José Tony on 12/01/23.
//

import SwiftUI

struct ButtonLabel: View {
    var body: some View {
      Image(systemName: "play.fill")
        .font(.largeTitle)
    }
}

struct ButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabel()
    }
}
