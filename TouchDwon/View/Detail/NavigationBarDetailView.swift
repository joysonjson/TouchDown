//
//  NavigationBarDetailView.swift
//  TouchDwon
//
//  Created by Joyson P S on 30/11/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
        HStack{
            Button {

            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }

            Spacer()

            Button {

            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.black)
    }
}