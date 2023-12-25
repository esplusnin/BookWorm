//
//  OnboardingPageControlView.swift
//  BookWorm
//
//  Created by Евгений on 25.12.2023.
//

import SwiftUI

struct OnboardingPageControlView: View {
    
    // MARK: - Binding:
    @Binding var pageNumber: Int
    
    // MARK: - UI:
    var body: some View {
        HStack(spacing: 4) {
            OnboardingPageControlCellView(currentPage: $pageNumber, index: 0)
            OnboardingPageControlCellView(currentPage: $pageNumber, index: 1)
            OnboardingPageControlCellView(currentPage: $pageNumber, index: 2)
        }
    }
}

#Preview {
    OnboardingPageControlView(pageNumber: .constant(2))
}
