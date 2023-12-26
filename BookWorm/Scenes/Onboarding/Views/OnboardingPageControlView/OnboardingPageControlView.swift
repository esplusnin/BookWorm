//
//  OnboardingPageControlView.swift
//  BookWorm
//
//  Created by Евгений on 25.12.2023.
//

import SwiftUI

struct OnboardingPageControlView: View {
    
    // MARK: - Binding:
    @EnvironmentObject private var viewModel: OnboardingViewModel
    
    // MARK: - UI:
    var body: some View {
        HStack(spacing: 4) {
            OnboardingPageControlCellView(index: 0)
            OnboardingPageControlCellView(index: 1)
            OnboardingPageControlCellView(index: 2)
        }
    }
}

#Preview {
    OnboardingPageControlView()
}
