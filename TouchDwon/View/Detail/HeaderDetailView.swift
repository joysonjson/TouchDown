//
//  HeaderDetailView.swift
//  TouchDwon
//
//  Created by Joyson P S on 30/11/22.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop: Shop

    var body: some View {
        VStack(alignment:.leading,spacing:5){
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
                
        }
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
