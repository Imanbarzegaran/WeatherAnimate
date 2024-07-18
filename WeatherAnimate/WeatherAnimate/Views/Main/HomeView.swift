//
//  HomeView.swift
//  WeatherAnimate
//
//  Created by MacBook Air on 7/18/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            
            // MARK: Background Color
            Color.background
                .ignoresSafeArea()
            
            // MARK: Background Image
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
            // MARK: House Image
            Image("House")
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 257)
            
            VStack {
                Text("Montreal")
                    .font(.largeTitle)
                
                VStack {
                    Text("19°" + "\n" + "Mostly Clear")
                    Text("H:24°    L:18°")
                        .font(.title3.weight(.semibold))
                }
                
                Spacer()
            }
            .padding()

            
        }

    }
}

#Preview {
    HomeView()
}
