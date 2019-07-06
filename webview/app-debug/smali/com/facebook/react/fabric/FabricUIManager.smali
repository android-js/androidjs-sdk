.class public Lcom/facebook/react/fabric/FabricUIManager;
.super Ljava/lang/Object;
.source "FabricUIManager.java"

# interfaces
.implements Lcom/facebook/react/bridge/UIManager;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingNativeLoadLibrary"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sComponentNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBatchedExecutionTime:J

.field private mBinding:Lcom/facebook/react/fabric/jsi/Binding;

.field private mCommitStartTime:J

.field private final mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation
.end field

.field private mDispatchViewUpdatesTime:J

.field private final mEventBeatManager:Lcom/facebook/react/fabric/jsi/EventBeatManager;

.field private final mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private mFinishTransactionTime:J

.field private mIsMountingEnabled:Z
    .annotation build Lcom/facebook/infer/annotation/ThreadConfined;
        value = "UI"
    .end annotation
.end field

.field private mLayoutTime:J

.field private mMountItems:Ljava/util/List;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mMountItemsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/fabric/mounting/mountitems/MountItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMountItemsLock:Ljava/lang/Object;

.field private final mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

.field private mNonBatchedExecutionTime:J

.field private mPreMountItems:Ljava/util/List;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mPreMountItemsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/fabric/mounting/mountitems/MountItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreMountItemsLock:Ljava/lang/Object;

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            ">;"
        }
    .end annotation
.end field

.field private mRunStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    const-class v0, Lcom/facebook/react/fabric/FabricUIManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/fabric/FabricUIManager;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/react/fabric/FabricUIManager;->sComponentNames:Ljava/util/Map;

    .line 77
    invoke-static {}, Lcom/facebook/react/fabric/jsi/FabricSoLoader;->staticInit()V

    .line 80
    sget-object v0, Lcom/facebook/react/fabric/FabricUIManager;->sComponentNames:Ljava/util/Map;

    const-string v1, "View"

    const-string v2, "RCTView"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/facebook/react/fabric/FabricUIManager;->sComponentNames:Ljava/util/Map;

    const-string v1, "Image"

    const-string v2, "RCTImageView"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/facebook/react/fabric/FabricUIManager;->sComponentNames:Ljava/util/Map;

    const-string v1, "ScrollView"

    const-string v2, "RCTScrollView"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/facebook/react/fabric/FabricUIManager;->sComponentNames:Ljava/util/Map;

    const-string v1, "ReactPerformanceLoggerFlag"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/facebook/react/fabric/FabricUIManager;->sComponentNames:Ljava/util/Map;

    const-string v1, "Paragraph"

    const-string v2, "RCTText"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/facebook/react/fabric/FabricUIManager;->sComponentNames:Ljava/util/Map;

    const-string v1, "Text"

    const-string v2, "RCText"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/facebook/react/fabric/FabricUIManager;->sComponentNames:Ljava/util/Map;

    const-string v1, "RawText"

    const-string v2, "RCTRawText"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/facebook/react/fabric/FabricUIManager;->sComponentNames:Ljava/util/Map;

    const-string v1, "ActivityIndicatorView"

    const-string v2, "AndroidProgressBar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/facebook/react/fabric/FabricUIManager;->sComponentNames:Ljava/util/Map;

    const-string v1, "ShimmeringView"

    const-string v2, "RKShimmeringView"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/facebook/react/fabric/FabricUIManager;->sComponentNames:Ljava/util/Map;

    const-string v1, "TemplateView"

    const-string v2, "RCTTemplateView"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/fabric/jsi/EventBeatManager;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "viewManagerRegistry"    # Lcom/facebook/react/uimanager/ViewManagerRegistry;
    .param p3, "eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;
    .param p4, "eventBeatManager"    # Lcom/facebook/react/fabric/jsi/EventBeatManager;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItemsLock:Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/List;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mIsMountingEnabled:Z

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mRunStartTime:J

    .line 114
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBatchedExecutionTime:J

    .line 115
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mNonBatchedExecutionTime:J

    .line 116
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchViewUpdatesTime:J

    .line 117
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mCommitStartTime:J

    .line 118
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLayoutTime:J

    .line 119
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mFinishTransactionTime:J

    .line 126
    new-instance v0, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;-><init>(Lcom/facebook/react/fabric/FabricUIManager;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/fabric/FabricUIManager$1;)V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    .line 127
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 128
    new-instance v0, Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-direct {v0, p2}, Lcom/facebook/react/fabric/mounting/MountingManager;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    .line 129
    iput-object p3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 130
    iput-object p4, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventBeatManager:Lcom/facebook/react/fabric/jsi/EventBeatManager;

    .line 131
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 132
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/fabric/FabricUIManager;)Lcom/facebook/react/fabric/jsi/Binding;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/fabric/FabricUIManager;

    .line 70
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/jsi/Binding;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/react/fabric/FabricUIManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/fabric/FabricUIManager;

    .line 70
    iget-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mIsMountingEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/facebook/react/fabric/FabricUIManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/fabric/FabricUIManager;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mIsMountingEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/facebook/react/fabric/FabricUIManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/fabric/FabricUIManager;

    .line 70
    invoke-direct {p0}, Lcom/facebook/react/fabric/FabricUIManager;->flushMountItems()V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/react/fabric/FabricUIManager;)Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/fabric/FabricUIManager;

    .line 70
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    return-object v0
.end method

.method private createBatchMountItem([Lcom/facebook/react/fabric/mounting/mountitems/MountItem;I)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1
    .param p1, "items"    # [Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .param p2, "size"    # I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 252
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;

    invoke-direct {v0, p1, p2}, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;-><init>([Lcom/facebook/react/fabric/mounting/mountitems/MountItem;I)V

    return-object v0
.end method

.method private createMountItem(Ljava/lang/String;IIZ)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 5
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reactRootTag"    # I
    .param p3, "reactTag"    # I
    .param p4, "isVirtual"    # Z
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 167
    sget-object v0, Lcom/facebook/react/fabric/FabricUIManager;->sComponentNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "component":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 171
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 172
    .local v1, "reactContext":Lcom/facebook/react/uimanager/ThemedReactContext;
    if-eqz v1, :cond_0

    .line 175
    new-instance v2, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;

    invoke-direct {v2, v1, v0, p3, p4}, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;Ljava/lang/String;IZ)V

    return-object v2

    .line 173
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find ReactContext for root: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    .end local v1    # "reactContext":Lcom/facebook/react/uimanager/ThemedReactContext;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find component with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private deleteMountItem(I)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1
    .param p1, "reactTag"    # I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 222
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/DeleteMountItem;

    invoke-direct {v0, p1}, Lcom/facebook/react/fabric/mounting/mountitems/DeleteMountItem;-><init>(I)V

    return-object v0
.end method

.method private flushMountItems()V
    .locals 11
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 305
    iget-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mIsMountingEnabled:Z

    if-nez v0, :cond_0

    .line 306
    const-string v0, "ReactNative"

    const-string v1, "Not flushing pending UI operations because of previously thrown Exception"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void

    .line 314
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItemsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :try_start_1
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/List;

    .line 316
    .local v1, "preMountItemsToDispatch":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/fabric/mounting/mountitems/MountItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/List;

    .line 317
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 319
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mRunStartTime:J

    .line 321
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 322
    :try_start_3
    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    .line 323
    .local v2, "mountItemsToDispatch":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/fabric/mounting/mountitems/MountItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    .line 324
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 326
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 327
    .local v3, "nonBatchedExecutionStartTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FabricUIManager::premountViews ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " batches)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 330
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    .line 331
    .local v7, "mountItem":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    iget-object v8, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-interface {v7, v8}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V

    .line 332
    .end local v7    # "mountItem":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    goto :goto_0

    .line 333
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    iput-wide v7, p0, Lcom/facebook/react/fabric/FabricUIManager;->mNonBatchedExecutionTime:J

    .line 334
    invoke-static {v5, v6}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FabricUIManager::mountViews ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " batches)"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v5, v6, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 341
    .local v7, "batchedExecutionStartTime":J
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    .line 342
    .local v9, "mountItem":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    iget-object v10, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-interface {v9, v10}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V

    .line 343
    .end local v9    # "mountItem":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    goto :goto_1

    .line 344
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    iput-wide v9, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBatchedExecutionTime:J

    .line 345
    invoke-static {v5, v6}, Lcom/facebook/systrace/Systrace;->endSection(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 350
    .end local v1    # "preMountItemsToDispatch":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/fabric/mounting/mountitems/MountItem;>;"
    .end local v2    # "mountItemsToDispatch":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/fabric/mounting/mountitems/MountItem;>;"
    .end local v3    # "nonBatchedExecutionStartTime":J
    .end local v7    # "batchedExecutionStartTime":J
    nop

    .line 351
    return-void

    .line 324
    .restart local v1    # "preMountItemsToDispatch":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/fabric/mounting/mountitems/MountItem;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 317
    .end local v1    # "preMountItemsToDispatch":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/fabric/mounting/mountitems/MountItem;>;"
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ReactNative"

    const-string v2, "Exception thrown when executing UIFrameGuarded"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mIsMountingEnabled:Z

    .line 349
    throw v0

    return-void
.end method

.method private insertMountItem(III)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "parentReactTag"    # I
    .param p3, "index"    # I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 216
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/InsertMountItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/react/fabric/mounting/mountitems/InsertMountItem;-><init>(III)V

    return-object v0
.end method

.method private measure(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableNativeMap;Lcom/facebook/react/bridge/ReadableNativeMap;IIII)J
    .locals 14
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "localData"    # Lcom/facebook/react/bridge/ReadableNativeMap;
    .param p3, "props"    # Lcom/facebook/react/bridge/ReadableNativeMap;
    .param p4, "minWidth"    # I
    .param p5, "maxWidth"    # I
    .param p6, "minHeight"    # I
    .param p7, "maxHeight"    # I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 266
    move-object v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    iget-object v5, v0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    iget-object v6, v0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    int-to-float v7, v1

    int-to-float v8, v2

    .line 271
    invoke-static {v7, v8}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getYogaSize(FF)F

    move-result v10

    int-to-float v7, v1

    int-to-float v8, v2

    .line 272
    invoke-static {v7, v8}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getYogaMeasureMode(FF)Lcom/facebook/yoga/YogaMeasureMode;

    move-result-object v11

    int-to-float v7, v3

    int-to-float v8, v4

    .line 273
    invoke-static {v7, v8}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getYogaSize(FF)F

    move-result v12

    int-to-float v7, v3

    int-to-float v8, v4

    .line 274
    invoke-static {v7, v8}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getYogaMeasureMode(FF)Lcom/facebook/yoga/YogaMeasureMode;

    move-result-object v13

    .line 266
    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v5 .. v13}, Lcom/facebook/react/fabric/mounting/MountingManager;->measure(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableNativeMap;Lcom/facebook/react/bridge/ReadableNativeMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J

    move-result-wide v5

    return-wide v5
.end method

.method private preallocateView(ILjava/lang/String;)V
    .locals 5
    .param p1, "rootTag"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 194
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 201
    .local v1, "context":Lcom/facebook/react/uimanager/ThemedReactContext;
    sget-object v2, Lcom/facebook/react/fabric/FabricUIManager;->sComponentNames:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    .local v2, "component":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/List;

    new-instance v4, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;

    invoke-direct {v4, v1, p1, v2}, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    nop

    .end local v1    # "context":Lcom/facebook/react/uimanager/ThemedReactContext;
    .end local v2    # "component":Ljava/lang/String;
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeMountItem(III)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "parentReactTag"    # I
    .param p3, "index"    # I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 210
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;-><init>(III)V

    return-object v0
.end method

.method private scheduleMountItems(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;JJJ)V
    .locals 2
    .param p1, "mountItems"    # Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .param p2, "commitStartTime"    # J
    .param p4, "layoutTime"    # J
    .param p6, "finishTransactionStartTime"    # J
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 290
    iput-wide p2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mCommitStartTime:J

    .line 291
    iput-wide p4, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLayoutTime:J

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p6

    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mFinishTransactionTime:J

    .line 293
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchViewUpdatesTime:J

    .line 294
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/facebook/react/fabric/FabricUIManager;->flushMountItems()V

    .line 301
    :cond_0
    return-void

    .line 296
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateEventEmitterMountItem(ILjava/lang/Object;)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 2
    .param p1, "reactTag"    # I
    .param p2, "eventEmitter"    # Ljava/lang/Object;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 246
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateEventEmitterMountItem;

    move-object v1, p2

    check-cast v1, Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;

    invoke-direct {v0, p1, v1}, Lcom/facebook/react/fabric/mounting/mountitems/UpdateEventEmitterMountItem;-><init>(ILcom/facebook/react/fabric/jsi/EventEmitterWrapper;)V

    return-object v0
.end method

.method private updateLayoutMountItem(IIIII)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 7
    .param p1, "reactTag"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 228
    new-instance v6, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;-><init>(IIIII)V

    return-object v6
.end method

.method private updateLocalDataMountItem(ILcom/facebook/react/bridge/ReadableNativeMap;)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "newLocalData"    # Lcom/facebook/react/bridge/ReadableNativeMap;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 240
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLocalDataMountItem;

    invoke-direct {v0, p1, p2}, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLocalDataMountItem;-><init>(ILcom/facebook/react/bridge/ReadableNativeMap;)V

    return-object v0
.end method

.method private updatePropsMountItem(ILcom/facebook/react/bridge/ReadableNativeMap;)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "map"    # Lcom/facebook/react/bridge/ReadableNativeMap;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 234
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePropsMountItem;

    invoke-direct {v0, p1, p2}, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePropsMountItem;-><init>(ILcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method


# virtual methods
.method public addRootView(Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;)I
    .locals 4
    .param p2, "initialProps"    # Lcom/facebook/react/bridge/WritableMap;
    .param p3, "initialUITemplate"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;",
            ":",
            "Lcom/facebook/react/uimanager/common/MeasureSpecProvider;",
            ">(TT;",
            "Lcom/facebook/react/bridge/WritableMap;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 137
    .local p1, "rootView":Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;, "TT;"
    invoke-static {}, Lcom/facebook/react/uimanager/ReactRootViewTagGenerator;->getNextRootViewTag()I

    move-result v0

    .line 138
    .local v0, "rootTag":I
    new-instance v1, Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 139
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/react/uimanager/ThemedReactContext;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;)V

    .line 140
    .local v1, "reactContext":Lcom/facebook/react/uimanager/ThemedReactContext;
    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-virtual {v2, v0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->addRootView(ILcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;)V

    .line 141
    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/jsi/Binding;

    move-object v3, p2

    check-cast v3, Lcom/facebook/react/bridge/NativeMap;

    invoke-virtual {v2, v0, v3}, Lcom/facebook/react/fabric/jsi/Binding;->startSurface(ILcom/facebook/react/bridge/NativeMap;)V

    .line 143
    move-object v2, p1

    check-cast v2, Lcom/facebook/react/uimanager/common/MeasureSpecProvider;

    invoke-interface {v2}, Lcom/facebook/react/uimanager/common/MeasureSpecProvider;->getWidthMeasureSpec()I

    move-result v2

    move-object v3, p1

    check-cast v3, Lcom/facebook/react/uimanager/common/MeasureSpecProvider;

    invoke-interface {v3}, Lcom/facebook/react/uimanager/common/MeasureSpecProvider;->getHeightMeasureSpec()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/react/fabric/FabricUIManager;->updateRootLayoutSpecs(III)V

    .line 144
    if-eqz p3, :cond_0

    .line 145
    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/jsi/Binding;

    invoke-virtual {v2, v0, p3}, Lcom/facebook/react/fabric/jsi/Binding;->renderTemplateToSurface(ILjava/lang/String;)V

    .line 147
    :cond_0
    return v0
.end method

.method public clearJSResponder()V
    .locals 0

    .line 423
    return-void
.end method

.method public dispatchCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p1, "reactTag"    # I
    .param p2, "commandId"    # I
    .param p3, "commandArgs"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 410
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    new-instance v2, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;

    invoke-direct {v2, p1, p2, p3}, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;-><init>(IILcom/facebook/react/bridge/ReadableArray;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    monitor-exit v0

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPerformanceCounters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 432
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 433
    .local v0, "performanceCounters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mCommitStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "CommitStartTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLayoutTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "LayoutTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchViewUpdatesTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "DispatchViewUpdatesTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mRunStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "RunStartTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBatchedExecutionTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "BatchedExecutionTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mNonBatchedExecutionTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "NonBatchedExecutionTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mFinishTransactionTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "FinishFabricTransactionTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    return-object v0
.end method

.method public initialize()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    new-instance v1, Lcom/facebook/react/fabric/FabricEventEmitter;

    invoke-direct {v1, p0}, Lcom/facebook/react/fabric/FabricEventEmitter;-><init>(Lcom/facebook/react/fabric/FabricUIManager;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->registerEventEmitter(ILcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    .line 181
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventBeatManager:Lcom/facebook/react/fabric/jsi/EventBeatManager;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->addBatchEventDispatchedListener(Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;)V

    .line 182
    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventBeatManager:Lcom/facebook/react/fabric/jsi/EventBeatManager;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->removeBatchEventDispatchedListener(Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;)V

    .line 187
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->unregisterEventEmitter(I)V

    .line 188
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/jsi/Binding;

    invoke-virtual {v0}, Lcom/facebook/react/fabric/jsi/Binding;->unregister()V

    .line 189
    invoke-static {}, Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater;->clear()V

    .line 190
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 405
    return-void
.end method

.method public onHostPause()V
    .locals 3

    .line 400
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->DISPATCH_UI:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    .line 401
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->removeFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    .line 402
    return-void
.end method

.method public onHostResume()V
    .locals 3

    .line 394
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->DISPATCH_UI:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    .line 395
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    .line 396
    return-void
.end method

.method public onRequestEventBeat()V
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchAllEvents()V

    .line 154
    return-void
.end method

.method public profileNextBatch()V
    .locals 0

    .line 428
    return-void
.end method

.method public receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 4
    .param p1, "reactTag"    # I
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/facebook/react/bridge/WritableMap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 382
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getEventEmitter(I)Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;

    move-result-object v0

    .line 383
    .local v0, "eventEmitter":Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;
    if-nez v0, :cond_0

    .line 385
    sget-object v1, Lcom/facebook/react/fabric/FabricUIManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to invoke event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for reactTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void

    .line 389
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;->invoke(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 390
    return-void
.end method

.method public removeRootView(I)V
    .locals 2
    .param p1, "reactRootTag"    # I

    .line 159
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->removeRootView(I)V

    .line 160
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public setBinding(Lcom/facebook/react/fabric/jsi/Binding;)V
    .locals 0
    .param p1, "binding"    # Lcom/facebook/react/fabric/jsi/Binding;

    .line 354
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/jsi/Binding;

    .line 355
    return-void
.end method

.method public setJSResponder(IZ)V
    .locals 0
    .param p1, "reactTag"    # I
    .param p2, "blockNativeResponder"    # Z

    .line 418
    return-void
.end method

.method public updateRootLayoutSpecs(III)V
    .locals 8
    .param p1, "rootTag"    # I
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 367
    iget-object v6, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v7, Lcom/facebook/react/fabric/FabricUIManager$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/fabric/FabricUIManager$1;-><init>(Lcom/facebook/react/fabric/FabricUIManager;Lcom/facebook/react/bridge/ReactContext;III)V

    invoke-virtual {v6, v7}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnJSQueueThread(Ljava/lang/Runnable;)V

    .line 379
    return-void
.end method
