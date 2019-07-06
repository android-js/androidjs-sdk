.class public Lcom/facebook/react/uimanager/UIImplementation;
.super Ljava/lang/Object;
.source "UIImplementation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;
    }
.end annotation


# instance fields
.field protected final mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private mLastCalculateLayoutTime:J

.field protected mLayoutUpdateListener:Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mMeasureBuffer:[I

.field private final mMeasuredRootNodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

.field private final mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

.field protected final mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field protected final mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

.field private final mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

.field protected uiImplementationThreadLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;Lcom/facebook/react/uimanager/events/EventDispatcher;I)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "viewManagerResolver"    # Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;
    .param p3, "eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;
    .param p4, "minTimeLeftInFrameForNonBatchedOperationMs"    # I

    .line 72
    new-instance v0, Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-direct {v0, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;-><init>(Lcom/facebook/react/uimanager/UIManagerModule$ViewManagerResolver;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/facebook/react/uimanager/UIImplementation;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;I)V

    .line 77
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "viewManagers"    # Lcom/facebook/react/uimanager/ViewManagerRegistry;
    .param p3, "operationsQueue"    # Lcom/facebook/react/uimanager/UIViewOperationQueue;
    .param p4, "eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasuredRootNodes:Ljava/util/Set;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLastCalculateLayoutTime:J

    .line 111
    iput-object p1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 112
    iput-object p2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 113
    iput-object p3, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    .line 114
    new-instance v0, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/ShadowNodeRegistry;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    .line 117
    iput-object p4, p0, Lcom/facebook/react/uimanager/UIImplementation;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 118
    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;I)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "viewManagers"    # Lcom/facebook/react/uimanager/ViewManagerRegistry;
    .param p3, "eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;
    .param p4, "minTimeLeftInFrameForNonBatchedOperationMs"    # I

    .line 96
    new-instance v0, Lcom/facebook/react/uimanager/UIViewOperationQueue;

    new-instance v1, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    invoke-direct {v1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V

    invoke-direct {v0, p1, v1, p4}, Lcom/facebook/react/uimanager/UIViewOperationQueue;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;I)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/react/uimanager/UIImplementation;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Lcom/facebook/react/uimanager/events/EventDispatcher;I)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p3, "eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;
    .param p4, "minTimeLeftInFrameForNonBatchedOperationMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;",
            "Lcom/facebook/react/uimanager/events/EventDispatcher;",
            "I)V"
        }
    .end annotation

    .line 84
    .local p2, "viewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    new-instance v0, Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-direct {v0, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/facebook/react/uimanager/UIImplementation;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;I)V

    .line 89
    return-void
.end method

.method private assertNodeDoesNotNeedCustomLayoutForChildren(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 5
    .param p1, "node"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 936
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getViewClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ViewManager;

    .line 938
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    instance-of v1, v0, Lcom/facebook/react/uimanager/ViewGroupManager;

    if-eqz v1, :cond_2

    .line 939
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/uimanager/ViewGroupManager;

    .line 944
    .local v1, "viewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/ViewGroupManager;->needsCustomLayoutForChildren()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 945
    :cond_0
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to measure a view using measureLayout/measureLayoutRelativeToParent relative to an ancestor that requires custom layout for it\'s children ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getViewClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "). Use measure instead."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 950
    :cond_1
    :goto_0
    return-void

    .line 941
    .end local v1    # "viewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    :cond_2
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to use view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getViewClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as a parent, but its Manager doesn\'t extends ViewGroupManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private assertViewExists(ILjava/lang/String;)V
    .locals 3
    .param p1, "reactTag"    # I
    .param p2, "operationNameForExceptionMessage"    # Ljava/lang/String;

    .line 928
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 933
    return-void

    .line 929
    :cond_0
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to execute operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on view with tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", since the view does not exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dispatchViewUpdatesIfNeeded()V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdates(I)V

    .line 687
    :cond_0
    return-void
.end method

.method private measureLayout(II[I)V
    .locals 6
    .param p1, "tag"    # I
    .param p2, "ancestorTag"    # I
    .param p3, "outputBuffer"    # [I

    .line 867
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 868
    .local v0, "node":Lcom/facebook/react/uimanager/ReactShadowNode;
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v1, p2}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 869
    .local v1, "ancestor":Lcom/facebook/react/uimanager/ReactShadowNode;
    const-string v2, "Tag "

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 874
    :cond_0
    if-eq v0, v1, :cond_2

    .line 875
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v3

    .line 876
    .local v3, "currentParent":Lcom/facebook/react/uimanager/ReactShadowNode;
    :goto_0
    if-eq v3, v1, :cond_2

    .line 877
    if-eqz v3, :cond_1

    .line 881
    invoke-interface {v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v3

    goto :goto_0

    .line 878
    :cond_1
    new-instance v4, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not an ancestor of tag "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 885
    .end local v3    # "currentParent":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_2
    invoke-direct {p0, v0, v1, p3}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayoutRelativeToVerifiedAncestor(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/ReactShadowNode;[I)V

    .line 886
    return-void

    .line 870
    :cond_3
    :goto_1
    new-instance v3, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    move v2, p1

    goto :goto_2

    :cond_4
    move v2, p2

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    return-void
.end method

.method private measureLayoutRelativeToParent(I[I)V
    .locals 5
    .param p1, "tag"    # I
    .param p2, "outputBuffer"    # [I

    .line 889
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 890
    .local v0, "node":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v0, :cond_1

    .line 893
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 894
    .local v1, "parent":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v1, :cond_0

    .line 898
    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayoutRelativeToVerifiedAncestor(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/ReactShadowNode;[I)V

    .line 899
    return-void

    .line 895
    :cond_0
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t have a parent!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 891
    .end local v1    # "parent":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_1
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No native view for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " exists!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private measureLayoutRelativeToVerifiedAncestor(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/ReactShadowNode;[I)V
    .locals 4
    .param p1, "node"    # Lcom/facebook/react/uimanager/ReactShadowNode;
    .param p2, "ancestor"    # Lcom/facebook/react/uimanager/ReactShadowNode;
    .param p3, "outputBuffer"    # [I

    .line 905
    const/4 v0, 0x0

    .line 906
    .local v0, "offsetX":I
    const/4 v1, 0x0

    .line 907
    .local v1, "offsetY":I
    if-eq p1, p2, :cond_1

    .line 908
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 909
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 910
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v2

    .line 911
    .local v2, "current":Lcom/facebook/react/uimanager/ReactShadowNode;
    :goto_0
    if-eq v2, p2, :cond_0

    .line 912
    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    invoke-direct {p0, v2}, Lcom/facebook/react/uimanager/UIImplementation;->assertNodeDoesNotNeedCustomLayoutForChildren(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 914
    invoke-interface {v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v0, v3

    .line 915
    invoke-interface {v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 916
    invoke-interface {v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v2

    goto :goto_0

    .line 918
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/react/uimanager/UIImplementation;->assertNodeDoesNotNeedCustomLayoutForChildren(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 921
    .end local v2    # "current":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_1
    const/4 v2, 0x0

    aput v0, p3, v2

    .line 922
    const/4 v2, 0x1

    aput v1, p3, v2

    .line 923
    const/4 v2, 0x2

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenWidth()I

    move-result v3

    aput v3, p3, v2

    .line 924
    const/4 v2, 0x3

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenHeight()I

    move-result v3

    aput v3, p3, v2

    .line 925
    return-void
.end method

.method private notifyOnBeforeLayoutRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 2
    .param p1, "cssNode"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 953
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 954
    return-void

    .line 956
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 957
    invoke-interface {p1, v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/react/uimanager/UIImplementation;->notifyOnBeforeLayoutRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 956
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 959
    .end local v0    # "i":I
    :cond_1
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->onBeforeLayout()V

    .line 960
    return-void
.end method

.method private removeShadowNodeRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 2
    .param p1, "nodeToRemove"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 857
    invoke-static {p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleRemoveNode(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 858
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->removeNode(I)V

    .line 859
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasuredRootNodes:Ljava/util/Set;

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 860
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 861
    invoke-interface {p1, v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/react/uimanager/UIImplementation;->removeShadowNodeRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 860
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 863
    .end local v0    # "i":I
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->removeAndDisposeAllChildren()V

    .line 864
    return-void
.end method


# virtual methods
.method public addAnimation(IILcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "animationID"    # I
    .param p3, "onSuccess"    # Lcom/facebook/react/bridge/Callback;

    .line 742
    const-string v0, "addAnimation"

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/UIImplementation;->assertViewExists(ILjava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueAddAnimation(IILcom/facebook/react/bridge/Callback;)V

    .line 744
    return-void
.end method

.method public addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V
    .locals 1
    .param p1, "block"    # Lcom/facebook/react/uimanager/UIBlock;

    .line 1017
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    .line 1018
    return-void
.end method

.method protected applyUpdatesRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;FF)V
    .locals 7
    .param p1, "cssNode"    # Lcom/facebook/react/uimanager/ReactShadowNode;
    .param p2, "absoluteX"    # F
    .param p3, "absoluteY"    # F

    .line 979
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 980
    return-void

    .line 983
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->isVirtualAnchor()Z

    move-result v0

    if-nez v0, :cond_1

    .line 984
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 985
    nop

    .line 986
    invoke-interface {p1, v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 987
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutX()F

    move-result v2

    add-float/2addr v2, p2

    .line 988
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutY()F

    move-result v3

    add-float/2addr v3, p3

    .line 985
    invoke-virtual {p0, v1, v2, v3}, Lcom/facebook/react/uimanager/UIImplementation;->applyUpdatesRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;FF)V

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 992
    .end local v0    # "i":I
    :cond_1
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v0

    .line 993
    .local v0, "tag":I
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v1, v0}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->isRootNode(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 994
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-interface {p1, p2, p3, v1, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->dispatchUpdates(FFLcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;)Z

    move-result v1

    .line 1003
    .local v1, "frameDidChange":Z
    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->shouldNotifyOnLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1004
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 1007
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenX()I

    move-result v3

    .line 1008
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenY()I

    move-result v4

    .line 1009
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenWidth()I

    move-result v5

    .line 1010
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getScreenHeight()I

    move-result v6

    .line 1005
    invoke-static {v0, v3, v4, v5, v6}, Lcom/facebook/react/uimanager/OnLayoutEvent;->obtain(IIIII)Lcom/facebook/react/uimanager/OnLayoutEvent;

    move-result-object v3

    .line 1004
    invoke-virtual {v2, v3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 1013
    .end local v1    # "frameDidChange":Z
    :cond_2
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->markUpdateSeen()V

    .line 1014
    return-void
.end method

.method protected calculateRootLayout(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 5
    .param p1, "cssRoot"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 963
    const-wide/16 v0, 0x0

    const-string v2, "cssRoot.calculateLayout"

    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 964
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v3

    const-string v4, "rootTag"

    invoke-virtual {v2, v4, v3}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 965
    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 966
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 968
    .local v2, "startTime":J
    :try_start_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->calculateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 971
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLastCalculateLayoutTime:J

    .line 972
    nop

    .line 973
    return-void

    .line 970
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 971
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLastCalculateLayoutTime:J

    .line 972
    throw v4
.end method

.method public clearJSResponder()V
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueClearJSResponder()V

    .line 805
    return-void
.end method

.method public configureNextLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "success"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "error"    # Lcom/facebook/react/bridge/Callback;

    .line 785
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueConfigureLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 786
    return-void
.end method

.method protected createRootShadowNode()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 3

    .line 121
    new-instance v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;-><init>()V

    .line 122
    .local v0, "rootCSSNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v1

    .line 123
    .local v1, "sharedI18nUtilInstance":Lcom/facebook/react/modules/i18nmanager/I18nUtil;
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1, v2}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    sget-object v2, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    invoke-interface {v0, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setLayoutDirection(Lcom/facebook/yoga/YogaDirection;)V

    .line 126
    :cond_0
    const-string v2, "Root"

    invoke-interface {v0, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setViewClassName(Ljava/lang/String;)V

    .line 127
    return-object v0
.end method

.method protected createShadowNode(Ljava/lang/String;)Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    .line 132
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ViewManager;->createShadowNodeInstance(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    return-object v1
.end method

.method public createView(ILjava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .param p1, "tag"    # I
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "rootViewTag"    # I
    .param p4, "props"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 287
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/facebook/react/uimanager/UIImplementation;->createShadowNode(Ljava/lang/String;)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 289
    .local v1, "cssNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v2, p3}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v2

    .line 290
    .local v2, "rootNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root node with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 291
    invoke-interface {v1, p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->setReactTag(I)V

    .line 292
    invoke-interface {v1, p2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setViewClassName(Ljava/lang/String;)V

    .line 293
    invoke-interface {v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->setRootTag(I)V

    .line 294
    invoke-interface {v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->setThemedContext(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 296
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v3, v1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->addNode(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 298
    const/4 v3, 0x0

    .line 299
    .local v3, "styles":Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    if-eqz p4, :cond_0

    .line 300
    new-instance v4, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-direct {v4, p4}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    move-object v3, v4

    .line 301
    invoke-interface {v1, v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->updateProperties(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 304
    :cond_0
    invoke-virtual {p0, v1, p3, v3}, Lcom/facebook/react/uimanager/UIImplementation;->handleCreateView(Lcom/facebook/react/uimanager/ReactShadowNode;ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 305
    .end local v1    # "cssNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    .end local v2    # "rootNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    .end local v3    # "styles":Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    monitor-exit v0

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dismissPopupMenu()V
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueDismissPopupMenu()V

    .line 829
    return-void
.end method

.method public dispatchViewManagerCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "commandId"    # I
    .param p3, "commandArgs"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 808
    const-string v0, "dispatchViewManagerCommand"

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/UIImplementation;->assertViewExists(ILjava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueDispatchCommand(IILcom/facebook/react/bridge/ReadableArray;)V

    .line 810
    return-void
.end method

.method public dispatchViewUpdates(I)V
    .locals 11
    .param p1, "batchId"    # I

    .line 663
    const-wide/16 v0, 0x0

    const-string v2, "UIImplementation.dispatchViewUpdates"

    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 666
    const-string v3, "batchId"

    invoke-virtual {v2, v3, p1}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 667
    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 668
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 670
    .local v9, "commitStartTime":J
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIImplementation;->updateViewHierarchy()V

    .line 671
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-virtual {v2}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->onBatchComplete()V

    .line 672
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    iget-wide v7, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLastCalculateLayoutTime:J

    move v4, p1

    move-wide v5, v9

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->dispatchViewUpdates(IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 675
    nop

    .line 676
    return-void

    .line 674
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 675
    throw v2
.end method

.method public enableLayoutCalculationForRootNode(I)V
    .locals 2
    .param p1, "rootViewTag"    # I

    .line 1048
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasuredRootNodes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1049
    return-void
.end method

.method public findSubviewIn(IFFLcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "targetX"    # F
    .param p3, "targetY"    # F
    .param p4, "callback"    # Lcom/facebook/react/bridge/Callback;

    .line 577
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueFindTargetForTouch(IFFLcom/facebook/react/bridge/Callback;)V

    .line 578
    return-void
.end method

.method public getProfiledBatchPerfCounters()Ljava/util/Map;
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

    .line 280
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->getProfiledBatchPerfCounters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getUIViewOperationQueue()Lcom/facebook/react/uimanager/UIViewOperationQueue;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    return-object v0
.end method

.method protected handleCreateView(Lcom/facebook/react/uimanager/ReactShadowNode;ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 2
    .param p1, "cssNode"    # Lcom/facebook/react/uimanager/ReactShadowNode;
    .param p2, "rootViewTag"    # I
    .param p3, "styles"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 312
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleCreateView(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 315
    :cond_0
    return-void
.end method

.method protected handleUpdateView(Lcom/facebook/react/uimanager/ReactShadowNode;Ljava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 1
    .param p1, "cssNode"    # Lcom/facebook/react/uimanager/ReactShadowNode;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "styles"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 352
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleUpdateView(Lcom/facebook/react/uimanager/ReactShadowNode;Ljava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 355
    :cond_0
    return-void
.end method

.method public manageChildren(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 20
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

    .line 373
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    iget-object v8, v1, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    monitor-enter v8

    .line 374
    :try_start_0
    iget-object v0, v1, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, v2}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 376
    .local v0, "cssNodeToManage":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-nez v3, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v9

    :goto_0
    move v14, v9

    .line 377
    .local v14, "numToMove":I
    if-nez v5, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    invoke-interface/range {p4 .. p4}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v9

    :goto_1
    move v13, v9

    .line 378
    .local v13, "numToAdd":I
    if-nez v7, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    invoke-interface/range {p6 .. p6}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v9

    :goto_2
    move v12, v9

    .line 380
    .local v12, "numToRemove":I
    if-eqz v14, :cond_4

    if-eqz v4, :cond_3

    invoke-interface/range {p3 .. p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v9

    if-ne v14, v9, :cond_3

    goto :goto_3

    .line 381
    :cond_3
    new-instance v9, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v10, "Size of moveFrom != size of moveTo!"

    invoke-direct {v9, v10}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "viewTag":I
    .end local p2    # "moveFrom":Lcom/facebook/react/bridge/ReadableArray;
    .end local p3    # "moveTo":Lcom/facebook/react/bridge/ReadableArray;
    .end local p4    # "addChildTags":Lcom/facebook/react/bridge/ReadableArray;
    .end local p5    # "addAtIndices":Lcom/facebook/react/bridge/ReadableArray;
    .end local p6    # "removeFrom":Lcom/facebook/react/bridge/ReadableArray;
    throw v9

    .line 384
    .restart local p1    # "viewTag":I
    .restart local p2    # "moveFrom":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p3    # "moveTo":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p4    # "addChildTags":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p5    # "addAtIndices":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p6    # "removeFrom":Lcom/facebook/react/bridge/ReadableArray;
    :cond_4
    :goto_3
    if-eqz v13, :cond_6

    if-eqz v6, :cond_5

    invoke-interface/range {p5 .. p5}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v9

    if-ne v13, v9, :cond_5

    goto :goto_4

    .line 385
    :cond_5
    new-instance v9, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v10, "Size of addChildTags != size of addAtIndices!"

    invoke-direct {v9, v10}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "viewTag":I
    .end local p2    # "moveFrom":Lcom/facebook/react/bridge/ReadableArray;
    .end local p3    # "moveTo":Lcom/facebook/react/bridge/ReadableArray;
    .end local p4    # "addChildTags":Lcom/facebook/react/bridge/ReadableArray;
    .end local p5    # "addAtIndices":Lcom/facebook/react/bridge/ReadableArray;
    .end local p6    # "removeFrom":Lcom/facebook/react/bridge/ReadableArray;
    throw v9

    .line 389
    .restart local p1    # "viewTag":I
    .restart local p2    # "moveFrom":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p3    # "moveTo":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p4    # "addChildTags":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p5    # "addAtIndices":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p6    # "removeFrom":Lcom/facebook/react/bridge/ReadableArray;
    :cond_6
    :goto_4
    add-int v9, v14, v13

    new-array v9, v9, [Lcom/facebook/react/uimanager/ViewAtIndex;

    move-object v11, v9

    .line 390
    .local v11, "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    add-int v9, v14, v12

    new-array v9, v9, [I

    move-object v10, v9

    .line 391
    .local v10, "indicesToRemove":[I
    array-length v9, v10

    new-array v9, v9, [I

    move-object/from16 v16, v9

    .line 392
    .local v16, "tagsToRemove":[I
    new-array v9, v12, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 394
    .local v9, "tagsToDelete":[I
    if-lez v14, :cond_7

    .line 395
    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-static/range {p3 .. p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const/16 v17, 0x0

    move/from16 v15, v17

    .local v15, "i":I
    :goto_5
    if-ge v15, v14, :cond_7

    .line 398
    invoke-interface {v3, v15}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v17

    move/from16 v18, v17

    .line 399
    .local v18, "moveFromIndex":I
    move/from16 v3, v18

    .end local v18    # "moveFromIndex":I
    .local v3, "moveFromIndex":I
    invoke-interface {v0, v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v17

    move/from16 v18, v17

    .line 400
    .local v18, "tagToMove":I
    new-instance v1, Lcom/facebook/react/uimanager/ViewAtIndex;

    .line 402
    invoke-interface {v4, v15}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    move/from16 v4, v18

    .end local v18    # "tagToMove":I
    .local v4, "tagToMove":I
    invoke-direct {v1, v4, v2}, Lcom/facebook/react/uimanager/ViewAtIndex;-><init>(II)V

    aput-object v1, v11, v15

    .line 403
    aput v3, v10, v15

    .line 404
    aput v4, v16, v15

    .line 397
    .end local v3    # "moveFromIndex":I
    .end local v4    # "tagToMove":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto :goto_5

    .line 475
    .end local v0    # "cssNodeToManage":Lcom/facebook/react/uimanager/ReactShadowNode;
    .end local v9    # "tagsToDelete":[I
    .end local v10    # "indicesToRemove":[I
    .end local v11    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .end local v12    # "numToRemove":I
    .end local v13    # "numToAdd":I
    .end local v14    # "numToMove":I
    .end local v15    # "i":I
    .end local v16    # "tagsToRemove":[I
    :catchall_0
    move-exception v0

    :goto_6
    move-object/from16 v4, p0

    goto/16 :goto_d

    .line 408
    .restart local v0    # "cssNodeToManage":Lcom/facebook/react/uimanager/ReactShadowNode;
    .restart local v9    # "tagsToDelete":[I
    .restart local v10    # "indicesToRemove":[I
    .restart local v11    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .restart local v12    # "numToRemove":I
    .restart local v13    # "numToAdd":I
    .restart local v14    # "numToMove":I
    .restart local v16    # "tagsToRemove":[I
    :cond_7
    if-lez v13, :cond_8

    .line 409
    invoke-static/range {p4 .. p4}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-static/range {p5 .. p5}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v13, :cond_8

    .line 412
    invoke-interface {v5, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    .line 413
    .local v2, "viewTagToAdd":I
    invoke-interface {v6, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    .line 414
    .local v3, "indexToAddAt":I
    add-int v4, v14, v1

    new-instance v15, Lcom/facebook/react/uimanager/ViewAtIndex;

    invoke-direct {v15, v2, v3}, Lcom/facebook/react/uimanager/ViewAtIndex;-><init>(II)V

    aput-object v15, v11, v4

    .line 411
    .end local v2    # "viewTagToAdd":I
    .end local v3    # "indexToAddAt":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 418
    .end local v1    # "i":I
    :cond_8
    if-lez v12, :cond_9

    .line 419
    invoke-static/range {p6 .. p6}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, v12, :cond_9

    .line 421
    invoke-interface {v7, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    .line 422
    .local v2, "indexToRemove":I
    invoke-interface {v0, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v3

    .line 423
    .local v3, "tagToRemove":I
    add-int v4, v14, v1

    aput v2, v10, v4

    .line 424
    add-int v4, v14, v1

    aput v3, v16, v4

    .line 425
    aput v3, v9, v1

    .line 420
    .end local v2    # "indexToRemove":I
    .end local v3    # "tagToRemove":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 438
    .end local v1    # "i":I
    :cond_9
    sget-object v1, Lcom/facebook/react/uimanager/ViewAtIndex;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v11, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 439
    invoke-static {v10}, Ljava/util/Arrays;->sort([I)V

    .line 442
    const/4 v1, -0x1

    .line 443
    .local v1, "lastIndexRemoved":I
    array-length v2, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_b

    .line 444
    :try_start_2
    aget v3, v10, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 445
    .local v3, "indexToRemove":I
    if-eq v3, v1, :cond_a

    .line 449
    :try_start_3
    aget v4, v10, v2

    invoke-interface {v0, v4}, Lcom/facebook/react/uimanager/ReactShadowNode;->removeChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 450
    aget v4, v10, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v4

    .line 443
    .end local v3    # "indexToRemove":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 446
    .restart local v3    # "indexToRemove":I
    :cond_a
    :try_start_4
    new-instance v4, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v1

    .end local v1    # "lastIndexRemoved":I
    .local v17, "lastIndexRemoved":I
    const-string v1, "Repeated indices in Removal list for view tag: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v1, p1

    :try_start_5
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v15}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "viewTag":I
    .end local p2    # "moveFrom":Lcom/facebook/react/bridge/ReadableArray;
    .end local p3    # "moveTo":Lcom/facebook/react/bridge/ReadableArray;
    .end local p4    # "addChildTags":Lcom/facebook/react/bridge/ReadableArray;
    .end local p5    # "addAtIndices":Lcom/facebook/react/bridge/ReadableArray;
    .end local p6    # "removeFrom":Lcom/facebook/react/bridge/ReadableArray;
    throw v4

    .line 475
    .end local v0    # "cssNodeToManage":Lcom/facebook/react/uimanager/ReactShadowNode;
    .end local v2    # "i":I
    .end local v3    # "indexToRemove":I
    .end local v9    # "tagsToDelete":[I
    .end local v10    # "indicesToRemove":[I
    .end local v11    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .end local v12    # "numToRemove":I
    .end local v13    # "numToAdd":I
    .end local v14    # "numToMove":I
    .end local v16    # "tagsToRemove":[I
    .end local v17    # "lastIndexRemoved":I
    .restart local p1    # "viewTag":I
    .restart local p2    # "moveFrom":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p3    # "moveTo":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p4    # "addChildTags":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p5    # "addAtIndices":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p6    # "removeFrom":Lcom/facebook/react/bridge/ReadableArray;
    :catchall_1
    move-exception v0

    move/from16 v1, p1

    goto :goto_6

    .line 443
    .restart local v0    # "cssNodeToManage":Lcom/facebook/react/uimanager/ReactShadowNode;
    .restart local v1    # "lastIndexRemoved":I
    .restart local v2    # "i":I
    .restart local v9    # "tagsToDelete":[I
    .restart local v10    # "indicesToRemove":[I
    .restart local v11    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .restart local v12    # "numToRemove":I
    .restart local v13    # "numToAdd":I
    .restart local v14    # "numToMove":I
    .restart local v16    # "tagsToRemove":[I
    :cond_b
    move/from16 v17, v1

    move/from16 v1, p1

    .line 453
    .end local v1    # "lastIndexRemoved":I
    .end local v2    # "i":I
    .restart local v17    # "lastIndexRemoved":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_a
    array-length v2, v11

    if-ge v3, v2, :cond_d

    .line 454
    aget-object v2, v11, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 455
    .local v2, "viewAtIndex":Lcom/facebook/react/uimanager/ViewAtIndex;
    move-object/from16 v4, p0

    :try_start_6
    iget-object v15, v4, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    iget v1, v2, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v15, v1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 456
    .local v1, "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v1, :cond_c

    .line 460
    iget v15, v2, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    invoke-interface {v0, v1, v15}, Lcom/facebook/react/uimanager/ReactShadowNode;->addChildAt(Lcom/facebook/react/uimanager/ReactShadowNode;I)V

    .line 453
    .end local v1    # "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    .end local v2    # "viewAtIndex":Lcom/facebook/react/uimanager/ViewAtIndex;
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p1

    goto :goto_a

    .line 457
    .restart local v1    # "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    .restart local v2    # "viewAtIndex":Lcom/facebook/react/uimanager/ViewAtIndex;
    :cond_c
    new-instance v15, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    move-object/from16 v18, v1

    .end local v1    # "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    .local v18, "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    .end local v3    # "i":I
    .local v19, "i":I
    const-string v3, "Trying to add unknown view tag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "viewTag":I
    .end local p2    # "moveFrom":Lcom/facebook/react/bridge/ReadableArray;
    .end local p3    # "moveTo":Lcom/facebook/react/bridge/ReadableArray;
    .end local p4    # "addChildTags":Lcom/facebook/react/bridge/ReadableArray;
    .end local p5    # "addAtIndices":Lcom/facebook/react/bridge/ReadableArray;
    .end local p6    # "removeFrom":Lcom/facebook/react/bridge/ReadableArray;
    throw v15

    .line 453
    .end local v2    # "viewAtIndex":Lcom/facebook/react/uimanager/ViewAtIndex;
    .end local v18    # "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    .end local v19    # "i":I
    .restart local v3    # "i":I
    .restart local p1    # "viewTag":I
    .restart local p2    # "moveFrom":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p3    # "moveTo":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p4    # "addChildTags":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p5    # "addAtIndices":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p6    # "removeFrom":Lcom/facebook/react/bridge/ReadableArray;
    :cond_d
    move-object/from16 v4, p0

    move/from16 v19, v3

    .line 463
    .end local v3    # "i":I
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->isVirtualAnchor()Z

    move-result v1

    if-nez v1, :cond_e

    .line 464
    iget-object v1, v4, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    move-object v2, v9

    .end local v9    # "tagsToDelete":[I
    .local v2, "tagsToDelete":[I
    move-object v9, v1

    move-object v1, v10

    .end local v10    # "indicesToRemove":[I
    .local v1, "indicesToRemove":[I
    move-object v10, v0

    move-object v3, v11

    .end local v11    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .local v3, "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    move-object v11, v1

    move v15, v12

    .end local v12    # "numToRemove":I
    .local v15, "numToRemove":I
    move-object/from16 v12, v16

    move/from16 v18, v13

    .end local v13    # "numToAdd":I
    .local v18, "numToAdd":I
    move-object v13, v3

    move/from16 v19, v14

    .end local v14    # "numToMove":I
    .local v19, "numToMove":I
    move-object v14, v2

    invoke-virtual/range {v9 .. v14}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleManageChildren(Lcom/facebook/react/uimanager/ReactShadowNode;[I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V

    goto :goto_b

    .line 463
    .end local v1    # "indicesToRemove":[I
    .end local v2    # "tagsToDelete":[I
    .end local v3    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .end local v15    # "numToRemove":I
    .end local v18    # "numToAdd":I
    .end local v19    # "numToMove":I
    .restart local v9    # "tagsToDelete":[I
    .restart local v10    # "indicesToRemove":[I
    .restart local v11    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .restart local v12    # "numToRemove":I
    .restart local v13    # "numToAdd":I
    .restart local v14    # "numToMove":I
    :cond_e
    move-object v2, v9

    move-object v1, v10

    move-object v3, v11

    move v15, v12

    move/from16 v18, v13

    move/from16 v19, v14

    .line 472
    .end local v9    # "tagsToDelete":[I
    .end local v10    # "indicesToRemove":[I
    .end local v11    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .end local v12    # "numToRemove":I
    .end local v13    # "numToAdd":I
    .end local v14    # "numToMove":I
    .restart local v1    # "indicesToRemove":[I
    .restart local v2    # "tagsToDelete":[I
    .restart local v3    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .restart local v15    # "numToRemove":I
    .restart local v18    # "numToAdd":I
    .restart local v19    # "numToMove":I
    :goto_b
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_c
    array-length v10, v2

    if-ge v9, v10, :cond_f

    .line 473
    iget-object v10, v4, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    aget v11, v2, v9

    invoke-virtual {v10, v11}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/facebook/react/uimanager/UIImplementation;->removeShadowNode(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 472
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 475
    .end local v0    # "cssNodeToManage":Lcom/facebook/react/uimanager/ReactShadowNode;
    .end local v1    # "indicesToRemove":[I
    .end local v2    # "tagsToDelete":[I
    .end local v3    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .end local v9    # "i":I
    .end local v15    # "numToRemove":I
    .end local v16    # "tagsToRemove":[I
    .end local v17    # "lastIndexRemoved":I
    .end local v18    # "numToAdd":I
    .end local v19    # "numToMove":I
    :cond_f
    monitor-exit v8

    .line 476
    return-void

    .line 475
    :catchall_2
    move-exception v0

    move-object v4, v1

    :goto_d
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_d
.end method

.method public measure(ILcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;

    .line 605
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueMeasure(ILcom/facebook/react/bridge/Callback;)V

    .line 606
    return-void
.end method

.method public measureInWindow(ILcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;

    .line 614
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueMeasureInWindow(ILcom/facebook/react/bridge/Callback;)V

    .line 615
    return-void
.end method

.method public measureLayout(IILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 10
    .param p1, "tag"    # I
    .param p2, "ancestorTag"    # I
    .param p3, "errorCallback"    # Lcom/facebook/react/bridge/Callback;
    .param p4, "successCallback"    # Lcom/facebook/react/bridge/Callback;

    .line 629
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    invoke-direct {p0, p1, p2, v2}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayout(II[I)V

    .line 630
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    aget v2, v2, v0

    int-to-float v2, v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    .line 631
    .local v2, "relativeX":F
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    aget v3, v3, v1

    int-to-float v3, v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    .line 632
    .local v3, "relativeY":F
    iget-object v4, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-static {v4}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v4

    .line 633
    .local v4, "width":F
    iget-object v6, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    int-to-float v6, v6

    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    .line 634
    .local v6, "height":F
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v7

    invoke-interface {p4, v8}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v2    # "relativeX":F
    .end local v3    # "relativeY":F
    .end local v4    # "width":F
    .end local v6    # "height":F
    goto :goto_0

    .line 635
    :catch_0
    move-exception v2

    .line 636
    .local v2, "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 638
    .end local v2    # "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    :goto_0
    return-void
.end method

.method public measureLayoutRelativeToParent(ILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 10
    .param p1, "tag"    # I
    .param p2, "errorCallback"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "successCallback"    # Lcom/facebook/react/bridge/Callback;

    .line 648
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    invoke-direct {p0, p1, v2}, Lcom/facebook/react/uimanager/UIImplementation;->measureLayoutRelativeToParent(I[I)V

    .line 649
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    aget v2, v2, v0

    int-to-float v2, v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    .line 650
    .local v2, "relativeX":F
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    aget v3, v3, v1

    int-to-float v3, v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    .line 651
    .local v3, "relativeY":F
    iget-object v4, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-static {v4}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v4

    .line 652
    .local v4, "width":F
    iget-object v6, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasureBuffer:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    int-to-float v6, v6

    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    .line 653
    .local v6, "height":F
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v7

    invoke-interface {p3, v8}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    .end local v2    # "relativeX":F
    .end local v3    # "relativeY":F
    .end local v4    # "width":F
    .end local v6    # "height":F
    goto :goto_0

    .line 654
    :catch_0
    move-exception v2

    .line 655
    .local v2, "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 657
    .end local v2    # "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    :goto_0
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 844
    return-void
.end method

.method public onHostPause()V
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->pauseFrameCallback()V

    .line 841
    return-void
.end method

.method public onHostResume()V
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->resumeFrameCallback()V

    .line 837
    return-void
.end method

.method public prependUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V
    .locals 1
    .param p1, "block"    # Lcom/facebook/react/uimanager/UIBlock;

    .line 1021
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->prependUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    .line 1022
    return-void
.end method

.method public profileNextBatch()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->profileNextBatch()V

    .line 277
    return-void
.end method

.method public registerAnimation(Lcom/facebook/react/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Lcom/facebook/react/animation/Animation;

    .line 735
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueRegisterAnimation(Lcom/facebook/react/animation/Animation;)V

    .line 736
    return-void
.end method

.method public registerRootView(Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;ILcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 5
    .param p2, "tag"    # I
    .param p3, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;",
            ":",
            "Lcom/facebook/react/uimanager/common/MeasureSpecProvider;",
            ">(TT;I",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            ")V"
        }
    .end annotation

    .line 201
    .local p1, "rootView":Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;, "TT;"
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIImplementation;->createRootShadowNode()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 203
    .local v1, "rootCSSNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    invoke-interface {v1, p2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setReactTag(I)V

    .line 204
    invoke-interface {v1, p3}, Lcom/facebook/react/uimanager/ReactShadowNode;->setThemedContext(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 206
    move-object v2, p1

    check-cast v2, Lcom/facebook/react/uimanager/common/MeasureSpecProvider;

    invoke-interface {v2}, Lcom/facebook/react/uimanager/common/MeasureSpecProvider;->getWidthMeasureSpec()I

    move-result v2

    .line 207
    .local v2, "widthMeasureSpec":I
    move-object v3, p1

    check-cast v3, Lcom/facebook/react/uimanager/common/MeasureSpecProvider;

    invoke-interface {v3}, Lcom/facebook/react/uimanager/common/MeasureSpecProvider;->getHeightMeasureSpec()I

    move-result v3

    .line 208
    .local v3, "heightMeasureSpec":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/facebook/react/uimanager/UIImplementation;->updateRootView(Lcom/facebook/react/uimanager/ReactShadowNode;II)V

    .line 210
    new-instance v4, Lcom/facebook/react/uimanager/UIImplementation$1;

    invoke-direct {v4, p0, v1}, Lcom/facebook/react/uimanager/UIImplementation$1;-><init>(Lcom/facebook/react/uimanager/UIImplementation;Lcom/facebook/react/uimanager/ReactShadowNode;)V

    invoke-virtual {p3, v4}, Lcom/facebook/react/uimanager/ThemedReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    .line 218
    iget-object v4, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v4, p2, p1, p3}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->addRootView(ILcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 219
    .end local v1    # "rootCSSNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    .end local v2    # "widthMeasureSpec":I
    .end local v3    # "heightMeasureSpec":I
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAnimation(II)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "animationID"    # I

    .line 750
    const-string v0, "removeAnimation"

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/UIImplementation;->assertViewExists(ILjava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueRemoveAnimation(I)V

    .line 752
    return-void
.end method

.method public removeLayoutUpdateListener()V
    .locals 1

    .line 1056
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLayoutUpdateListener:Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;

    .line 1057
    return-void
.end method

.method public removeRootShadowNode(I)V
    .locals 2
    .param p1, "rootViewTag"    # I

    .line 234
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->removeRootNode(I)V

    .line 236
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeRootView(I)V
    .locals 1
    .param p1, "rootViewTag"    # I

    .line 226
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->removeRootShadowNode(I)V

    .line 227
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueRemoveRootView(I)V

    .line 228
    return-void
.end method

.method protected final removeShadowNode(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 0
    .param p1, "nodeToRemove"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 852
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->removeShadowNodeRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 853
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->dispose()V

    .line 854
    return-void
.end method

.method public removeSubviewsFromContainerWithID(I)V
    .locals 9
    .param p1, "containerTag"    # I

    .line 550
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 551
    .local v0, "containerNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v0, :cond_1

    .line 556
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v8

    .line 557
    .local v8, "indicesToRemove":Lcom/facebook/react/bridge/WritableArray;
    const/4 v1, 0x0

    .local v1, "childIndex":I
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 558
    invoke-interface {v8, v1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    .end local v1    # "childIndex":I
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/react/uimanager/UIImplementation;->manageChildren(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 562
    return-void

    .line 552
    .end local v8    # "indicesToRemove":Lcom/facebook/react/bridge/WritableArray;
    :cond_1
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to remove subviews of an unknown view tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method

.method public replaceExistingNonRootView(II)V
    .locals 13
    .param p1, "oldTag"    # I
    .param p2, "newTag"    # I

    .line 512
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->isRootNode(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->isRootNode(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 517
    .local v0, "oldNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v0, :cond_2

    .line 521
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 522
    .local v1, "parent":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v1, :cond_1

    .line 526
    invoke-interface {v1, v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->indexOf(Lcom/facebook/react/uimanager/ReactShadowNode;)I

    move-result v2

    .line 527
    .local v2, "oldIndex":I
    if-ltz v2, :cond_0

    .line 531
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v10

    .line 532
    .local v10, "tagsToAdd":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v10, p2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 534
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v11

    .line 535
    .local v11, "addAtIndices":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v11, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 537
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v12

    .line 538
    .local v12, "indicesToRemove":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v12, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 540
    invoke-interface {v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/react/uimanager/UIImplementation;->manageChildren(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 541
    return-void

    .line 528
    .end local v10    # "tagsToAdd":Lcom/facebook/react/bridge/WritableArray;
    .end local v11    # "addAtIndices":Lcom/facebook/react/bridge/WritableArray;
    .end local v12    # "indicesToRemove":Lcom/facebook/react/bridge/WritableArray;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Didn\'t find child tag in parent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 523
    .end local v2    # "oldIndex":I
    :cond_1
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Node is not attached to a parent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 518
    .end local v1    # "parent":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_2
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to replace unknown view tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 513
    .end local v0    # "oldNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_3
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v1, "Trying to add or replace a root tag!"

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolveRootTagFromReactTag(I)I
    .locals 4
    .param p1, "reactTag"    # I

    .line 1025
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->isRootNode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    return p1

    .line 1029
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/UIImplementation;->resolveShadowNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 1030
    .local v0, "node":Lcom/facebook/react/uimanager/ReactShadowNode;
    const/4 v1, 0x0

    .line 1031
    .local v1, "rootTag":I
    if-eqz v0, :cond_1

    .line 1032
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getRootTag()I

    move-result v1

    goto :goto_0

    .line 1034
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning : attempted to resolve a non-existent react shadow node. reactTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReactNative"

    invoke-static {v3, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :goto_0
    return v1
.end method

.method public final resolveShadowNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1
    .param p1, "reactTag"    # I

    .line 136
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    return-object v0
.end method

.method protected final resolveViewManager(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    return-object v0
.end method

.method public sendAccessibilityEvent(II)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "eventType"    # I

    .line 832
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueSendAccessibilityEvent(II)V

    .line 833
    return-void
.end method

.method public setChildren(ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 7
    .param p1, "viewTag"    # I
    .param p2, "childrenTags"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 488
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->uiImplementationThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 491
    .local v1, "cssNodeToManage":Lcom/facebook/react/uimanager/ReactShadowNode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 492
    iget-object v3, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v3

    .line 493
    .local v3, "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v3, :cond_0

    .line 497
    invoke-interface {v1, v3, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->addChildAt(Lcom/facebook/react/uimanager/ReactShadowNode;I)V

    .line 491
    .end local v3    # "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    .restart local v3    # "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_0
    new-instance v4, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to add unknown view tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "viewTag":I
    .end local p2    # "childrenTags":Lcom/facebook/react/bridge/ReadableArray;
    throw v4

    .line 500
    .end local v2    # "i":I
    .end local v3    # "cssNodeToAdd":Lcom/facebook/react/uimanager/ReactShadowNode;
    .restart local p1    # "viewTag":I
    .restart local p2    # "childrenTags":Lcom/facebook/react/bridge/ReadableArray;
    :cond_1
    invoke-interface {v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->isVirtual()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->isVirtualAnchor()Z

    move-result v2

    if-nez v2, :cond_2

    .line 501
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIImplementation;->mNativeViewHierarchyOptimizer:Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    invoke-virtual {v2, v1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleSetChildren(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 505
    .end local v1    # "cssNodeToManage":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_2
    monitor-exit v0

    .line 506
    return-void

    .line 505
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method

.method public setJSResponder(IZ)V
    .locals 3
    .param p1, "reactTag"    # I
    .param p2, "blockNativeResponder"    # Z

    .line 789
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 791
    .local v0, "node":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-nez v0, :cond_0

    .line 794
    return-void

    .line 797
    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->isLayoutOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 800
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueSetJSResponder(IIZ)V

    .line 801
    return-void

    .line 798
    :cond_2
    :goto_1
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    goto :goto_0
.end method

.method public setLayoutAnimationEnabledExperimental(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 766
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueSetLayoutAnimationEnabled(Z)V

    .line 767
    return-void
.end method

.method public setLayoutUpdateListener(Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;

    .line 1052
    iput-object p1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLayoutUpdateListener:Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;

    .line 1053
    return-void
.end method

.method public setViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 848
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->setViewHierarchyUpdateDebugListener(Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;)V

    .line 849
    return-void
.end method

.method public setViewLocalData(ILjava/lang/Object;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 263
    .local v0, "shadowNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-nez v0, :cond_0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to set local data for view with unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void

    .line 270
    :cond_0
    invoke-interface {v0, p2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setLocalData(Ljava/lang/Object;)V

    .line 272
    invoke-direct {p0}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdatesIfNeeded()V

    .line 273
    return-void
.end method

.method public showPopupMenu(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "items"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "error"    # Lcom/facebook/react/bridge/Callback;
    .param p4, "success"    # Lcom/facebook/react/bridge/Callback;

    .line 823
    const-string v0, "showPopupMenu"

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/UIImplementation;->assertViewExists(ILjava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueShowPopupMenu(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 825
    return-void
.end method

.method public synchronouslyUpdateViewOnUIThread(ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 344
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 345
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->getNativeViewHierarchyManager()Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateProperties(ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 346
    return-void
.end method

.method public updateNodeSize(III)V
    .locals 3
    .param p1, "nodeViewTag"    # I
    .param p2, "newWidth"    # I
    .param p3, "newHeight"    # I

    .line 247
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 248
    .local v0, "cssNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-nez v0, :cond_0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to update size of non-existent tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void

    .line 254
    :cond_0
    int-to-float v1, p2

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->setStyleWidth(F)V

    .line 255
    int-to-float v1, p3

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->setStyleHeight(F)V

    .line 257
    invoke-direct {p0}, Lcom/facebook/react/uimanager/UIImplementation;->dispatchViewUpdatesIfNeeded()V

    .line 258
    return-void
.end method

.method public updateRootView(III)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 152
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 153
    .local v0, "rootCSSNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-nez v0, :cond_0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to update non-existent root tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/react/uimanager/UIImplementation;->updateRootView(Lcom/facebook/react/uimanager/ReactShadowNode;II)V

    .line 158
    return-void
.end method

.method public updateRootView(Lcom/facebook/react/uimanager/ReactShadowNode;II)V
    .locals 6
    .param p1, "rootCSSNode"    # Lcom/facebook/react/uimanager/ReactShadowNode;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 166
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 167
    .local v0, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 168
    .local v1, "widthSize":I
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_2

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    int-to-float v4, v1

    invoke-interface {p1, v4}, Lcom/facebook/react/uimanager/ReactShadowNode;->setStyleWidth(F)V

    .line 171
    goto :goto_0

    .line 176
    :cond_1
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->setStyleWidthAuto()V

    goto :goto_0

    .line 173
    :cond_2
    int-to-float v4, v1

    invoke-interface {p1, v4}, Lcom/facebook/react/uimanager/ReactShadowNode;->setStyleMaxWidth(F)V

    .line 174
    nop

    .line 180
    :goto_0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 181
    .local v4, "heightMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 182
    .local v5, "heightSize":I
    if-eq v4, v3, :cond_5

    if-eqz v4, :cond_4

    if-eq v4, v2, :cond_3

    goto :goto_1

    .line 184
    :cond_3
    int-to-float v2, v5

    invoke-interface {p1, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setStyleHeight(F)V

    .line 185
    goto :goto_1

    .line 190
    :cond_4
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->setStyleHeightAuto()V

    goto :goto_1

    .line 187
    :cond_5
    int-to-float v2, v5

    invoke-interface {p1, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->setStyleMaxHeight(F)V

    .line 188
    nop

    .line 193
    :goto_1
    return-void
.end method

.method public updateView(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .param p1, "tag"    # I
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "props"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 321
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    .line 322
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    if-eqz v0, :cond_2

    .line 325
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 326
    .local v1, "cssNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v1, :cond_1

    .line 330
    if-eqz p3, :cond_0

    .line 331
    new-instance v2, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-direct {v2, p3}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 332
    .local v2, "styles":Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    invoke-interface {v1, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->updateProperties(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 333
    invoke-virtual {p0, v1, p2, v2}, Lcom/facebook/react/uimanager/UIImplementation;->handleUpdateView(Lcom/facebook/react/uimanager/ReactShadowNode;Ljava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 335
    .end local v2    # "styles":Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    :cond_0
    return-void

    .line 327
    :cond_1
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to update non-existent view with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 323
    .end local v1    # "cssNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_2
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got unknown view type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected updateViewHierarchy()V
    .locals 8

    .line 690
    const-string v0, "rootTag"

    const-wide/16 v1, 0x0

    const-string v3, "UIImplementation.updateViewHierarchy"

    invoke-static {v1, v2, v3}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 694
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v4}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getRootNodeCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 695
    iget-object v4, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v4, v3}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getRootTag(I)I

    move-result v4

    .line 696
    .local v4, "tag":I
    iget-object v5, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v5, v4}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v5

    .line 698
    .local v5, "cssRoot":Lcom/facebook/react/uimanager/ReactShadowNode;
    iget-object v6, p0, Lcom/facebook/react/uimanager/UIImplementation;->mMeasuredRootNodes:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 699
    const-string v6, "UIImplementation.notifyOnBeforeLayoutRecursive"

    invoke-static {v1, v2, v6}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v6

    .line 702
    invoke-interface {v5}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v6

    .line 703
    invoke-virtual {v6}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 705
    :try_start_1
    invoke-direct {p0, v5}, Lcom/facebook/react/uimanager/UIImplementation;->notifyOnBeforeLayoutRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 707
    :try_start_2
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 708
    nop

    .line 710
    invoke-virtual {p0, v5}, Lcom/facebook/react/uimanager/UIImplementation;->calculateRootLayout(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 711
    const-string v6, "UIImplementation.applyUpdatesRecursive"

    invoke-static {v1, v2, v6}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v6

    .line 713
    invoke-interface {v5}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v6

    .line 714
    invoke-virtual {v6}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 716
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {p0, v5, v6, v6}, Lcom/facebook/react/uimanager/UIImplementation;->applyUpdatesRecursive(Lcom/facebook/react/uimanager/ReactShadowNode;FF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 718
    :try_start_4
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 719
    nop

    .line 721
    iget-object v6, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLayoutUpdateListener:Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;

    if-eqz v6, :cond_0

    .line 722
    iget-object v6, p0, Lcom/facebook/react/uimanager/UIImplementation;->mOperationsQueue:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    iget-object v7, p0, Lcom/facebook/react/uimanager/UIImplementation;->mLayoutUpdateListener:Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;

    invoke-virtual {v6, v5, v7}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueLayoutUpdateFinished(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/UIImplementation$LayoutUpdateListener;)V

    goto :goto_1

    .line 718
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 719
    throw v0

    .line 707
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 708
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 694
    .end local v4    # "tag":I
    .end local v5    # "cssRoot":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 727
    .end local v3    # "i":I
    :cond_1
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 728
    nop

    .line 729
    return-void

    .line 727
    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 728
    throw v0

    return-void
.end method

.method public viewIsDescendantOf(IILcom/facebook/react/bridge/Callback;)V
    .locals 5
    .param p1, "reactTag"    # I
    .param p2, "ancestorReactTag"    # I
    .param p3, "callback"    # Lcom/facebook/react/bridge/Callback;

    .line 587
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 588
    .local v0, "node":Lcom/facebook/react/uimanager/ReactShadowNode;
    iget-object v1, p0, Lcom/facebook/react/uimanager/UIImplementation;->mShadowNodeRegistry:Lcom/facebook/react/uimanager/ShadowNodeRegistry;

    invoke-virtual {v1, p2}, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 589
    .local v1, "ancestorNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->isDescendantOf(Lcom/facebook/react/uimanager/ReactShadowNode;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 594
    return-void

    .line 590
    :cond_1
    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 591
    return-void
.end method
