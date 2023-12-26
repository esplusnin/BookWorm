//
//  OnboardingStartButton.swift
//  BookWorm
//
//  Created by Евгений on 26.12.2023.
//

import SwiftUI

struct OnboardingStartButton: View {
    
    // MARK: - Constants and Varibales:
    enum UIConstants {
        static let buttonWidth: CGFloat = 320
        static let buttonHeigth: CGFloat = 56
        static let buttonCornerRadius: CGFloat = 5
        
        static let buttonTopPadding: CGFloat = 57
        static let buttonBottomPadding: CGFloat = 68
    }
    
    // MARK: - UI:
    var body: some View {
        Button(L10n.Onboarding.buttonTitle) {
            
        }
        .frame(width: UIConstants.buttonWidth, height: UIConstants.buttonHeigth)
        .background(.black)
        .clipShape(.rect(cornerRadius: UIConstants.buttonCornerRadius))
        .foregroundStyle(Color.regularWhite)
        .padding(.top, UIConstants.buttonTopPadding)
        .padding(.bottom, UIConstants.buttonBottomPadding)
    }
}

#Preview {
    OnboardingStartButton()
}
