//
//  ContentView.swift
//  ContactListwithSwithUI
//
//  Created by Aleksandr Rybachev on 25.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let contacts = Person.getPersons()
    
    var body: some View {
        NavigationView {
            TabView {
                ContactListView(contacts: contacts)
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("Contacts")
                    }
                
                ContactSectionView(contacts: contacts)
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Contacts")
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
