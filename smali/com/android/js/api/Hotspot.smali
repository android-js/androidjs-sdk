.class public Lcom/android/js/api/Hotspot;
.super Ljava/lang/Object;
.source "Hotspot.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private local_reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

.field private wifi_manager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/js/api/Hotspot;->activity:Landroid/app/Activity;

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/js/api/Hotspot;->wifi_manager:Landroid/net/wifi/WifiManager;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/android/js/api/Hotspot;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    .locals 1
    .param p0, "x0"    # Lcom/android/js/api/Hotspot;

    .line 19
    iget-object v0, p0, Lcom/android/js/api/Hotspot;->local_reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/js/api/Hotspot;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    .locals 0
    .param p0, "x0"    # Lcom/android/js/api/Hotspot;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 19
    iput-object p1, p0, Lcom/android/js/api/Hotspot;->local_reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    return-object p1
.end method


# virtual methods
.method public disableHotspot()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/js/api/Hotspot;->local_reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->close()V

    goto :goto_0

    .line 79
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/js/api/Hotspot;->wifi_manager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/net/wifi/WifiConfiguration;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "setWifiApEnabled"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 83
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/android/js/api/Hotspot;->wifi_manager:Landroid/net/wifi/WifiManager;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v1, v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void
.end method

.method public enableHotspot(Ljava/lang/String;)V
    .locals 7
    .param p1, "ssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 31
    iget-object v0, p0, Lcom/android/js/api/Hotspot;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/js/api/Hotspot;->wifi_manager:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/js/api/Hotspot$1;

    invoke-direct {v1, p0}, Lcom/android/js/api/Hotspot$1;-><init>(Lcom/android/js/api/Hotspot;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->startLocalOnlyHotspot(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 65
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_2

    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "trying to start hotspot"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 68
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/android/js/api/Hotspot;->wifi_manager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/net/wifi/WifiConfiguration;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "setWifiApEnabled"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 70
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/android/js/api/Hotspot;->wifi_manager:Landroid/net/wifi/WifiManager;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_2
    :goto_0
    return-void
.end method

.method public isHotspotEnabled()Z
    .locals 4

    .line 89
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/js/api/Hotspot;->wifi_manager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isWifiApEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 90
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 91
    iget-object v2, p0, Lcom/android/js/api/Hotspot;->wifi_manager:Landroid/net/wifi/WifiManager;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 93
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v1

    .line 94
    return v0
.end method
