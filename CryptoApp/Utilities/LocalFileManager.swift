//
//  LocalFileManager.swift
//  CryptoApp
//
//  Created by Christian Skorobogatow on 2/9/22.
//

import SwiftUI

class LocalFileManager {
    
    static let instance = LocalFileManager()
    private init() {}
    
    private func createFolderIfNeed(folderName: String) {
        guard let url = getURLForFolder(folderName: folderName) else { return }
        
        if !FileManager.default.fileExists(atPath: url.path) {
            do {
                try FileManager.default.createDirectory(at: url, withIntermediateDirectories: true, attributes: nil)
            } catch let error {
                print("Error when trying to create folder at directory. FolderName:\(folderName) \(error)")
            }
        }
    }
    
    func saveImage(image: UIImage, imageName: String, folderName: String) {
        
        //create folder
        createFolderIfNeed(folderName: folderName)
        
        // get path for image
        guard
            let data = image.pngData(),
            let url = getURLImage(imageName: imageName, folderName: folderName)
        else { return }
        
        // save image to path
        do {
            try data.write(to: url)
        } catch let error {
            print("Error Saving image. ImageName: \(imageName) \(error)")
        }
    }
    
    func getImage(imageName: String, folderName: String) -> UIImage? {
        guard
            let url = getURLImage(imageName: imageName, folderName: folderName),
            FileManager.default.fileExists(atPath: url.path) else {
            return nil
        }
        
        return UIImage(contentsOfFile: url.path)
    }
    
    private func getURLForFolder(folderName: String) -> URL? {
        guard let url = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            return nil
            
        }
        return url.appendingPathComponent(folderName)
    }
    
    private func getURLImage(imageName: String, folderName: String) -> URL? {
        guard let folderURL = getURLForFolder(folderName: folderName) else {
            return nil
        }
        return folderURL.appendingPathComponent(imageName + ".png")
    }
    
    
    
}
