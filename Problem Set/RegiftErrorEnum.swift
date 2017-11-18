//
//  RegiftErrorEnum.swift
//  
//
//  Created by Gabrielle Miller-Messner on 4/14/16.
//
//

import Foundation

// Errors thrown by Regift
@obj public enum RegiftError: NSInteger, ErrorType {
    case DestinationNotFound = 997
    case AddFrameToDestination = 998
    case DestinationFinalize = 999
}
