//
//  Contact.swift
//  Contacts
//
//  Created by Pedro Sánchez Castro on 10/09/2019.
//  Copyright © 2019 checastro.com. All rights reserved.
//

import Foundation

class Contact : NSObject {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class ContactList {
    
    var contactList: [Contact] = []
    private var contactsNames  =
        ["Steve Jobs",
         "Bill Gates",
         "Sundar Pichay",
         "Larry Page",
         "Elon Musk",
        ]
    
    init() {
        contactsNames.forEach {
            contactList.append(Contact(name: $0))
        }
        
    }
    public func add(contact: Contact) {
        contactList.append(contact)
    }
    
    public func numberOfContacts() -> Int {
        return contactList.count
    }
    
    public func getContact(index: Int) -> Contact{
        return contactList[index]
    }
    
    public func getContactIndex(contact: Contact) -> Int? {
       return  contactList.firstIndex(of: contact)
    }
    
    public func removeContact(index: Int) {
        contactList.remove(at: index)
    }
    
    public func edit(contact:Contact, nameEdited: String) {
        if let index = getContactIndex(contact: contact) {
            contactList[index].name = nameEdited
        }
    }
}
