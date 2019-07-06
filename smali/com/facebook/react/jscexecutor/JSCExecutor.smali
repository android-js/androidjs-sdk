.class Lcom/facebook/react/jscexecutor/JSCExecutor;
.super Lcom/facebook/react/bridge/JavaScriptExecutor;
.source "JSCExecutor.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "jscexecutor"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 20
    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReadableNativeMap;)V
    .locals 1
    .param p1, "jscConfig"    # Lcom/facebook/react/bridge/ReadableNativeMap;

    .line 23
    invoke-static {p1}, Lcom/facebook/react/jscexecutor/JSCExecutor;->initHybrid(Lcom/facebook/react/bridge/ReadableNativeMap;)Lcom/facebook/jni/HybridData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/JavaScriptExecutor;-><init>(Lcom/facebook/jni/HybridData;)V

    .line 24
    return-void
.end method

.method private static native initHybrid(Lcom/facebook/react/bridge/ReadableNativeMap;)Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "JSCExecutor"

    return-object v0
.end method
