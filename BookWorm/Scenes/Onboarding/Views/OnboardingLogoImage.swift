//
//  OnboardingLogoImage.swift
//  BookWorm
//
//  Created by Евгений on 26.12.2023.
//

import SwiftUI

struct OnboardingLogoImage: View {
    
    // MARK: - Constants and Variables:
    private let imageHorizontalPadding: CGFloat = 112
    
    // MARK: - UI:
    var body: some View {
        Image(.onboardingLogo)
            .resizable()
            .scaledToFit()
            .padding(.horizontal, imageHorizontalPadding)
    }
}

#Preview {
    OnboardingLogoImage()
}
