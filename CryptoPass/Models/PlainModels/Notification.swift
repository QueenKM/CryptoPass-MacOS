//
//  Notification.swift
//  CryptoPass
//
//  Created by Kristina Mateva on 24.12.24.
//


import Foundation

struct Notification: Identifiable, Codable {
    var id: UUID = UUID()
    var title: String                  // Заглавие на известието
    var message: String                // Съобщение на известието
    var scheduledDate: Date            // Дата за показване на известието
    var isRead: Bool = false           // Прочетено или не
}
