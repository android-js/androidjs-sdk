.class public Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;
.super Ljava/lang/Object;
.source "AndroidInfoHelpers.java"


# static fields
.field private static final DEBUG_SERVER_HOST_PORT:I = 0x1f91

.field public static final DEVICE_LOCALHOST:Ljava/lang/String; = "localhost"

.field public static final EMULATOR_LOCALHOST:Ljava/lang/String; = "10.0.2.2"

.field public static final GENYMOTION_LOCALHOST:Ljava/lang/String; = "10.0.3.2"

.field private static final INSPECTOR_PROXY_PORT:I = 0x1f92

.field public static final METRO_HOST_PROP_NAME:Ljava/lang/String; = "metro.host"

.field private static final TAG:Ljava/lang/String;

.field private static metroHostPropValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->TAG:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->metroHostPropValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFriendlyDeviceName()Ljava/lang/String;
    .locals 2

    .line 49
    invoke-static {}, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->isRunningOnGenymotion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - API "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInspectorProxyHost()Ljava/lang/String;
    .locals 1

    .line 44
    const/16 v0, 0x1f92

    invoke-static {v0}, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->getServerIpAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getMetroHostPropValue()Ljava/lang/String;
    .locals 7

    const-class v0, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->metroHostPropValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->metroHostPropValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object v1

    .line 81
    :cond_0
    const/4 v1, 0x0

    .line 82
    .local v1, "process":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 85
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "/system/bin/getprop"

    const-string v5, "metro.host"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    move-object v1, v3

    .line 86
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 90
    const-string v3, ""

    .line 92
    .local v3, "lastLine":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 93
    move-object v3, v5

    goto :goto_0

    .line 95
    :cond_1
    sput-object v3, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->metroHostPropValue:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .end local v3    # "lastLine":Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    nop

    .line 102
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    goto :goto_1

    .line 104
    :catch_0
    move-exception v3

    .line 106
    :goto_1
    if-eqz v1, :cond_3

    .line 107
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .line 100
    :catchall_0
    move-exception v3

    goto :goto_6

    .line 96
    :catch_1
    move-exception v3

    .line 97
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v4, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->TAG:Ljava/lang/String;

    const-string v5, "Failed to query for metro.host prop:"

    invoke-static {v4, v5, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    const-string v4, ""

    sput-object v4, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->metroHostPropValue:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_2

    .line 102
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 104
    :catch_2
    move-exception v3

    goto :goto_4

    .line 105
    :cond_2
    :goto_3
    nop

    .line 106
    :goto_4
    if-eqz v1, :cond_3

    .line 107
    goto :goto_2

    .line 110
    :cond_3
    :goto_5
    :try_start_6
    sget-object v3, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->metroHostPropValue:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    return-object v3

    .line 101
    :goto_6
    if-eqz v2, :cond_4

    .line 102
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    .line 104
    :catch_3
    move-exception v4

    goto :goto_8

    .line 105
    :cond_4
    :goto_7
    nop

    .line 106
    :goto_8
    if-eqz v1, :cond_5

    .line 107
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 109
    :cond_5
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 77
    .end local v1    # "process":Ljava/lang/Process;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    return-void
.end method

.method public static getServerHost()Ljava/lang/String;
    .locals 1

    .line 40
    const/16 v0, 0x1f91

    invoke-static {v0}, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->getServerIpAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getServerIpAddress(I)Ljava/lang/String;
    .locals 6
    .param p0, "port"    # I

    .line 62
    invoke-static {}, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->getMetroHostPropValue()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "metroHostProp":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    move-object v1, v0

    .local v1, "ipAddress":Ljava/lang/String;
    goto :goto_0

    .line 65
    .end local v1    # "ipAddress":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->isRunningOnGenymotion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const-string v1, "10.0.3.2"

    .restart local v1    # "ipAddress":Ljava/lang/String;
    goto :goto_0

    .line 67
    .end local v1    # "ipAddress":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->isRunningOnStockEmulator()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    const-string v1, "10.0.2.2"

    .restart local v1    # "ipAddress":Ljava/lang/String;
    goto :goto_0

    .line 70
    .end local v1    # "ipAddress":Ljava/lang/String;
    :cond_2
    const-string v1, "localhost"

    .line 73
    .restart local v1    # "ipAddress":Ljava/lang/String;
    :goto_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%s:%d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static isRunningOnGenymotion()Z
    .locals 2

    .line 32
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "vbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isRunningOnStockEmulator()Z
    .locals 2

    .line 36
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
