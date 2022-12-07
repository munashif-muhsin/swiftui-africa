//
//  CenterModifier.swift
//  Africa
//
//  Created by Muhsin on 07/12/2022.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
