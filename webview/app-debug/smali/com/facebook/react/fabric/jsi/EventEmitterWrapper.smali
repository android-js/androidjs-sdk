.class public Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;
.super Ljava/lang/Object;
.source "EventEmitterWrapper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingNativeLoadLibrary"
    }
.end annotation


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    invoke-static {}, Lcom/facebook/react/fabric/jsi/FabricSoLoader;->staticInit()V

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 35
    return-void
.end method

.method private static native initHybrid()Lcom/facebook/jni/HybridData;
.end method

.method private native invokeEvent(Ljava/lang/String;Lcom/facebook/react/bridge/NativeMap;)V
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/facebook/react/bridge/WritableMap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    if-nez p2, :cond_0

    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/facebook/react/bridge/NativeMap;

    .line 47
    .local v0, "payload":Lcom/facebook/react/bridge/NativeMap;
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;->invokeEvent(Ljava/lang/String;Lcom/facebook/react/bridge/NativeMap;)V

    .line 48
    return-void
.end method
