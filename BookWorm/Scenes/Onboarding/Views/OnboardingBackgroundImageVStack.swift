//
//  OnboardingImageVStack.swift
//  BookWorm
//
//  Created by Евгений on 26.12.2023.
//

import SwiftUI

struct OnboardingBackgroundImageVStack: View {
    
    // MARK: - Constants and Variables:
    private var geo: GeometryProxy
    
    private let gradientStartOpacity: CGFloat = 0.3
    
    // MARK: - UI:
    var body: some View {
        VStack {
            Image(.onboardingBackground)
                .resizable()
                .scaledToFill()
                .frame(width: geo.frame(in: .global).width,
                       height: geo.frame(in: .global).height / 2,
                       alignment: .top)
                .overlay {
                    LinearGradient(
                        colors: [.white.opacity(gradientStartOpacity), .clear],
                        startPoint: .topLeading,
                        endPoint: .bottom)
                }
            
            Spacer()
        }
        .ignoresSafeArea()
    }
    
    // MARK: - Lifecycle:
    init(geo: GeometryProxy) {
        self.geo = geo
    }
}

#Preview {
    GeometryReader { proxy in
        OnboardingBackgroundImageVStack(geo: proxy)
    }
}
