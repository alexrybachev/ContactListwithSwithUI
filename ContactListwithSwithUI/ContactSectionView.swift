//
//  ContactSectionView.swift
//  ContactListwithSwithUI
//
//  Created by Aleksandr Rybachev on 25.05.2022.
//

import SwiftUI

struct ContactSectionView: View {
    
    let persons: [Person]
    
    var body: some View {
        
        List(persons, id: \.self) { person in
            Section {
                Label(person.phone, systemImage: ImageForRow.phone.rawValue)
                Label(person.email, systemImage: ImageForRow.tray.rawValue)
            } header: {
                Text(person.fullName)
                    .fontWeight(.bold)
                    .font(.system(size: 22))
            }
        }
        .navigationTitle("Contact List")
    }
}

struct ContactSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ContactSectionView(persons: Person.getPersons())
    }
}
