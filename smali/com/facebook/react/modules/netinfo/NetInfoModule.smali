.class public Lcom/facebook/react/modules/netinfo/NetInfoModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "NetInfoModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "NetInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/netinfo/NetInfoModule$ConnectivityBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final CONNECTION_TYPE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field private static final CONNECTION_TYPE_CELLULAR:Ljava/lang/String; = "cellular"

.field private static final CONNECTION_TYPE_ETHERNET:Ljava/lang/String; = "ethernet"

.field private static final CONNECTION_TYPE_NONE:Ljava/lang/String; = "none"

.field private static final CONNECTION_TYPE_NONE_DEPRECATED:Ljava/lang/String; = "NONE"

.field private static final CONNECTION_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final CONNECTION_TYPE_UNKNOWN_DEPRECATED:Ljava/lang/String; = "UNKNOWN"

.field private static final CONNECTION_TYPE_WIFI:Ljava/lang/String; = "wifi"

.field private static final CONNECTION_TYPE_WIMAX:Ljava/lang/String; = "wimax"

.field private static final EFFECTIVE_CONNECTION_TYPE_2G:Ljava/lang/String; = "2g"

.field private static final EFFECTIVE_CONNECTION_TYPE_3G:Ljava/lang/String; = "3g"

.field private static final EFFECTIVE_CONNECTION_TYPE_4G:Ljava/lang/String; = "4g"

.field private static final EFFECTIVE_CONNECTION_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final ERROR_MISSING_PERMISSION:Ljava/lang/String; = "E_MISSING_PERMISSION"

.field private static final MISSING_PERMISSION_MESSAGE:Ljava/lang/String; = "To use NetInfo on Android, add the following to your AndroidManifest.xml:\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />"

.field public static final NAME:Ljava/lang/String; = "NetInfo"


# instance fields
.field private mConnectionType:Ljava/lang/String;

.field private final mConnectivityBroadcastReceiver:Lcom/facebook/react/modules/netinfo/NetInfoModule$ConnectivityBroadcastReceiver;

.field private mConnectivityDeprecated:Ljava/lang/String;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mEffectiveConnectionType:Ljava/lang/String;

.field private mNoNetworkPermission:Z


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mNoNetworkPermission:Z

    .line 70
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectivityDeprecated:Ljava/lang/String;

    .line 71
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectionType:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mEffectiveConnectionType:Ljava/lang/String;

    .line 76
    nop

    .line 77
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 78
    new-instance v0, Lcom/facebook/react/modules/netinfo/NetInfoModule$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/modules/netinfo/NetInfoModule$ConnectivityBroadcastReceiver;-><init>(Lcom/facebook/react/modules/netinfo/NetInfoModule;Lcom/facebook/react/modules/netinfo/NetInfoModule$1;)V

    iput-object v0, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectivityBroadcastReceiver:Lcom/facebook/react/modules/netinfo/NetInfoModule$ConnectivityBroadcastReceiver;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/modules/netinfo/NetInfoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/modules/netinfo/NetInfoModule;

    .line 36
    invoke-direct {p0}, Lcom/facebook/react/modules/netinfo/NetInfoModule;->updateAndSendConnectionType()V

    return-void
.end method

.method private createConnectivityEventMap()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 237
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 238
    .local v0, "event":Lcom/facebook/react/bridge/WritableMap;
    iget-object v1, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectivityDeprecated:Ljava/lang/String;

    const-string v2, "network_info"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectionType:Ljava/lang/String;

    const-string v2, "connectionType"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mEffectiveConnectionType:Ljava/lang/String;

    const-string v2, "effectiveConnectionType"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-object v0
.end method

.method private getCurrentConnectionType()Ljava/lang/String;
    .locals 3

    .line 191
    const-string v0, "UNKNOWN"

    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 192
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :cond_1
    return-object v0

    .line 193
    :cond_2
    :goto_0
    const-string v0, "NONE"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 199
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/SecurityException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mNoNetworkPermission:Z

    .line 201
    return-object v0
.end method

.method private getEffectiveConnectionType(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 206
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 227
    const-string v0, "unknown"

    return-object v0

    .line 224
    :pswitch_0
    const-string v0, "4g"

    return-object v0

    .line 221
    :pswitch_1
    const-string v0, "3g"

    return-object v0

    .line 212
    :pswitch_2
    const-string v0, "2g"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerReceiver()V
    .locals 3

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/facebook/react/modules/netinfo/NetInfoModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectivityBroadcastReceiver:Lcom/facebook/react/modules/netinfo/NetInfoModule$ConnectivityBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectivityBroadcastReceiver:Lcom/facebook/react/modules/netinfo/NetInfoModule$ConnectivityBroadcastReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/react/modules/netinfo/NetInfoModule$ConnectivityBroadcastReceiver;->setRegistered(Z)V

    .line 128
    invoke-direct {p0}, Lcom/facebook/react/modules/netinfo/NetInfoModule;->updateAndSendConnectionType()V

    .line 129
    return-void
.end method

.method private sendConnectivityChangedEvent()V
    .locals 3

    .line 232
    invoke-virtual {p0}, Lcom/facebook/react/modules/netinfo/NetInfoModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 233
    invoke-direct {p0}, Lcom/facebook/react/modules/netinfo/NetInfoModule;->createConnectivityEventMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "networkStatusDidChange"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectivityBroadcastReceiver:Lcom/facebook/react/modules/netinfo/NetInfoModule$ConnectivityBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/react/modules/netinfo/NetInfoModule$ConnectivityBroadcastReceiver;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/facebook/react/modules/netinfo/NetInfoModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectivityBroadcastReceiver:Lcom/facebook/react/modules/netinfo/NetInfoModule$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    iget-object v0, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectivityBroadcastReceiver:Lcom/facebook/react/modules/netinfo/NetInfoModule$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/react/modules/netinfo/NetInfoModule$ConnectivityBroadcastReceiver;->setRegistered(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method private updateAndSendConnectionType()V
    .locals 6

    .line 139
    const-string v0, "unknown"

    .line 140
    .local v0, "connectionType":Ljava/lang/String;
    const-string v1, "unknown"

    .line 143
    .local v1, "effectiveConnectionType":Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 144
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 148
    .local v4, "networkType":I
    if-eqz v4, :cond_5

    if-eq v4, v2, :cond_4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    const/16 v5, 0x9

    if-eq v4, v5, :cond_3

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    .line 167
    const-string v2, "unknown"

    move-object v0, v2

    goto :goto_1

    .line 150
    :cond_1
    const-string v2, "bluetooth"

    move-object v0, v2

    .line 151
    goto :goto_1

    .line 164
    :cond_2
    const-string v2, "wimax"

    move-object v0, v2

    .line 165
    goto :goto_1

    .line 153
    :cond_3
    const-string v2, "ethernet"

    move-object v0, v2

    .line 154
    goto :goto_1

    .line 161
    :cond_4
    const-string v2, "wifi"

    move-object v0, v2

    .line 162
    goto :goto_1

    .line 157
    :cond_5
    const-string v5, "cellular"

    move-object v0, v5

    .line 158
    invoke-direct {p0, v3}, Lcom/facebook/react/modules/netinfo/NetInfoModule;->getEffectiveConnectionType(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 159
    goto :goto_1

    .line 145
    .end local v4    # "networkType":I
    :cond_6
    :goto_0
    const-string v2, "none"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 174
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_1
    goto :goto_2

    .line 171
    :catch_0
    move-exception v3

    .line 172
    .local v3, "e":Ljava/lang/SecurityException;
    iput-boolean v2, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mNoNetworkPermission:Z

    .line 173
    const-string v0, "unknown"

    .line 176
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_2
    invoke-direct {p0}, Lcom/facebook/react/modules/netinfo/NetInfoModule;->getCurrentConnectionType()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "currentConnectivity":Ljava/lang/String;
    iget-object v3, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectionType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mEffectiveConnectionType:Ljava/lang/String;

    .line 180
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectivityDeprecated:Ljava/lang/String;

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 182
    :cond_7
    iput-object v0, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectionType:Ljava/lang/String;

    .line 183
    iput-object v1, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mEffectiveConnectionType:Ljava/lang/String;

    .line 184
    iput-object v2, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectivityDeprecated:Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Lcom/facebook/react/modules/netinfo/NetInfoModule;->sendConnectivityChangedEvent()V

    .line 187
    :cond_8
    return-void
.end method


# virtual methods
.method public getCurrentConnectivity(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 107
    iget-boolean v0, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mNoNetworkPermission:Z

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "E_MISSING_PERMISSION"

    const-string v1, "To use NetInfo on Android, add the following to your AndroidManifest.xml:\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />"

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/modules/netinfo/NetInfoModule;->createConnectivityEventMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 102
    const-string v0, "NetInfo"

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/facebook/react/modules/netinfo/NetInfoModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 98
    return-void
.end method

.method public isConnectionMetered(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 116
    iget-boolean v0, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mNoNetworkPermission:Z

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "E_MISSING_PERMISSION"

    const-string v1, "To use NetInfo on Android, add the following to your AndroidManifest.xml:\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />"

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/modules/netinfo/NetInfoModule;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Landroid/support/v4/net/ConnectivityManagerCompat;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 93
    return-void
.end method

.method public onHostPause()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/facebook/react/modules/netinfo/NetInfoModule;->unregisterReceiver()V

    .line 89
    return-void
.end method

.method public onHostResume()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/facebook/react/modules/netinfo/NetInfoModule;->registerReceiver()V

    .line 84
    return-void
.end method
