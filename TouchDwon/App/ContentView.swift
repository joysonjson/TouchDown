//
//  ContentView.swift
//  TouchDwon
//
//  Created by Joyson P S on 29/11/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing:0) {
                NavigationBarView()
                    .padding()
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                Spacer()
                FooterView()
                    .padding(.horizontal)
            }
            .background(colorBackground.ignoresSafeArea(.all,edges: .all))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
