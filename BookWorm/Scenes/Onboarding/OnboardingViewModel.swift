//
//  OnboardingViewModel.swift
//  BookWorm
//
//  Created by Евгений on 26.12.2023.
//

import Foundation

@MainActor
final class OnboardingViewModel: ObservableObject {
    
    // MARK: - Publishers:
    @Published var currentPage = 0
    
    // MARK: - Constants and Variables:
    private(set) var texts = [
        L10n.Onboarding.firstText,
        L10n.Onboarding.secondText,
        L10n.Onboarding.thirdText
    ]
}
