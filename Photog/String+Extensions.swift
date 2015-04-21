//
//  String+Extensions.swift
//  Photog
//
//  Created by Lalo Gonzalez on 3/31/15.
//  Copyright (c) 2015 Lalo Gonzalez. All rights reserved.
//

import Foundation

extension String
{
    func isEmailAdress() -> Bool
    {
        var predicate = self.predicateForEmail()
        return predicate.evaluateWithObject(self)
    }
    func predicateForEmail() -> NSPredicate
    {
        let regularExpression = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        return NSPredicate(format: "Self matches %@", regularExpression)
    }
}