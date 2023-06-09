//
//  Picker.swift
//  My Images
//
//  Created by dsm 5e on 27.05.2023.
//

import SwiftUI
import AVFoundation

enum Picker {
    enum Sourse {
        case library, camera
    }
    
    enum PickerError: Error, LocalizedError {
        case unavailable
        case restricted
        case denied
        
        var errorDescription: String? {
            switch self {
            case .unavailable:
                return NSLocalizedString("Not available camera on this device", comment: "")
            case .restricted:
                return NSLocalizedString("You are not allowed to acces media capture decices", comment: "")
            case .denied:
                return NSLocalizedString("You have explicity denied permission", comment: "")
            }
        }
    }
    
    static func checkPermissions() throws {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let authStatus = AVCaptureDevice.authorizationStatus(for: AVMediaType.video)
            switch authStatus {
            case .denied:
                throw PickerError.denied
            case .restricted:
                throw PickerError.restricted
            default:
                break
            }
        } else {
            throw PickerError.unavailable
        }
    }
    
    struct CameraErrorType {
        let error: Picker.PickerError
        var message: String {
            error.localizedDescription
        }
        let button = Button("OK", role: .cancel) {}
    }
}
