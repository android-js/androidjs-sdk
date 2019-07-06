.class public abstract Lcom/facebook/react/bridge/JSBundleLoader;
.super Ljava/lang/Object;
.source "JSBundleLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAssetLoader(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetUrl"    # Ljava/lang/String;
    .param p2, "loadSynchronously"    # Z

    .line 28
    new-instance v0, Lcom/facebook/react/bridge/JSBundleLoader$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/bridge/JSBundleLoader$1;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static createCachedBundleFromNetworkLoader(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;
    .locals 1
    .param p0, "sourceURL"    # Ljava/lang/String;
    .param p1, "cachedFileLocation"    # Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/facebook/react/bridge/JSBundleLoader$3;

    invoke-direct {v0, p1, p0}, Lcom/facebook/react/bridge/JSBundleLoader$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createDeltaFromNetworkLoader(Ljava/lang/String;Lcom/facebook/react/bridge/NativeDeltaClient;)Lcom/facebook/react/bridge/JSBundleLoader;
    .locals 1
    .param p0, "sourceURL"    # Ljava/lang/String;
    .param p1, "nativeDeltaClient"    # Lcom/facebook/react/bridge/NativeDeltaClient;

    .line 90
    new-instance v0, Lcom/facebook/react/bridge/JSBundleLoader$4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/bridge/JSBundleLoader$4;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/NativeDeltaClient;)V

    return-object v0
.end method

.method public static createFileLoader(Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    invoke-static {p0, p0, v0}, Lcom/facebook/react/bridge/JSBundleLoader;->createFileLoader(Ljava/lang/String;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v0

    return-object v0
.end method

.method public static createFileLoader(Ljava/lang/String;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "assetUrl"    # Ljava/lang/String;
    .param p2, "loadSynchronously"    # Z

    .line 49
    new-instance v0, Lcom/facebook/react/bridge/JSBundleLoader$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/bridge/JSBundleLoader$2;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static createRemoteDebuggerBundleLoader(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;
    .locals 1
    .param p0, "proxySourceURL"    # Ljava/lang/String;
    .param p1, "realSourceURL"    # Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/facebook/react/bridge/JSBundleLoader$5;

    invoke-direct {v0, p1, p0}, Lcom/facebook/react/bridge/JSBundleLoader$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract loadScript(Lcom/facebook/react/bridge/JSBundleLoaderDelegate;)Ljava/lang/String;
.end method
