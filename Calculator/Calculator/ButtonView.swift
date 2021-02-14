//
//  ButtonView.swift
//  Calculator
//
//  Created by Matthew Dias on 1/21/21.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> ()

    var body: some View {
        Button(title, action: action)
            .padding(10)
            .background(Color(UIColor.secondarySystemBackground))
            .border(Color.black)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "2", action: {})
    }
}
