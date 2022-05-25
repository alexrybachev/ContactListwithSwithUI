//
//  PersonContactView.swift
//  ContactListwithSwithUI
//
//  Created by Aleksandr Rybachev on 25.05.2022.
//

import SwiftUI

struct PersonContactView: View {
    var body: some View {
        Image(systemName: "person.fill")
            .resizable()
            .frame(width: 200, height: 200)
    }
}

struct PersonContactView_Previews: PreviewProvider {
    static var previews: some View {
        PersonContactView()
    }
}
