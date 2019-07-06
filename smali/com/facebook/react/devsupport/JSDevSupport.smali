.class public Lcom/facebook/react/devsupport/JSDevSupport;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "JSDevSupport.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "JSDevSupport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;,
        Lcom/facebook/react/devsupport/JSDevSupport$JSDevSupportModule;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_EXCEPTION:I = 0x0

.field public static final ERROR_CODE_VIEW_NOT_FOUND:I = 0x1

.field public static final MODULE_NAME:Ljava/lang/String; = "JSDevSupport"


# instance fields
.field private volatile mCurrentCallback:Lcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/devsupport/JSDevSupport;->mCurrentCallback:Lcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;

    .line 37
    return-void
.end method


# virtual methods
.method public declared-synchronized computeDeepestJSHierarchy(Landroid/view/View;Lcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-static {p1}, Lcom/facebook/react/devsupport/ViewHierarchyUtil;->getDeepestLeaf(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    .line 52
    .local v0, "deepestPairView":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    .line 53
    .local v1, "deepestView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 54
    .local v2, "tagId":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lcom/facebook/react/devsupport/JSDevSupport;->getJSHierarchy(ILcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 50
    .end local v0    # "deepestPairView":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v1    # "deepestView":Landroid/view/View;
    .end local v2    # "tagId":Ljava/lang/Integer;
    .end local p0    # "this":Lcom/facebook/react/devsupport/JSDevSupport;
    .end local p1    # "root":Landroid/view/View;
    .end local p2    # "callback":Lcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v0, "constants":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ERROR_CODE_EXCEPTION"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ERROR_CODE_VIEW_NOT_FOUND"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-object v0
.end method

.method public declared-synchronized getJSHierarchy(ILcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;)V
    .locals 4
    .param p1, "reactTag"    # I
    .param p2, "callback"    # Lcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/JSDevSupport;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/devsupport/JSDevSupport$JSDevSupportModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/JSDevSupport$JSDevSupportModule;

    .line 60
    .local v0, "jsDevSupportModule":Lcom/facebook/react/devsupport/JSDevSupport$JSDevSupportModule;
    if-nez v0, :cond_0

    .line 61
    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/react/devsupport/JSCHeapCapture$CaptureException;

    const-string v3, "JSDevSupport module not registered."

    invoke-direct {v2, v3}, Lcom/facebook/react/devsupport/JSCHeapCapture$CaptureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1, v2}, Lcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;->onFailure(ILjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 65
    .end local p0    # "this":Lcom/facebook/react/devsupport/JSDevSupport;
    :cond_0
    :try_start_1
    iput-object p2, p0, Lcom/facebook/react/devsupport/JSDevSupport;->mCurrentCallback:Lcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;

    .line 66
    invoke-interface {v0, p1}, Lcom/facebook/react/devsupport/JSDevSupport$JSDevSupportModule;->getJSHierarchy(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 58
    .end local v0    # "jsDevSupportModule":Lcom/facebook/react/devsupport/JSDevSupport$JSDevSupportModule;
    .end local p1    # "reactTag":I
    .end local p2    # "callback":Lcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "JSDevSupport"

    return-object v0
.end method

.method public declared-synchronized onFailure(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "error"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDevSupport;->mCurrentCallback:Lcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDevSupport;->mCurrentCallback:Lcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;->onFailure(ILjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local p0    # "this":Lcom/facebook/react/devsupport/JSDevSupport;
    :cond_0
    monitor-exit p0

    return-void

    .line 79
    .end local p1    # "errorCode":I
    .end local p2    # "error":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDevSupport;->mCurrentCallback:Lcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDevSupport;->mCurrentCallback:Lcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;

    invoke-interface {v0, p1}, Lcom/facebook/react/devsupport/JSDevSupport$DevSupportCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local p0    # "this":Lcom/facebook/react/devsupport/JSDevSupport;
    :cond_0
    monitor-exit p0

    return-void

    .line 71
    .end local p1    # "data":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
