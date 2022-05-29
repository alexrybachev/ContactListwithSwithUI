//
//  ContactListView.swift
//  ContactListwithSwithUI
//
//  Created by Aleksandr Rybachev on 25.05.2022.
//

import SwiftUI

struct ContactListView: View {

    let persons: [Person]
    
    var body: some View {
        
        List(persons, id: \.self) { person in
            NavigationLink(destination: PersonContactView(person: person)) {
                Text(person.fullName)
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
        ContactListView(persons: Person.getPersons())
    }
}
