.class public Lcom/android/js/react_native/api/Wifi;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "Wifi.java"


# instance fields
.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private wifi:Lcom/android/js/api/Wifi;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 14
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 15
    iput-object p1, p0, Lcom/android/js/react_native/api/Wifi;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 16
    new-instance v0, Lcom/android/js/api/Wifi;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/js/api/Wifi;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/react_native/api/Wifi;->wifi:Lcom/android/js/api/Wifi;

    .line 17
    return-void
.end method


# virtual methods
.method public connectWifi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/js/react_native/api/Wifi;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0, p1, p2}, Lcom/android/js/api/Wifi;->connectWifi(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public disableWifi()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/android/js/react_native/api/Wifi;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->disableWifi()V

    .line 27
    return-void
.end method

.method public disconnectWifi()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/android/js/react_native/api/Wifi;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->disconnectWifi()V

    .line 32
    return-void
.end method

.method public enableWifi()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/android/js/react_native/api/Wifi;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->enableWifi()V

    .line 22
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "Wifi"

    return-object v0
.end method

.method public getWifiScanResults()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/android/js/react_native/api/Wifi;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->getWifiScanResults()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiState()I
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/android/js/react_native/api/Wifi;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->getWifiState()I

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/android/js/react_native/api/Wifi;->wifi:Lcom/android/js/api/Wifi;

    invoke-virtual {v0}, Lcom/android/js/api/Wifi;->isWifiEnabled()Z

    move-result v0

    return v0
.end method
