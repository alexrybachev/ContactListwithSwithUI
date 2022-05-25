//
//  ContactSectionView.swift
//  ContactListwithSwithUI
//
//  Created by Aleksandr Rybachev on 25.05.2022.
//

import SwiftUI

struct ContactSectionView: View {
    
    let contacts: [Person]
    
    var body: some View {
        
        List(contacts, id: \.self) { contact in
            Section {
                VStack {
                    ContactRowView(icon: ImageForRow.phone.rawValue,
                                   title: contact.phone)
                    ContactRowView(icon: ImageForRow.tray.rawValue,
                                   title: contact.email)
                }
            } header: {
                Text("\(contact.fullName)")
                    .fontWeight(.bold)
                    .font(.system(size: 16))
            }
        }
        .navigationTitle("Contact List")
    }
}

struct ContactSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ContactSectionView(contacts: Person.getPersons())
    }
}
