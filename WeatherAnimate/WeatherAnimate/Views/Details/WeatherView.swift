//
//  WeatherView.swift
//  WeatherAnimate
//
//  Created by MacBook Air on 7/27/24.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack {
            // MARK: Background
            Color.background
                .ignoresSafeArea()
            
            // MARK: Weather Widgets
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(Forecast.cities) { Forecast in
                        WeatherWidget(forecast: Forecast)
                        
                    }
                }
            }
            .safeAreaInset(edge: .top) {
                EmptyView()
                    .frame(height: 110)
            }
            
        }
        .overlay {
            // MARK: Navigation Bar
            NavigationBar()
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    WeatherView()
        .preferredColorScheme(.dark)
    
}
