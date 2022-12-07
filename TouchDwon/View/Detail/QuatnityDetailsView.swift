//
//  QuatnityDetailsView.swift
//  TouchDwon
//
//  Created by Joyson P S on 05/12/22.
//

import SwiftUI

struct QuatnityDetailsView: View {
    @State var counter : Int = 0
    var body: some View {
        HStack {
            Button {
                if (counter > 0){
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
         
            }
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth:36)
            Button {
                counter += 1

            } label: {
                Image(systemName: "plus.circle")
            }



            Spacer()
            Image(systemName: "heart.circle")
                .foregroundColor(.pink)

        }
        .font(.system(.title,design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuatnityDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        QuatnityDetailsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
