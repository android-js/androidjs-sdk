.class public Lcom/facebook/react/bridge/ReactBridge;
.super Ljava/lang/Object;
.source "ReactBridge.java"


# static fields
.field private static sDidInit:Z

.field private static volatile sLoadEndTime:J

.field private static volatile sLoadStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/facebook/react/bridge/ReactBridge;->sLoadStartTime:J

    .line 18
    sput-wide v0, Lcom/facebook/react/bridge/ReactBridge;->sLoadEndTime:J

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/react/bridge/ReactBridge;->sDidInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoadEndTime()J
    .locals 2

    .line 42
    sget-wide v0, Lcom/facebook/react/bridge/ReactBridge;->sLoadEndTime:J

    return-wide v0
.end method

.method public static getLoadStartTime()J
    .locals 2

    .line 38
    sget-wide v0, Lcom/facebook/react/bridge/ReactBridge;->sLoadStartTime:J

    return-wide v0
.end method

.method public static declared-synchronized staticInit()V
    .locals 4

    const-class v0, Lcom/facebook/react/bridge/ReactBridge;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-boolean v1, Lcom/facebook/react/bridge/ReactBridge;->sDidInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 24
    monitor-exit v0

    return-void

    .line 26
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/facebook/react/bridge/ReactBridge;->sDidInit:Z

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/facebook/react/bridge/ReactBridge;->sLoadStartTime:J

    .line 29
    const-string v1, "ReactBridge.staticInit::load:reactnativejni"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v1}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 30
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->LOAD_REACT_NATIVE_SO_FILE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 31
    const-string v1, "reactnativejni"

    invoke-static {v1}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 32
    sget-object v1, Lcom/facebook/react/bridge/ReactMarkerConstants;->LOAD_REACT_NATIVE_SO_FILE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 33
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/facebook/react/bridge/ReactBridge;->sLoadEndTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit v0

    return-void

    .line 22
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
