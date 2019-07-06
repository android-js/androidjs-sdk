.class public Lcom/facebook/react/uimanager/UIManagerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "UIManagerModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/OnBatchCompleteListener;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Lcom/facebook/react/bridge/UIManager;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "UIManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;,
        Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;,
        Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final NAME:Ljava/lang/String; = "UIManager"


# instance fields
.field private mBatchId:I

.field private final mCustomDirectEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/UIManagerModuleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMemoryTrimCallback:Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

.field private final mModuleConstants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

.field private mViewManagerConstantsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/WritableMap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mViewManagerConstantsCacheSize:I

.field private final mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 111
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v0

    sget-object v1, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->UI_MANAGER:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    invoke-interface {v0, v1}, Lcom/facebook/debug/holder/Printer;->shouldDisplayLogMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/react/uimanager/UIManagerModule;->DEBUG:Z

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;I)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "viewManagerResolver"    # Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;
    .param p3, "minTimeLeftInFrameForNonBatchedOperationMs"    # I

    .line 130
    new-instance v0, Lcom/facebook/react/uimanager/UIImplementationProvider;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/UIImplementationProvider;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/react/uimanager/UIManagerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;Lcom/facebook/react/uimanager/UIImplementationProvider;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;Lcom/facebook/react/uimanager/UIImplementationProvider;I)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "viewManagerResolver"    # Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;
    .param p3, "uiImplementationProvider"    # Lcom/facebook/react/uimanager/UIImplementationProvider;
    .param p4, "minTimeLeftInFrameForNonBatchedOperationMs"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 118
    new-instance v0, Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;Lcom/facebook/react/uimanager/UIManagerModule$1;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mMemoryTrimCallback:Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mListeners:Ljava/util/List;

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mBatchId:I

    .line 156
    invoke-static {p1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->initDisplayMetricsIfNotInitialized(Landroid/content/Context;)V

    .line 157
    new-instance v0, Lcom/facebook/react/uimanager/events/EventDispatcher;

    invoke-direct {v0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcher;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 158
    invoke-static {p2}, Lcom/facebook/react/uimanager/UIManagerModule;->createConstants(Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mModuleConstants:Ljava/util/Map;

    .line 159
    invoke-static {}, Lcom/facebook/react/uimanager/UIManagerModuleConstants;->getDirectEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mCustomDirectEvents:Ljava/util/Map;

    .line 160
    new-instance v0, Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-direct {v0, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;-><init>(Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 161
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    iget-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 162
    invoke-virtual {p3, p1, v0, v1, p4}, Lcom/facebook/react/uimanager/UIImplementationProvider;->createUIImplementation(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;I)Lcom/facebook/react/uimanager/UIImplementation;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 168
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;I)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p3, "minTimeLeftInFrameForNonBatchedOperationMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;I)V"
        }
    .end annotation

    .line 142
    .local p2, "viewManagersList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    new-instance v0, Lcom/facebook/react/uimanager/UIImplementationProvider;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/UIImplementationProvider;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/react/uimanager/UIManagerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Lcom/facebook/react/uimanager/UIImplementationProvider;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Lcom/facebook/react/uimanager/UIImplementationProvider;I)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p3, "uiImplementationProvider"    # Lcom/facebook/react/uimanager/UIImplementationProvider;
    .param p4, "minTimeLeftInFrameForNonBatchedOperationMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;",
            "Lcom/facebook/react/uimanager/UIImplementationProvider;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    .local p2, "viewManagersList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 118
    new-instance v0, Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;Lcom/facebook/react/uimanager/UIManagerModule$1;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mMemoryTrimCallback:Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mListeners:Ljava/util/List;

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mBatchId:I

    .line 178
    invoke-static {p1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->initDisplayMetricsIfNotInitialized(Landroid/content/Context;)V

    .line 179
    new-instance v0, Lcom/facebook/react/uimanager/events/EventDispatcher;

    invoke-direct {v0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcher;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 180
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mCustomDirectEvents:Ljava/util/Map;

    .line 181
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mCustomDirectEvents:Ljava/util/Map;

    invoke-static {p2, v1, v0}, Lcom/facebook/react/uimanager/UIManagerModule;->createConstants(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mModuleConstants:Ljava/util/Map;

    .line 182
    new-instance v0, Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-direct {v0, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 183
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    iget-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 184
    invoke-virtual {p3, p1, v0, v1, p4}, Lcom/facebook/react/uimanager/UIImplementationProvider;->createUIImplementation(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;I)Lcom/facebook/react/uimanager/UIImplementation;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 190
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 191
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/uimanager/UIManagerModule;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/uimanager/UIManagerModule;

    .line 83
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mCustomDirectEvents:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/react/uimanager/UIManagerModule;)Lcom/facebook/react/uimanager/UIImplementation;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/uimanager/UIManagerModule;

    .line 83
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    return-object v0
.end method

.method private computeConstantsForViewManager(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 7
    .param p1, "viewManagerName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 325
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 326
    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/UIImplementation;->resolveViewManager(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 327
    .local v1, "targetView":Lcom/facebook/react/uimanager/ViewManager;
    :goto_0
    if-nez v1, :cond_1

    .line 328
    return-object v0

    .line 331
    :cond_1
    const-wide/16 v2, 0x0

    const-string v4, "UIManagerModule.getConstantsForViewManager"

    invoke-static {v2, v3, v4}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v4

    .line 333
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/ViewManager;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ViewManager"

    invoke-virtual {v4, v6, v5}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 334
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "Lazy"

    invoke-virtual {v4, v6, v5}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v4

    .line 335
    invoke-virtual {v4}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 337
    :try_start_0
    iget-object v4, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mCustomDirectEvents:Ljava/util/Map;

    .line 338
    invoke-static {v1, v0, v0, v0, v4}, Lcom/facebook/react/uimanager/UIManagerModuleConstantsHelper;->createConstantsForViewManager(Lcom/facebook/react/uimanager/ViewManager;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 340
    .local v4, "viewManagerConstants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_2

    .line 341
    invoke-static {v4}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-static {v2, v3}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 341
    return-object v0

    .line 343
    :cond_2
    nop

    .line 345
    invoke-static {v2, v3}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 343
    return-object v0

    .line 345
    .end local v4    # "viewManagerConstants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Lcom/facebook/systrace/SystraceMessage;->endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 346
    throw v0
.end method

.method private static createConstants(Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;)Ljava/util/Map;
    .locals 5
    .param p0, "viewManagerResolver"    # Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_CONSTANTS_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 255
    const-wide/16 v0, 0x0

    const-string v2, "CreateUIManagerConstants"

    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 256
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Lazy"

    invoke-virtual {v2, v4, v3}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 257
    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 259
    :try_start_0
    invoke-static {p0}, Lcom/facebook/react/uimanager/UIManagerModuleConstantsHelper;->createConstants(Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;)Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 262
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_CONSTANTS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 259
    return-object v2

    .line 261
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 262
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_CONSTANTS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 263
    throw v2
.end method

.method private static createConstants(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 270
    .local p0, "viewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    .local p1, "customBubblingEvents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "customDirectEvents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_CONSTANTS_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 271
    const-wide/16 v0, 0x0

    const-string v2, "CreateUIManagerConstants"

    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 272
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Lazy"

    invoke-virtual {v2, v4, v3}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 273
    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 275
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/facebook/react/uimanager/UIManagerModuleConstantsHelper;->createConstants(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 279
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_CONSTANTS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 275
    return-object v2

    .line 278
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 279
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_CONSTANTS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 280
    throw v2
.end method


# virtual methods
.method public addAnimation(IILcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "animationID"    # I
    .param p3, "onSuccess"    # Lcom/facebook/react/bridge/Callback;

    .line 639
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->addAnimation(IILcom/facebook/react/bridge/Callback;)V

    .line 640
    return-void
.end method

.method public addRootView(Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;",
            ":",
            "Lcom/facebook/react/uimanager/common/MeasureSpecProvider;",
            ">(TT;)I"
        }
    .end annotation

    .line 381
    .local p1, "rootView":Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/react/uimanager/UIManagerModule;->addRootView(Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addRootView(Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;)I
    .locals 6
    .param p2, "initialProps"    # Lcom/facebook/react/bridge/WritableMap;
    .param p3, "initialUITemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
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

    .line 396
    .local p1, "rootView":Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;, "TT;"
    const-wide/16 v0, 0x0

    const-string v2, "UIManagerModule.addRootView"

    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 397
    invoke-static {}, Lcom/facebook/react/uimanager/ReactRootViewTagGenerator;->getNextRootViewTag()I

    move-result v2

    .line 398
    .local v2, "tag":I
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    .line 399
    .local v3, "reactApplicationContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    new-instance v4, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 400
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/facebook/react/uimanager/ThemedReactContext;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;)V

    .line 402
    .local v4, "themedRootContext":Lcom/facebook/react/uimanager/ThemedReactContext;
    iget-object v5, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v5, p1, v2, v4}, Lcom/facebook/react/uimanager/UIImplementation;->registerRootView(Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;ILcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 404
    new-instance v5, Lcom/facebook/react/uimanager/UIManagerModule$2;

    invoke-direct {v5, p0, v3, v2}, Lcom/facebook/react/uimanager/UIManagerModule$2;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;Lcom/facebook/react/bridge/ReactApplicationContext;I)V

    invoke-virtual {p1, v5}, Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;->setOnSizeChangedListener(Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout$OnSizeChangedListener;)V

    .line 418
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 419
    return v2
.end method

.method public addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V
    .locals 1
    .param p1, "block"    # Lcom/facebook/react/uimanager/UIBlock;

    .line 793
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    .line 794
    return-void
.end method

.method public addUIManagerListener(Lcom/facebook/react/uimanager/UIManagerModuleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/uimanager/UIManagerModuleListener;

    .line 807
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    return-void
.end method

.method public clearJSResponder()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->clearJSResponder()V

    .line 657
    return-void
.end method

.method public configureNextLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "success"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "error"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 732
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->configureNextLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 733
    return-void
.end method

.method public createView(ILjava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "rootViewTag"    # I
    .param p4, "props"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 456
    sget-boolean v0, Lcom/facebook/react/uimanager/UIManagerModule;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(UIManager.createView) tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", props: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "message":Ljava/lang/String;
    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v1

    sget-object v2, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->UI_MANAGER:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    invoke-interface {v1, v2, v0}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;)V

    .line 462
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/UIImplementation;->createView(ILjava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V

    .line 463
    return-void
.end method

.method public dismissPopupMenu()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->dismissPopupMenu()V

    .line 700
    return-void
.end method

.method public dispatchCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "commandId"    # I
    .param p3, "commandArgs"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 670
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewManagerCommand(IILcom/facebook/react/bridge/ReadableArray;)V

    .line 671
    return-void
.end method

.method public dispatchViewManagerCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .param p1, "reactTag"    # I
    .param p2, "commandId"    # I
    .param p3, "commandArgs"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 664
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    .line 665
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/bridge/UIManager;->dispatchCommand(IILcom/facebook/react/bridge/ReadableArray;)V

    .line 666
    return-void
.end method

.method public findSubviewIn(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .param p1, "reactTag"    # I
    .param p2, "point"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 618
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 619
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    .line 616
    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->findSubviewIn(IFFLcom/facebook/react/bridge/Callback;)V

    .line 621
    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mModuleConstants:Ljava/util/Map;

    return-object v0
.end method

.method public getConstantsForViewManager(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 2
    .param p1, "viewManagerName"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerConstantsCache:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 312
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerConstantsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/WritableMap;

    .line 314
    .local v0, "constants":Lcom/facebook/react/bridge/WritableMap;
    iget v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerConstantsCacheSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerConstantsCacheSize:I

    if-gtz v1, :cond_0

    .line 316
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerConstantsCache:Ljava/util/Map;

    .line 318
    :cond_0
    return-object v0

    .line 320
    .end local v0    # "constants":Lcom/facebook/react/bridge/WritableMap;
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/UIManagerModule;->computeConstantsForViewManager(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultEventTypes()Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 351
    invoke-static {}, Lcom/facebook/react/uimanager/UIManagerModuleConstantsHelper;->getDefaultExportableEventTypes()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v0

    return-object v0
.end method

.method public getDirectEventNamesResolver()Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;
    .locals 1

    .line 356
    new-instance v0, Lcom/facebook/react/uimanager/UIManagerModule$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/UIManagerModule$1;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;)V

    return-object v0
.end method

.method public getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 203
    const-string v0, "UIManager"

    return-object v0
.end method

.method public getPerformanceCounters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->getProfiledBatchPerfCounters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUIImplementation()Lcom/facebook/react/uimanager/UIImplementation;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    return-object v0
.end method

.method public getViewManagerRegistry_DO_NOT_USE()Lcom/facebook/react/uimanager/ViewManagerRegistry;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .line 213
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mMemoryTrimCallback:Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 214
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 215
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const-class v2, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 214
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->registerEventEmitter(ILcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    .line 216
    return-void
.end method

.method public invalidateNodeLayout(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 829
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->resolveShadowNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 830
    .local v0, "node":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-nez v0, :cond_0

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning : attempted to dirty a non-existent react shadow node. reactTag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    return-void

    .line 836
    :cond_0
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->dirty()V

    .line 837
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdates(I)V

    .line 838
    return-void
.end method

.method public manageChildren(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 14
    .param p1, "viewTag"    # I
    .param p2, "moveFrom"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "moveTo"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "addChildTags"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "addAtIndices"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "removeFrom"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 495
    sget-boolean v0, Lcom/facebook/react/uimanager/UIManagerModule;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(UIManager.manageChildren) tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", moveFrom: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", moveTo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", addTags: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", atIndices: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p5

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", removeFrom: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p6

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "message":Ljava/lang/String;
    const-string v2, "ReactNative"

    invoke-static {v2, v0}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v2

    sget-object v3, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->UI_MANAGER:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    invoke-interface {v2, v3, v0}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;)V

    goto :goto_0

    .line 495
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    move v1, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    .line 512
    :goto_0
    move-object v0, p0

    iget-object v2, v0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/facebook/react/uimanager/UIImplementation;->manageChildren(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 514
    return-void
.end method

.method public measure(ILcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->measure(ILcom/facebook/react/bridge/Callback;)V

    .line 561
    return-void
.end method

.method public measureInWindow(ILcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->measureInWindow(ILcom/facebook/react/bridge/Callback;)V

    .line 571
    return-void
.end method

.method public measureLayout(IILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "ancestorTag"    # I
    .param p3, "errorCallback"    # Lcom/facebook/react/bridge/Callback;
    .param p4, "successCallback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayout(IILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 587
    return-void
.end method

.method public measureLayoutRelativeToParent(ILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "errorCallback"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "successCallback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayoutRelativeToParent(ILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 600
    return-void
.end method

.method public onBatchComplete()V
    .locals 5

    .line 751
    iget v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mBatchId:I

    .line 752
    .local v0, "batchId":I
    iget v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mBatchId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mBatchId:I

    .line 754
    const-wide/16 v1, 0x0

    const-string v3, "onBatchCompleteUI"

    invoke-static {v1, v2, v3}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v3

    .line 755
    const-string v4, "BatchId"

    invoke-virtual {v3, v4, v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v3

    .line 756
    invoke-virtual {v3}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 757
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/uimanager/UIManagerModuleListener;

    .line 758
    .local v4, "listener":Lcom/facebook/react/uimanager/UIManagerModuleListener;
    invoke-interface {v4, p0}, Lcom/facebook/react/uimanager/UIManagerModuleListener;->willDispatchViewUpdates(Lcom/facebook/react/uimanager/UIManagerModule;)V

    .line 759
    .end local v4    # "listener":Lcom/facebook/react/uimanager/UIManagerModuleListener;
    goto :goto_0

    .line 761
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v3, v0}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdates(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 764
    nop

    .line 765
    return-void

    .line 763
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 764
    throw v3

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 2

    .line 236
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->onCatalystInstanceDestroy()V

    .line 237
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->onCatalystInstanceDestroyed()V

    .line 239
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mMemoryTrimCallback:Lcom/facebook/react/uimanager/UIManagerModule$MemoryTrimCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 240
    invoke-static {}, Lcom/facebook/react/uimanager/YogaNodePool;->get()Lcom/facebook/react/common/ClearableSynchronizedPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/common/ClearableSynchronizedPool;->clear()V

    .line 241
    invoke-static {}, Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater;->clear()V

    .line 242
    return-void
.end method

.method public onHostDestroy()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->onHostDestroy()V

    .line 232
    return-void
.end method

.method public onHostPause()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->onHostPause()V

    .line 227
    return-void
.end method

.method public onHostResume()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->onHostResume()V

    .line 222
    return-void
.end method

.method public playTouchSound()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 675
    nop

    .line 676
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 677
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 678
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 680
    :cond_0
    return-void
.end method

.method public preComputeConstantsForViewManager(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    .local p1, "viewManagerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 292
    .local v0, "constantsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 293
    .local v2, "viewManagerName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/facebook/react/uimanager/UIManagerModule;->computeConstantsForViewManager(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 294
    .local v3, "constants":Lcom/facebook/react/bridge/WritableMap;
    if-eqz v3, :cond_0

    .line 295
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .end local v2    # "viewManagerName":Ljava/lang/String;
    .end local v3    # "constants":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    goto :goto_0

    .line 305
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerConstantsCacheSize:I

    .line 306
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mViewManagerConstantsCache:Ljava/util/Map;

    .line 307
    return-void
.end method

.method public prependUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V
    .locals 1
    .param p1, "block"    # Lcom/facebook/react/uimanager/UIBlock;

    .line 803
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->prependUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    .line 804
    return-void
.end method

.method public profileNextBatch()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIImplementation;->profileNextBatch()V

    .line 372
    return-void
.end method

.method public registerAnimation(Lcom/facebook/react/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Lcom/facebook/react/animation/Animation;

    .line 632
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->registerAnimation(Lcom/facebook/react/animation/Animation;)V

    .line 633
    return-void
.end method

.method public removeAnimation(II)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "animationID"    # I

    .line 644
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->removeAnimation(II)V

    .line 645
    return-void
.end method

.method public removeRootView(I)V
    .locals 1
    .param p1, "rootViewTag"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->removeRootView(I)V

    .line 425
    return-void
.end method

.method public removeSubviewsFromContainerWithID(I)V
    .locals 1
    .param p1, "containerTag"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->removeSubviewsFromContainerWithID(I)V

    .line 552
    return-void
.end method

.method public removeUIManagerListener(Lcom/facebook/react/uimanager/UIManagerModuleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/uimanager/UIManagerModuleListener;

    .line 811
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 812
    return-void
.end method

.method public replaceExistingNonRootView(II)V
    .locals 1
    .param p1, "oldTag"    # I
    .param p2, "newTag"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->replaceExistingNonRootView(II)V

    .line 541
    return-void
.end method

.method public resolveRootTagFromReactTag(I)I
    .locals 1
    .param p1, "reactTag"    # I

    .line 822
    invoke-static {p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->isRootTag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 824
    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->resolveRootTagFromReactTag(I)I

    move-result v0

    .line 822
    :goto_0
    return v0
.end method

.method public sendAccessibilityEvent(II)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "eventType"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->sendAccessibilityEvent(II)V

    .line 779
    return-void
.end method

.method public setChildren(ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p1, "viewTag"    # I
    .param p2, "childrenTags"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 525
    sget-boolean v0, Lcom/facebook/react/uimanager/UIManagerModule;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(UIManager.setChildren) tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "message":Ljava/lang/String;
    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v1

    sget-object v2, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->UI_MANAGER:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    invoke-interface {v1, v2, v0}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;)V

    .line 530
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->setChildren(ILcom/facebook/react/bridge/ReadableArray;)V

    .line 531
    return-void
.end method

.method public setJSResponder(IZ)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "blockNativeResponder"    # Z
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->setJSResponder(IZ)V

    .line 651
    return-void
.end method

.method public setLayoutAnimationEnabledExperimental(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 715
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->setLayoutAnimationEnabledExperimental(Z)V

    .line 716
    return-void
.end method

.method public setViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 769
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->setViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;)V

    .line 770
    return-void
.end method

.method public setViewLocalData(ILjava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 441
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 443
    .local v0, "reactApplicationContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->assertOnUiQueueThread()V

    .line 445
    new-instance v1, Lcom/facebook/react/uimanager/UIManagerModule$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/facebook/react/uimanager/UIManagerModule$3;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;Lcom/facebook/react/bridge/ReactContext;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    .line 452
    return-void
.end method

.method public showPopupMenu(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "items"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "error"    # Lcom/facebook/react/bridge/Callback;
    .param p4, "success"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/UIImplementation;->showPopupMenu(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 695
    return-void
.end method

.method public updateNodeSize(III)V
    .locals 1
    .param p1, "nodeViewTag"    # I
    .param p2, "newWidth"    # I
    .param p3, "newHeight"    # I

    .line 428
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->assertOnNativeModulesQueueThread()V

    .line 430
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->updateNodeSize(III)V

    .line 431
    return-void
.end method

.method public updateRootLayoutSpecs(III)V
    .locals 8
    .param p1, "rootViewTag"    # I
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 846
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v6

    .line 847
    .local v6, "reactApplicationContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    new-instance v7, Lcom/facebook/react/uimanager/UIManagerModule$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/uimanager/UIManagerModule$4;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;Lcom/facebook/react/bridge/ReactContext;III)V

    invoke-virtual {v6, v7}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    .line 855
    return-void
.end method

.method public updateView(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "props"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 467
    sget-boolean v0, Lcom/facebook/react/uimanager/UIManagerModule;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(UIManager.updateView) tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", props: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "message":Ljava/lang/String;
    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v1

    sget-object v2, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->UI_MANAGER:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    invoke-interface {v1, v2, v0}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;)V

    .line 473
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->updateView(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 474
    return-void
.end method

.method public viewIsDescendantOf(IILcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "ancestorReactTag"    # I
    .param p3, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 627
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIManagerModule;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->viewIsDescendantOf(IILcom/facebook/react/bridge/Callback;)V

    .line 628
    return-void
.end method
