.class Lcom/facebook/react/animated/PropsAnimatedNode;
.super Lcom/facebook/react/animated/AnimatedNode;
.source "PropsAnimatedNode.java"


# instance fields
.field private mConnectedViewTag:I

.field private final mDiffMap:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

.field private final mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

.field private final mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

.field private final mPropNodeMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;Lcom/facebook/react/uimanager/UIImplementation;)V
    .locals 6
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "nativeAnimatedNodesManager"    # Lcom/facebook/react/animated/NativeAnimatedNodesManager;
    .param p3, "uiImplementation"    # Lcom/facebook/react/uimanager/UIImplementation;

    .line 38
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimatedNode;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    .line 39
    const-string v0, "props"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    .line 40
    .local v0, "props":Lcom/facebook/react/bridge/ReadableMap;
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    .line 41
    .local v1, "iter":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropNodeMapping:Ljava/util/Map;

    .line 42
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "propKey":Ljava/lang/String;
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 45
    .local v3, "nodeIndex":I
    iget-object v4, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropNodeMapping:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .end local v2    # "propKey":Ljava/lang/String;
    .end local v3    # "nodeIndex":I
    goto :goto_0

    .line 47
    :cond_0
    new-instance v2, Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-direct {v2}, Lcom/facebook/react/bridge/JavaOnlyMap;-><init>()V

    iput-object v2, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    .line 48
    new-instance v2, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    iget-object v3, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    iput-object v2, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mDiffMap:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 49
    iput-object p2, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 50
    iput-object p3, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 51
    return-void
.end method


# virtual methods
.method public connectToView(I)V
    .locals 3
    .param p1, "viewTag"    # I

    .line 54
    iget v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 58
    iput p1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    .line 59
    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animated node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnectFromView(I)V
    .locals 2
    .param p1, "viewTag"    # I

    .line 62
    iget v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    if-ne v0, p1, :cond_0

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    .line 68
    return-void

    .line 63
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v1, "Attempting to disconnect view that has not been connected with the given animated node"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restoreDefaultValues()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/JavaOnlyMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v0

    .line 72
    .local v0, "it":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/JavaOnlyMap;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    iget v2, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    iget-object v3, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mDiffMap:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/react/uimanager/UIImplementation;->synchronouslyUpdateViewOnUIThread(ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 79
    return-void
.end method

.method public final updateView()V
    .locals 7

    .line 82
    iget v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropNodeMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 86
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;

    move-result-object v2

    .line 87
    .local v2, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v2, :cond_3

    .line 89
    instance-of v3, v2, Lcom/facebook/react/animated/StyleAnimatedNode;

    if-eqz v3, :cond_1

    .line 90
    move-object v3, v2

    check-cast v3, Lcom/facebook/react/animated/StyleAnimatedNode;

    iget-object v4, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-virtual {v3, v4}, Lcom/facebook/react/animated/StyleAnimatedNode;->collectViewUpdates(Lcom/facebook/react/bridge/JavaOnlyMap;)V

    goto :goto_1

    .line 91
    :cond_1
    instance-of v3, v2, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v3, :cond_2

    .line 92
    iget-object v3, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v5, v2

    check-cast v5, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v5}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/facebook/react/bridge/JavaOnlyMap;->putDouble(Ljava/lang/String;D)V

    .line 97
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :goto_1
    goto :goto_0

    .line 94
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported type of node used in property node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Mapped property node does not exists"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_4
    iget-object v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    iget v1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    iget-object v2, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mDiffMap:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/uimanager/UIImplementation;->synchronouslyUpdateViewOnUIThread(ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 102
    return-void
.end method
