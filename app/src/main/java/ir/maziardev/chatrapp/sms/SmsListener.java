package ir.maziardev.chatrapp.sms;

public interface SmsListener {
    void onMessageReceived(String messageText);
}
