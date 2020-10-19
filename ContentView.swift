//
//  ContentView.swift
//  Demo App
//
//  Created by etudiant on 19/10/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var washes: [HandWash] = []
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 0.0) {
                Button("Savon"){
                    let wash = HandWash(soap: "savon", date: Date());
                    washes.append(wash);
                }.padding()
                Button("Gel"){
                    let wash = HandWash(soap: "Gel", date: Date());
                    washes.append(wash);
                }.padding()
                Text("\(washes.count)").padding()
            }
            .padding(20.0)
            List(washes, id: \.date){ wash in
                Text(wash.soap).padding();
                Text(wash.date, style: .relative);
            }.padding(15)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
