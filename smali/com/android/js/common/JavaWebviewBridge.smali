.class public Lcom/android/js/common/JavaWebviewBridge;
.super Ljava/lang/Object;
.source "JavaWebviewBridge.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private app:Lcom/android/js/api/App;

.field private call:Lcom/android/js/api/Call;

.field private className:Ljava/lang/String;

.field private contact:Lcom/android/js/api/Contact;

.field private deepLink:Lcom/android/js/api/DeepLink;

.field private hotspot:Lcom/android/js/api/Hotspot;

.field private iconId:I

.field private location:Lcom/android/js/api/Location;

.field private mobileData:Lcom/android/js/api/MobileData;

.field private myWebView:Landroid/webkit/WebView;

.field private notification:Lcom/android/js/api/Notification;

.field private sms:Lcom/android/js/api/SMS;

.field private toast:Lcom/android/js/api/Toast;

.field private wifi:Lcom/android/js/api/Wifi;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;ILjava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "myWebView"    # Landroid/webkit/WebView;
    .param p3, "iconId"    # I
    .param p4, "className"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/js/common/JavaWebviewBridge;->activity:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/android/js/common/JavaWebviewBridge;->myWebView:Landroid/webkit/WebView;

    .line 42
    new-instance v0, Lcom/android/js/api/Notification;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/js/api/Notification;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->notification:Lcom/android/js/api/Notification;

    .line 43
    new-instance v0, Lcom/android/js/api/Call;

    invoke-direct {v0, p1}, Lcom/android/js/api/Call;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->call:Lcom/android/js/api/Call;

    .line 44
    new-instance v0, Lcom/android/js/api/Wifi;

    invoke-direct {v0, p1}, Lcom/android/js/api/Wifi;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    .line 45
    new-instance v0, Lcom/android/js/api/Hotspot;

    invoke-direct {v0, p1}, Lcom/android/js/api/Hotspot;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->hotspot:Lcom/android/js/api/Hotspot;

    .line 46
    new-instance v0, Lcom/android/js/api/Toast;

    invoke-direct {v0, p1}, Lcom/android/js/api/Toast;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->toast:Lcom/android/js/api/Toast;

    .line 47
    new-instance v0, Lcom/android/js/api/App;

    invoke-direct {v0, p1, p2}, Lcom/android/js/api/App;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->app:Lcom/android/js/api/App;

    .line 48
    new-instance v0, Lcom/android/js/api/Contact;

    invoke-direct {v0, p1}, Lcom/android/js/api/Contact;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

    .line 49
    new-instance v0, Lcom/android/js/api/DeepLink;

    invoke-direct {v0, p1}, Lcom/android/js/api/DeepLink;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->deepLink:Lcom/android/js/api/DeepLink;

    .line 50
    new-instance v0, Lcom/android/js/api/SMS;

    invoke-direct {v0, p1}, Lcom/android/js/api/SMS;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->sms:Lcom/android/js/api/SMS;

    .line 51
    new-instance v0, Lcom/android/js/api/Location;

    invoke-direct {v0, p1}, Lcom/android/js/api/Location;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->location:Lcom/android/js/api/Location;

    .line 52
    new-instance v0, Lcom/android/js/api/MobileData;

    invoke-direct {v0, p1}, Lcom/android/js/api/MobileData;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->mobileData:Lcom/android/js/api/MobileData;

    .line 53
    iput p3, p0, Lcom/android/js/common/JavaWebviewBridge;->iconId:I

    .line 54
    iput-object p4, p0, Lcom/android/js/common/JavaWebviewBridge;->className:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/android/js/common/JavaWebviewBridge;->className:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public addContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/js/api/Contact;->addContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public connectWifi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Wifi;->connectWifi(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public disableHotspot()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->hotspot:Lcom/android/js/api/Hotspot;

    invoke-virtual {v0}, Lcom/android/js/api/Hotspot;->disableHotspot()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public disableWifi()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->disableWifi()V

    .line 101
    return-void
.end method

.method public disconnectWifi()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->disconnectWifi()V

    .line 106
    return-void
.end method

.method public enableHotspot(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->hotspot:Lcom/android/js/api/Hotspot;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Hotspot;->enableHotspot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public enableWifi()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->enableWifi()V

    .line 96
    return-void
.end method

.method public getAllContacts()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/js/api/Contact;->getAllContacts(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Contact;->getContactByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactsCount()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

    invoke-virtual {v0}, Lcom/android/js/api/Contact;->getContactsCount()I

    move-result v0

    return v0
.end method

.method public getDeepLink()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->deepLink:Lcom/android/js/api/DeepLink;

    invoke-virtual {v0}, Lcom/android/js/api/DeepLink;->getLink()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->location:Lcom/android/js/api/Location;

    invoke-virtual {v0}, Lcom/android/js/api/Location;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->app:Lcom/android/js/api/App;

    invoke-virtual {v0, p1}, Lcom/android/js/api/App;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiScanResults()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->getWifiScanResults()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiState()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->getWifiState()I

    move-result v0

    return v0
.end method

.method public helloWorld()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 60
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Java IPC Works"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    const-string v0, "Hello World"

    return-object v0
.end method

.method public initBigNotification(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # [Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->notification:Lcom/android/js/api/Notification;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Notification;->initBigNotification(Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public initNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->notification:Lcom/android/js/api/Notification;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Notification;->initNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public isHotspotEnabled()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->hotspot:Lcom/android/js/api/Hotspot;

    invoke-virtual {v0}, Lcom/android/js/api/Hotspot;->isHotspotEnabled()Z

    move-result v0

    return v0
.end method

.method public isMobileDataEnabled()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->mobileData:Lcom/android/js/api/MobileData;

    invoke-virtual {v0}, Lcom/android/js/api/MobileData;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public makeCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->call:Lcom/android/js/api/Call;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Call;->makeCall(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->sms:Lcom/android/js/api/SMS;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/SMS;->sendSMS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultFontSize(I)V
    .locals 1
    .param p1, "fontSize"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->app:Lcom/android/js/api/App;

    invoke-virtual {v0, p1}, Lcom/android/js/api/App;->setDefaultFontSize(I)V

    .line 191
    return-void
.end method

.method public showNotification(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->notification:Lcom/android/js/api/Notification;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Notification;->showNotification(I)V

    .line 76
    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/js/common/JavaWebviewBridge;->toast:Lcom/android/js/api/Toast;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Toast;->showToast(Ljava/lang/String;I)V

    .line 86
    return-void
.end method
