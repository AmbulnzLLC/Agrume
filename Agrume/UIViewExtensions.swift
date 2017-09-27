//
//  UIViewExtensions.swift
//  Agrume
//

import UIKit

extension UIView {

  final func snapshot() -> UIImage {
    UIGraphicsBeginImageContextWithOptions(bounds.size, true, 0)
    drawViewHierarchyInRect(bounds, afterScreenUpdates: true)
    let snapshot: UIImage
    if let image = UIGraphicsGetImageFromCurrentImageContext() {
      snapshot = image
    } else {
      snapshot = UIImage()
      print("ERROR: Agrume UIViewExtensions.swift UIGraphicsGetImageFromCurrentImageContext() return nil")
    }
    UIGraphicsEndImageContext()
    return snapshot
  }

}
