//
//  OnboardingView.swift
//  BookWorm
//
//  Created by Евгений on 25.12.2023.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - Constants and variables:
    private let vStackSpacing: CGFloat = 20

    // MARK: - States objects:
    @StateObject private var viewModel: OnboardingViewModel
    
    // MARK: - UI:
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color.regularWhite
                
                OnboardingBackgroundImageVStack(geo: geo)
                
                VStack(spacing: vStackSpacing) {
                    Spacer()
                    OnboardingLogoImage()
                    OnboardingTabView(geo: geo)
                    OnboardingPageControlView()
                    OnboardingStartButton()
                }
            }
            .environmentObject(viewModel)
        }
    }
    
    init(viewModel: OnboardingViewModel) {
        _viewModel = StateObject(wrappedValue: OnboardingViewModel())
    }
}

#Preview {
    OnboardingView(viewModel: OnboardingViewModel())
}
