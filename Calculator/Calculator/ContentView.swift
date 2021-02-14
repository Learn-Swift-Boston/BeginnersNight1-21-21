//
//  ContentView.swift
//  Calculator
//
//  Created by Matthew Dias on 1/21/21.
//

import SwiftUI


struct ContentView: View {
    @State var displayValue = 0
    @State var sum = 0

    let columns = 3
    let rows = 3

    var body: some View {
        VStack {
            Spacer()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 16, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("\(displayValue)")
                .font(.largeTitle)
                .foregroundColor(Color(.sRGB, red: 255/255, green: 40/255, blue: 97/255, opacity: 1))
                .background(Color.gray)
            Spacer()
            VStack {
                ForEach(0..<rows) { row in
                    HStack {
                        ForEach(0..<columns) { column in
                            let number = row * columns + column + 1
                            ButtonView(title: "\(number)") {
                                addDigit(number)
                            }
                        }
                    }
                }
                ButtonView(title: "0") {
                    addDigit(0)
                }
            }
            HStack {
                ButtonView(title: "+", action: plus)
                ButtonView(title: "=", action: evaluate)
                ButtonView(title: "C", action: clear)
            }
            Spacer()
        }
    }

    func addDigit(_ digit: Int) {
        precondition(digit < 10)
        displayValue *= 10
        displayValue += digit
    }

    fileprivate func plus() {
        sum += displayValue
        displayValue = 0
    }

    func evaluate() {
        displayValue = sum
    }

    func clear() {
        sum = 0
        displayValue = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
