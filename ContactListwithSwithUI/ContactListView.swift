//
//  ContactListView.swift
//  ContactListwithSwithUI
//
//  Created by Aleksandr Rybachev on 25.05.2022.
//

import SwiftUI

struct ContactListView: View {
    
    @State private var isPresented = false
    
    let contacts: [Person]
    
    var body: some View {
        
        List(contacts, id: \.self) { contact in
            NavigationLink(isActive: $isPresented, destination: {}) {
                Text("\(contact.fullName)")
                    .font(.system(size: 20))
                    .bold()
                    .frame(height: 50, alignment: .leading)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Contact List")
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Person.getPersons())
    }
}
