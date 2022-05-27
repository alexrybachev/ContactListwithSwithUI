//
//  PersonContactView.swift
//  ContactListwithSwithUI
//
//  Created by Aleksandr Rybachev on 25.05.2022.
//

import SwiftUI

struct PersonContactView: View {
    
    let person: Person
    
    var body: some View {
        Form {
            HStack(spacing: 10) {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 200, height: 200)
                Spacer()
            }
            ContactRowView(icon: ImageForRow.phone.rawValue,
                           title: person.phone)
            ContactRowView(icon: ImageForRow.tray.rawValue,
                           title: person.email)
        }
        .navigationTitle(person.fullName)
    }
}

struct PersonContactView_Previews: PreviewProvider {
    static var previews: some View {
        PersonContactView(
            person: Person(firstName: "Name",
                           lastName: "Surname",
                           phone: "4547575",
                           email: "sobaka@ru")
        )
    }
}
