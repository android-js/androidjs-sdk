.class public Lcom/android/js/webview/JavaWebviewBridge;
.super Ljava/lang/Object;
.source "JavaWebviewBridge.java"


# instance fields
.field private activity:Lcom/android/js/webview/AndroidJSActivity;

.field private app:Lcom/android/js/api/App;

.field private call:Lcom/android/js/api/Call;

.field private contact:Lcom/android/js/api/Contact;

.field private deepLink:Lcom/android/js/api/DeepLink;

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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/js/webview/JavaWebviewBridge;->activity:Lcom/android/js/webview/AndroidJSActivity;

    .line 36
    iput-object p3, p0, Lcom/android/js/webview/JavaWebviewBridge;->myWebView:Landroid/webkit/WebView;

    .line 37
    new-instance v0, Lcom/android/js/api/Notification;

    invoke-direct {v0, p1, p2, p4}, Lcom/android/js/api/Notification;-><init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;I)V

    iput-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->notification:Lcom/android/js/api/Notification;

    .line 38
    new-instance v0, Lcom/android/js/api/Call;

    invoke-direct {v0, p1, p2}, Lcom/android/js/api/Call;-><init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->call:Lcom/android/js/api/Call;

    .line 39
    new-instance v0, Lcom/android/js/api/Wifi;

    invoke-direct {v0, p1, p2}, Lcom/android/js/api/Wifi;-><init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    .line 40
    new-instance v0, Lcom/android/js/api/Hotspot;

    invoke-direct {v0, p1, p2}, Lcom/android/js/api/Hotspot;-><init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->hotspot:Lcom/android/js/api/Hotspot;

    .line 41
    new-instance v0, Lcom/android/js/api/Toast;

    invoke-direct {v0, p1, p2}, Lcom/android/js/api/Toast;-><init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->toast:Lcom/android/js/api/Toast;

    .line 42
    new-instance v0, Lcom/android/js/api/App;

    invoke-direct {v0, p1, p2}, Lcom/android/js/api/App;-><init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->app:Lcom/android/js/api/App;

    .line 43
    new-instance v0, Lcom/android/js/api/Contact;

    invoke-direct {v0, p1, p2}, Lcom/android/js/api/Contact;-><init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

    .line 44
    new-instance v0, Lcom/android/js/api/DeepLink;

    invoke-direct {v0, p1, p2}, Lcom/android/js/api/DeepLink;-><init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->deepLink:Lcom/android/js/api/DeepLink;

    .line 45
    iput p4, p0, Lcom/android/js/webview/JavaWebviewBridge;->iconId:I

    .line 46
    iput-object p2, p0, Lcom/android/js/webview/JavaWebviewBridge;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 47
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

    .line 156
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

    .line 116
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Wifi;->connectWifi(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public disableHotspot()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->hotspot:Lcom/android/js/api/Hotspot;

    invoke-virtual {v0}, Lcom/android/js/api/Hotspot;->disableHotspot()V
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

.method public disableWifi()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->disableWifi()V

    .line 92
    return-void
.end method

.method public disconnectWifi()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->disconnectWifi()V

    .line 97
    return-void
.end method

.method public enableHotspot(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->hotspot:Lcom/android/js/api/Hotspot;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Hotspot;->enableHotspot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public enableWifi()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->enableWifi()V

    .line 87
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

    .line 144
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

    .line 148
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

    .line 152
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->contact:Lcom/android/js/api/Contact;

    invoke-virtual {v0}, Lcom/android/js/api/Contact;->getContactsCount()I

    move-result v0

    return v0
.end method

.method public getDeepLink()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->deepLink:Lcom/android/js/api/DeepLink;

    invoke-virtual {v0}, Lcom/android/js/api/DeepLink;->getLink()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 56
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

    .line 111
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->getWifiScanResults()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiState()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->getWifiState()I

    move-result v0

    return v0
.end method

.method public helloWorld()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 51
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Java IPC Works"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    const-string v0, "Hello World"

    return-object v0
.end method

.method public initBigNotification(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # [Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->notification:Lcom/android/js/api/Notification;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Notification;->initBigNotification(Ljava/lang/String;[Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public initNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->notification:Lcom/android/js/api/Notification;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Notification;->initNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public isHotspotEnabled()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->hotspot:Lcom/android/js/api/Hotspot;

    invoke-virtual {v0}, Lcom/android/js/api/Hotspot;->isHotspotEnabled()Z

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 106
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

    .line 81
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->call:Lcom/android/js/api/Call;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Call;->makeCall(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public showNotification(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->notification:Lcom/android/js/api/Notification;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Notification;->showNotification(I)V

    .line 67
    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/js/webview/JavaWebviewBridge;->toast:Lcom/android/js/api/Toast;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Toast;->showToast(Ljava/lang/String;I)V

    .line 77
    return-void
.end method
