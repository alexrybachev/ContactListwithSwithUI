//
//  ContactRowView.swift
//  ContactListwithSwithUI
//
//  Created by Aleksandr Rybachev on 25.05.2022.
//

import SwiftUI

struct ContactRowView: View {
    
    let icon: String
    let title: String
    
    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: icon)
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.blue)
            Text("\(title)")
            Spacer()
        }
        .frame(height: 50, alignment: .leading)
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(icon: ImageForRow.phone.rawValue, title: "Person")
    }
}
