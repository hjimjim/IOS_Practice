//
//  ContentView.swift
//  slot-game
//
//  Created by 허지민 on 2020/12/27.
//

import SwiftUI

struct ContentView: View {
    @State private var credits = 1000
    @State private var spin1 = 1
    @State private var spin2 = 1
    @State private var spin3 = 1
    
    var body: some View {
        VStack{
            Spacer()
            Text("SwiftUI Slot")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
            HStack {
                Text("Credits \(credits)")
            }
            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
            HStack{
                Image("fruit\(spin1)").resizable().aspectRatio(contentMode: .fit)
                
                Image("fruit\(spin2)").resizable().aspectRatio(contentMode: .fit)
                
                Image("fruit\(spin3)").resizable().aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button("Spin") {
                spin1 = Int.random(in: 1...3)
                spin2 = Int.random(in: 1...3)
                spin3 = Int.random(in: 1...3)
                if spin1 == spin2 && spin2 == spin3 {
                    credits += 15
                } else {
                    credits -= 5
                }
            }.padding()
            .padding([.leading, .trailing], 40).background(Color.red).accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .cornerRadius(25.0)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
