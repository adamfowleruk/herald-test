//
//  EventHelper.swift
//  HeraldTest
//
//  Created by Andrés Colubri on 8/26/21.
//

import Foundation
import UIKit

protocol EventHelperDelegate: AnyObject {
    func updateStatus()
}

enum EventHelper {
    weak static var delegate: EventHelperDelegate?

    static func triggerStatusChange() {
        delegate?.updateStatus()
    }
}
