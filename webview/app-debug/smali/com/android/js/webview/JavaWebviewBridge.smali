.class public Lcom/android/js/webview/JavaWebviewBridge;
.super Ljava/lang/Object;
.source "JavaWebviewBridge.java"


# instance fields
.field private activity:Lcom/android/js/webview/AndroidJSActivity;

.field private app:Lcom/android/js/api/App;

.field private call:Lcom/android/js/api/Call;

.field private contact:Lcom/android/js/api/Contact;

.field private hotspot:Lcom/android/js/api/Hotspot;

.field private iconId:I

.field private myWebView:Landroid/webkit/WebView;

.field private notification:Lcom/android/js/api/Notification;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private toast:Lcom/android/js/api/Toast;

.field private wifi:Lcom/android/js/api/Wifi;


# direct methods
.method public constructor <init>(Lcom/android/js/webview/AndroidJSActivity;Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "activity"    # Lcom/android/js/webview/AndroidJSActivity;
    .param p2, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "myWebView"    # Landroid/webkit/WebView;
    .param p4, "iconId"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/js/webview/JavaWebviewBridge;->activity:Lcom/android/js/webview/AndroidJSActivity;

    .line 35
    iput-object p3, p0, Lcom/android/js/webview/JavaWebviewBridge;->myWebView:Landroid/webkit/WebView;

    .line 36
    new-instance v0, Lcom/android/js/api/Notification;

    invoke-direct {v0, p1, p2, p4}, Lcom/android/js/api/Notification;-><init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;I)V

    iput-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->notification:Lcom/android/js/api/Notification;

    .line 37
    new-instance v0, Lcom/android/js/api/Call;

    invoke-direct {v0, p1, p2}, Lcom/android/js/api/Call;-><init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->call:Lcom/android/js/api/Call;

    .line 38
    new-instance v0, Lcom/android/js/api/Wifi;

    invoke-direct {v0, p1, p2}, Lcom/android/js/api/Wifi;-><init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    .line 39
    new-instance v0, Lcom/android/js/api/Hotspot;

    invoke-direct {v0, p1, p2}, Lcom/android/js/api/Hotspot;-><init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->hotspot:Lcom/android/js/api/Hotspot;

    .line 40
    new-instance v0, Lcom/android/js/api/Toast;

    invoke-direct {v0, p1, p2}, Lcom/android/js/api/Toast;-><init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->toast:Lcom/android/js/api/Toast;

    .line 41
    new-instance v0, Lcom/android/js/api/App;

    invoke-direct {v0, p1, p2}, Lcom/android/js/api/App;-><init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->app:Lcom/android/js/api/App;

    .line 42
    new-instance v0, Lcom/android/js/api/Contact;

    invoke-direct {v0, p1, p2}, Lcom/android/js/api/Contact;-><init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

    .line 43
    iput p4, p0, Lcom/android/js/webview/JavaWebviewBridge;->iconId:I

    .line 44
    iput-object p2, p0, Lcom/android/js/webview/JavaWebviewBridge;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 45
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

    .line 154
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

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

    .line 114
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Wifi;->connectWifi(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public disableHotspot()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->hotspot:Lcom/android/js/api/Hotspot;

    invoke-virtual {v0}, Lcom/android/js/api/Hotspot;->disableHotspot()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public disableWifi()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->disableWifi()V

    .line 90
    return-void
.end method

.method public disconnectWifi()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->disconnectWifi()V

    .line 95
    return-void
.end method

.method public enableHotspot(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->hotspot:Lcom/android/js/api/Hotspot;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Hotspot;->enableHotspot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public enableWifi()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->enableWifi()V

    .line 85
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

    .line 142
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

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

    .line 146
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

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

    .line 150
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

    invoke-virtual {v0}, Lcom/android/js/api/Contact;->getContactsCount()I

    move-result v0

    return v0
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->app:Lcom/android/js/api/App;

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

    .line 109
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->getWifiScanResults()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiState()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->getWifiState()I

    move-result v0

    return v0
.end method

.method public helloWorld()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 49
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Java IPC Works"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    const-string v0, "Hello World"

    return-object v0
.end method

.method public initBigNotification(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # [Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->notification:Lcom/android/js/api/Notification;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Notification;->initBigNotification(Ljava/lang/String;[Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public initNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->notification:Lcom/android/js/api/Notification;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Notification;->initNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public isHotspotEnabled()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->hotspot:Lcom/android/js/api/Hotspot;

    invoke-virtual {v0}, Lcom/android/js/api/Hotspot;->isHotspotEnabled()Z

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public makeCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->call:Lcom/android/js/api/Call;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Call;->makeCall(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public showNotification(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->notification:Lcom/android/js/api/Notification;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Notification;->showNotification(I)V

    .line 65
    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->toast:Lcom/android/js/api/Toast;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Toast;->showToast(Ljava/lang/String;I)V

    .line 75
    return-void
.end method
