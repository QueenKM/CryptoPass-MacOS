//
//  NotificationService.swift
//  CryptoPass
//
//  Created by Kristina Mateva on 24.12.24.
//


import UserNotifications

class NotificationService {
    func requestAuthorization() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
            if granted {
                print("Notification permission granted.")
            } else {
                print("Notification permission denied.")
            }
        }
    }

    func scheduleNotification(title: String, body: String, timeInterval: TimeInterval) {
        // Инициализирайте UNMutableNotificationContent
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body

        // Създайте тригер за нотификация
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: timeInterval, repeats: false)
        
        // Създайте заявка за нотификация
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

        // Добавете нотификацията в UNUserNotificationCenter
        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Failed to schedule notification: \(error.localizedDescription)")
            }
        }
    }
}

