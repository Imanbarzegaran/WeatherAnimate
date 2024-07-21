//
//  ForecastView.swift
//  WeatherAnimate
//
//  Created by MacBook Air on 7/21/24.
//

import SwiftUI

struct ForecastView: View {
    var body: some View {
        ScrollView {
            
        }
        .background(Color.bottomSheetBackground)
        .clipShape(RoundedRectangle(cornerRadius: 44 ))
        .overlay {
            // MARK: Bottom Sheet Separator
            Divider()
                .blendMode(.overlay)
                .background(Color.bottomSheetBorderTop)
                .frame(maxHeight: .infinity, alignment: .top)
                .clipShape(RoundedRectangle(cornerRadius: 44))
        }
        .overlay {
            // MARK: Drag Indicator
            RoundedRectangle(cornerRadius: 10)
                .fill(.black.opacity(0.3))
                .frame(width: 50, height: 5)
                .frame(height: 20)
                .frame(maxHeight: .infinity, alignment: .top )
        }
    }
}

#Preview {
    ForecastView()
        .background(Color.background)
        .preferredColorScheme(.dark)
        
    
}
