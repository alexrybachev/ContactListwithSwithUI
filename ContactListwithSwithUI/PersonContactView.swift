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
            
            Label(person.phone, systemImage: ImageForRow.phone.rawValue)
            Label(person.email, systemImage: ImageForRow.tray.rawValue)

        }
        .navigationTitle(person.fullName)
    }
}

struct PersonContactView_Previews: PreviewProvider {
    static var previews: some View {
        PersonContactView(person: Person.getPersons().first!)
    }
}
