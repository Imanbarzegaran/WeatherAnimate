//
//  SegmentedControl.swift
//  WeatherAnimate
//
//  Created by MacBook Air on 7/24/24.
//

import SwiftUI

struct SegmentedControl: View {

    @Binding var selection: Int

    var body: some View {
        VStack(spacing: 5) {
            // MARK: Segmented Buttons
            HStack {
                Button(
                    action: {
                        selection = 0
                    },
                    label: {
                        Text("Hourly Forecast")
                    })
                .frame(minWidth: 0, maxWidth: .infinity)
                
                Button(
                    action: {
                        selection = 1
                    },
                    label: {
                        Text("Weekly Forecast")
                    })
                .frame(minWidth: 0, maxWidth: .infinity)
                
              
               
            }
            .font(.subheadline.weight(.semibold))
            .foregroundColor(.secondary)
        }
        .padding(.top, 25)
    }
}

#Preview {
    SegmentedControl(selection: .constant(0))
}
