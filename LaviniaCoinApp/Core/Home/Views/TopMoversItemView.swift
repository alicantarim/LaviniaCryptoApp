//
//  TopMoversItemView.swift
//  LaviniaCoinApp
//
//  Created by Alican TARIM on 5.04.2024.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    
    let coin: Coin
    
    var body: some View {
        VStack (alignment: .leading) {
            // image
            //Image(systemName: "bitcoinsign.circle.fill")
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            // coin info
            HStack(spacing: 2) {
                Text(coin.symbol.uppercased())     // Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text(coin.currentPrice.toCurrency())      // Text("$20,330.00")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            // coin percent change
            Text(coin.priceChangePercentage24H.toPercentString())    // Text("+ 5.60%")
                .font(.title2)
                .foregroundStyle(coin.priceChangePercentage24H > 0 ? .green : .red)    // .foregroundStyle(.green)
        }
        .frame(width: 140, height: 140)
        .background(Color("ItemBackgroundColor"))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}

//#Preview {
//    TopMoversItemView()
//}
