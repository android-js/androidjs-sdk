.class public Lcom/facebook/react/fabric/FabricJSIModuleProvider;
.super Ljava/lang/Object;
.source "FabricJSIModuleProvider.java"

# interfaces
.implements Lcom/facebook/react/bridge/JSIModuleProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/react/bridge/JSIModuleProvider<",
        "Lcom/facebook/react/bridge/UIManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final mComponentFactoryDelegate:Lcom/facebook/react/fabric/jsi/ComponentFactoryDelegate;

.field private final mConfig:Lcom/facebook/react/fabric/ReactNativeConfig;

.field private final mJSContext:Lcom/facebook/react/bridge/JavaScriptContextHolder;

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/JavaScriptContextHolder;Lcom/facebook/react/fabric/jsi/ComponentFactoryDelegate;Lcom/facebook/react/fabric/ReactNativeConfig;)V
    .locals 0
    .param p1, "reactApplicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "jsContext"    # Lcom/facebook/react/bridge/JavaScriptContextHolder;
    .param p3, "componentFactoryDelegate"    # Lcom/facebook/react/fabric/jsi/ComponentFactoryDelegate;
    .param p4, "config"    # Lcom/facebook/react/fabric/ReactNativeConfig;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 48
    iput-object p2, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mJSContext:Lcom/facebook/react/bridge/JavaScriptContextHolder;

    .line 49
    iput-object p3, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mComponentFactoryDelegate:Lcom/facebook/react/fabric/jsi/ComponentFactoryDelegate;

    .line 50
    iput-object p4, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mConfig:Lcom/facebook/react/fabric/ReactNativeConfig;

    .line 51
    return-void
.end method

.method private createUIManager(Lcom/facebook/react/fabric/jsi/EventBeatManager;)Lcom/facebook/react/fabric/FabricUIManager;
    .locals 7
    .param p1, "eventBeatManager"    # Lcom/facebook/react/fabric/jsi/EventBeatManager;

    .line 75
    const-wide/16 v0, 0x0

    const-string v2, "FabricJSIModuleProvider.createUIManager"

    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v3, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 78
    .local v2, "nativeModule":Lcom/facebook/react/uimanager/UIManagerModule;
    invoke-virtual {v2}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v3

    .line 79
    .local v3, "eventDispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    new-instance v4, Lcom/facebook/react/fabric/FabricUIManager;

    iget-object v5, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 82
    invoke-virtual {v2}, Lcom/facebook/react/uimanager/UIManagerModule;->getViewManagerRegistry_DO_NOT_USE()Lcom/facebook/react/uimanager/ViewManagerRegistry;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3, p1}, Lcom/facebook/react/fabric/FabricUIManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/fabric/jsi/EventBeatManager;)V

    .line 86
    .local v4, "fabricUIManager":Lcom/facebook/react/fabric/FabricUIManager;
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 87
    return-object v4
.end method

.method private static loadClasses()V
    .locals 1

    .line 93
    const-class v0, Lcom/facebook/react/fabric/FabricEventEmitter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    const-class v0, Lcom/facebook/react/fabric/FabricUIManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    const-class v0, Lcom/facebook/react/fabric/GuardedFrameCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/DeleteMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/InsertMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateEventEmitterMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLocalDataMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePropsMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    const-class v0, Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    const-class v0, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    const-class v0, Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    const-class v0, Lcom/facebook/react/fabric/mounting/ViewPool;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    const-class v0, Lcom/facebook/react/fabric/jsi/Binding;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    const-class v0, Lcom/facebook/react/fabric/jsi/ComponentFactoryDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    const-class v0, Lcom/facebook/react/fabric/jsi/ComponentRegistry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    const-class v0, Lcom/facebook/react/fabric/jsi/EventBeatManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    const-class v0, Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    const-class v0, Lcom/facebook/react/fabric/jsi/FabricSoLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Lcom/facebook/react/bridge/JSIModule;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->get()Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/facebook/react/bridge/UIManager;
    .locals 12

    .line 55
    new-instance v0, Lcom/facebook/react/fabric/jsi/EventBeatManager;

    iget-object v1, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mJSContext:Lcom/facebook/react/bridge/JavaScriptContextHolder;

    iget-object v2, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/fabric/jsi/EventBeatManager;-><init>(Lcom/facebook/react/bridge/JavaScriptContextHolder;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 57
    .local v0, "eventBeatManager":Lcom/facebook/react/fabric/jsi/EventBeatManager;
    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->createUIManager(Lcom/facebook/react/fabric/jsi/EventBeatManager;)Lcom/facebook/react/fabric/FabricUIManager;

    move-result-object v1

    .line 58
    .local v1, "uiManager":Lcom/facebook/react/fabric/FabricUIManager;
    const-wide/16 v10, 0x0

    const-string v2, "FabricJSIModuleProvider.registerBinding"

    invoke-static {v10, v11, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 60
    new-instance v3, Lcom/facebook/react/fabric/jsi/Binding;

    invoke-direct {v3}, Lcom/facebook/react/fabric/jsi/Binding;-><init>()V

    .line 62
    .local v3, "binding":Lcom/facebook/react/fabric/jsi/Binding;
    invoke-static {}, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->loadClasses()V

    .line 63
    iget-object v2, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 65
    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v2

    .line 66
    invoke-interface {v2}, Lcom/facebook/react/bridge/CatalystInstance;->getReactQueueConfiguration()Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;

    move-result-object v2

    .line 67
    invoke-interface {v2}, Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;->getJSQueueThread()Lcom/facebook/react/bridge/queue/MessageQueueThread;

    move-result-object v2

    .line 68
    .local v2, "jsMessageQueueThread":Lcom/facebook/react/bridge/queue/MessageQueueThread;
    iget-object v4, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mJSContext:Lcom/facebook/react/bridge/JavaScriptContextHolder;

    iget-object v8, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mComponentFactoryDelegate:Lcom/facebook/react/fabric/jsi/ComponentFactoryDelegate;

    iget-object v9, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mConfig:Lcom/facebook/react/fabric/ReactNativeConfig;

    move-object v5, v1

    move-object v6, v0

    move-object v7, v2

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/react/fabric/jsi/Binding;->register(Lcom/facebook/react/bridge/JavaScriptContextHolder;Lcom/facebook/react/fabric/FabricUIManager;Lcom/facebook/react/fabric/jsi/EventBeatManager;Lcom/facebook/react/bridge/queue/MessageQueueThread;Lcom/facebook/react/fabric/jsi/ComponentFactoryDelegate;Lcom/facebook/react/fabric/ReactNativeConfig;)V

    .line 70
    invoke-static {v10, v11}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 71
    return-object v1
.end method
