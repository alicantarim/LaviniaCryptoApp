//
//  TopMoversView.swift
//  LaviniaCoinApp
//
//  Created by Alican TARIM on 5.04.2024.
//

import SwiftUI

struct TopMoversView: View {
    
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal){
                HStack(spacing: 16) {
                    ForEach(viewModel.topMovingCoins) { coin in
                        TopMoversItemView(coin: coin)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    TopMoversView(viewModel: HomeViewModel())
}
