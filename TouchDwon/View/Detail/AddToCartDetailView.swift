//
//  AddToCartDetailView.swift
//  TouchDwon
//
//  Created by Joyson P S on 05/12/22.
//

import SwiftUI

struct AddToCartDetailView: View {
    @EnvironmentObject var shop: Shop

    var body: some View {
        Button {
            
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2,design: .rounded))
                .foregroundColor(.white)
                .fontWeight(.bold)
            Spacer()

        }
        .padding(15)
        .background(
            Color(red:shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ??  sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())

    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
