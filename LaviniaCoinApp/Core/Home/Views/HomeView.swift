//
//  HomeView.swift
//  LaviniaCoinApp
//
//  Created by Alican TARIM on 5.04.2024
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // top movers view
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                // all coins view
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}




