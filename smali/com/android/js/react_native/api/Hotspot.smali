.class public Lcom/android/js/react_native/api/Hotspot;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "Hotspot.java"


# instance fields
.field private hotspot:Lcom/android/js/api/Hotspot;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 14
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 15
    iput-object p1, p0, Lcom/android/js/react_native/api/Hotspot;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 16
    new-instance v0, Lcom/android/js/api/Hotspot;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/js/api/Hotspot;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/react_native/api/Hotspot;->hotspot:Lcom/android/js/api/Hotspot;

    .line 17
    return-void
.end method


# virtual methods
.method public disableHotspot()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/android/js/react_native/api/Hotspot;->hotspot:Lcom/android/js/api/Hotspot;

    invoke-virtual {v0}, Lcom/android/js/api/Hotspot;->disableHotspot()V

    .line 27
    return-void
.end method

.method public enableHotspot(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/android/js/react_native/api/Hotspot;->hotspot:Lcom/android/js/api/Hotspot;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Hotspot;->enableHotspot(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "HotSpot"

    return-object v0
.end method

.method public isHotspotEnabled()Z
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/android/js/react_native/api/Hotspot;->hotspot:Lcom/android/js/api/Hotspot;

    invoke-virtual {v0}, Lcom/android/js/api/Hotspot;->isHotspotEnabled()Z

    move-result v0

    return v0
.end method
