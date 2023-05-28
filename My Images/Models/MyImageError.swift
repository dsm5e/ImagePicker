//
//  MyImageError.swift
//  My Images
//
//  Created by dsm 5e on 28.05.2023.
//

import SwiftUI

enum MyImageError: Error, LocalizedError {
case readError
case decodingError
case encodingError
case saveError
case saveImageError
case readImageError
    
    var errorDescription: String? {
        switch self {
        case .readError:
            return NSLocalizedString("Not load MyImage.json", comment: "")
        case .decodingError:
            return NSLocalizedString("There was a problem loading your list image", comment: "")
        case .encodingError:
            return NSLocalizedString("Could not save your MyImage data", comment: "")
        case .saveError:
            return NSLocalizedString("Could not save the My Image json file", comment: "")
        case .saveImageError:
            return NSLocalizedString("Could not save image", comment: "")
        case .readImageError:
            return NSLocalizedString("Could not load image", comment: "")
        }
    }
    struct ErrorType: Identifiable {
        let id = UUID()
        let error: MyImageError
        var message: String {
            error.localizedDescription
        }
        let button = Button("Ok", role: .cancel) {}
    }
}
