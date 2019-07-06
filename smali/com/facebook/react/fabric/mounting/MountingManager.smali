.class public Lcom/facebook/react/fabric/mounting/MountingManager;
.super Ljava/lang/Object;
.source "MountingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    }
.end annotation


# instance fields
.field private final mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

.field private final mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

.field private final mViewPool:Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V
    .locals 1
    .param p1, "viewManagerRegistry"    # Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/facebook/react/uimanager/RootViewManager;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/RootViewManager;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 52
    new-instance v0, Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;

    invoke-direct {v0, p1}, Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewPool:Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;

    .line 53
    return-void
.end method

.method private dropView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 72
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 75
    .local v0, "reactTag":I
    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v1

    .line 76
    .local v1, "state":Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    iget-object v2, v1, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    .line 78
    .local v2, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    iget-boolean v3, v1, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mIsRoot:Z

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v2, p1}, Lcom/facebook/react/uimanager/ViewManager;->onDropViewInstance(Landroid/view/View;)V

    .line 82
    :cond_0
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    instance-of v3, v2, Lcom/facebook/react/uimanager/ViewGroupManager;

    if-eqz v3, :cond_2

    .line 83
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    .line 84
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewGroupManager(Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;)Lcom/facebook/react/uimanager/ViewGroupManager;

    move-result-object v4

    .line 85
    .local v4, "viewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<Landroid/view/ViewGroup;>;"
    invoke-virtual {v4, v3}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 86
    invoke-virtual {v4, v3, v5}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v6

    .line 87
    .local v6, "child":Landroid/view/View;
    iget-object v7, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 88
    invoke-direct {p0, v6}, Lcom/facebook/react/fabric/mounting/MountingManager;->dropView(Landroid/view/View;)V

    .line 90
    :cond_1
    invoke-virtual {v4, v3, v5}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeViewAt(Landroid/view/ViewGroup;I)V

    .line 85
    .end local v6    # "child":Landroid/view/View;
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 94
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    .end local v4    # "viewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;, "Lcom/facebook/react/uimanager/ViewGroupManager<Landroid/view/ViewGroup;>;"
    .end local v5    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 96
    .local v3, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewPool:Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;

    move-object v5, v3

    check-cast v5, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 97
    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/uimanager/ViewManager;

    invoke-virtual {v6}, Lcom/facebook/react/uimanager/ViewManager;->getName()Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-virtual {v4, v5, v6, p1}, Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;->returnToPool(Lcom/facebook/react/uimanager/ThemedReactContext;Ljava/lang/String;Landroid/view/View;)V

    .line 98
    return-void
.end method

.method private static getViewGroupManager(Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;)Lcom/facebook/react/uimanager/ViewGroupManager;
    .locals 2
    .param p0, "viewState"    # Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;",
            ")",
            "Lcom/facebook/react/uimanager/ViewGroupManager<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    check-cast v0, Lcom/facebook/react/uimanager/ViewGroupManager;

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to find ViewManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    .locals 4
    .param p1, "tag"    # I

    .line 127
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    .line 128
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    if-eqz v0, :cond_0

    .line 131
    return-object v0

    .line 129
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find viewState for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addRootView(ILcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;)V
    .locals 9
    .param p1, "reactRootTag"    # I
    .param p2, "rootView"    # Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 57
    invoke-virtual {p2}, Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    iget-object v5, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v8

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;ZLcom/facebook/react/fabric/mounting/MountingManager$1;)V

    .line 64
    invoke-virtual {v0, v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p2, p1}, Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;->setId(I)V

    .line 67
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v1, "Trying to add a root view with an explicit id already set. React Native uses the id field to track react tags and will overwrite this field. If that is fine, explicitly overwrite the id field to View.NO_ID before calling addRootView."

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addViewAt(III)V
    .locals 6
    .param p1, "parentTag"    # I
    .param p2, "tag"    # I
    .param p3, "index"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 116
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 117
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    .line 118
    .local v0, "parentViewState":Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    .line 119
    .local v1, "parentView":Landroid/view/ViewGroup;
    invoke-direct {p0, p2}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v2

    iget-object v2, v2, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    .line 120
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 123
    invoke-static {v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewGroupManager(Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;)Lcom/facebook/react/uimanager/ViewGroupManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p3}, Lcom/facebook/react/uimanager/ViewGroupManager;->addView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 124
    return-void

    .line 121
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find view for tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public createView(Lcom/facebook/react/uimanager/ThemedReactContext;Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "themedReactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "reactTag"    # I
    .param p4, "isVirtual"    # Z
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 174
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 177
    .local v1, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    if-nez p4, :cond_0

    .line 178
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v2, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewPool:Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;

    invoke-virtual {v2, p2, p1}, Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;->getOrCreateView(Ljava/lang/String;Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p3}, Landroid/view/View;->setId(I)V

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    const/4 v5, 0x0

    invoke-direct {v4, p3, v0, v1, v5}, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;Lcom/facebook/react/fabric/mounting/MountingManager$1;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method

.method public deleteView(I)V
    .locals 3
    .param p1, "reactTag"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 235
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 236
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    .line 237
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->dropView(Landroid/view/View;)V

    goto :goto_0

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :goto_0
    return-void
.end method

.method public getEventEmitter(I)Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;
    .locals 2
    .param p1, "reactTag"    # I
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    .line 307
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mEventEmitter:Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;

    :goto_0
    return-object v1
.end method

.method public measure(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableNativeMap;Lcom/facebook/react/bridge/ReadableNativeMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J
    .locals 11
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "localData"    # Lcom/facebook/react/bridge/ReadableNativeMap;
    .param p4, "props"    # Lcom/facebook/react/bridge/ReadableNativeMap;
    .param p5, "width"    # F
    .param p6, "widthMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p7, "height"    # F
    .param p8, "heightMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 299
    move-object v0, p0

    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 300
    move-object v2, p2

    invoke-virtual {v1, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v3

    .line 301
    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v3 .. v10}, Lcom/facebook/react/uimanager/ViewManager;->measure(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/ReadableNativeMap;Lcom/facebook/react/bridge/ReadableNativeMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J

    move-result-wide v3

    .line 299
    return-wide v3
.end method

.method public preallocateView(Lcom/facebook/react/uimanager/ThemedReactContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "componentName"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewPool:Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/fabric/mounting/ContextBasedViewPool;->createView(Lcom/facebook/react/uimanager/ThemedReactContext;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public receiveCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 4
    .param p1, "reactTag"    # I
    .param p2, "commandId"    # I
    .param p3, "commandArgs"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 135
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    .line 137
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, p2, p3}, Lcom/facebook/react/uimanager/ViewManager;->receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V

    .line 146
    return-void

    .line 142
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find viewState view for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find viewState manager for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeRootView(I)V
    .locals 3
    .param p1, "reactRootTag"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 103
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 104
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    .line 105
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mIsRoot:Z

    if-nez v1, :cond_1

    .line 106
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not registered as a root view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/SoftAssertions;->assertUnreachable(Ljava/lang/String;)V

    .line 109
    :cond_1
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/facebook/react/fabric/mounting/MountingManager;->dropView(Landroid/view/View;)V

    .line 112
    :cond_2
    return-void
.end method

.method public removeViewAt(II)V
    .locals 5
    .param p1, "parentTag"    # I
    .param p2, "index"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 158
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 159
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    .line 160
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    .line 161
    .local v1, "parentView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 165
    invoke-static {v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewGroupManager(Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;)Lcom/facebook/react/uimanager/ViewGroupManager;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeViewAt(Landroid/view/ViewGroup;I)V

    .line 166
    return-void

    .line 162
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find view for tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateEventEmitter(ILcom/facebook/react/fabric/jsi/EventEmitterWrapper;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "eventEmitter"    # Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 283
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 284
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    .line 285
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    iput-object p2, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mEventEmitter:Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;

    .line 286
    return-void
.end method

.method public updateLayout(IIIII)V
    .locals 5
    .param p1, "reactTag"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 206
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 208
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    .line 210
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    iget-boolean v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mIsRoot:Z

    if-eqz v1, :cond_0

    .line 211
    return-void

    .line 214
    :cond_0
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    .line 215
    .local v1, "viewToUpdate":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 219
    nop

    .line 220
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 221
    invoke-static {p5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 219
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 223
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 224
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Lcom/facebook/react/uimanager/RootView;

    if-eqz v3, :cond_1

    .line 225
    invoke-interface {v2}, Landroid/view/ViewParent;->requestLayout()V

    .line 230
    :cond_1
    add-int v3, p2, p4

    add-int v4, p3, p5

    invoke-virtual {v1, p2, p3, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 231
    return-void

    .line 216
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find View for tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateLocalData(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 6
    .param p1, "reactTag"    # I
    .param p2, "newLocalData"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 246
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 247
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    .line 248
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    if-eqz v1, :cond_3

    .line 252
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentLocalData:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v1, :cond_0

    .line 253
    const-string v1, "hash"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentLocalData:Lcom/facebook/react/bridge/ReadableMap;

    .line 254
    invoke-interface {v2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentLocalData:Lcom/facebook/react/bridge/ReadableMap;

    .line 255
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    iput-object p2, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentLocalData:Lcom/facebook/react/bridge/ReadableMap;

    .line 261
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    .line 263
    .local v1, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    if-eqz v1, :cond_2

    .line 266
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    iget-object v3, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    new-instance v4, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    iget-object v5, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentLocalData:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {v4, v5}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 267
    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/react/uimanager/ViewManager;->updateLocalData(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)Ljava/lang/Object;

    move-result-object v2

    .line 271
    .local v2, "extraData":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 272
    iget-object v3, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Lcom/facebook/react/uimanager/ViewManager;->updateExtraData(Landroid/view/View;Ljava/lang/Object;)V

    .line 274
    :cond_1
    return-void

    .line 264
    .end local v2    # "extraData":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find ViewManager for tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 249
    .end local v1    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not update local data to view without props: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateProps(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .param p1, "reactTag"    # I
    .param p2, "props"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 188
    if-nez p2, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 192
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    .line 193
    .local v0, "viewState":Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    new-instance v1, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-direct {v1, p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    iput-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 194
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    .line 196
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 200
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/ViewManager;

    iget-object v3, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 201
    invoke-virtual {v2, v1, v3}, Lcom/facebook/react/uimanager/ViewManager;->updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 202
    return-void

    .line 197
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find view for tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
