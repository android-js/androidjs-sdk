.class Lcom/facebook/react/animated/TransformAnimatedNode;
.super Lcom/facebook/react/animated/AnimatedNode;
.source "TransformAnimatedNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;,
        Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;,
        Lcom/facebook/react/animated/TransformAnimatedNode$TransformConfig;
    }
.end annotation


# instance fields
.field private final mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

.field private final mTransformConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/animated/TransformAnimatedNode$TransformConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 8
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "nativeAnimatedNodesManager"    # Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 38
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimatedNode;-><init>()V

    .line 39
    const-string v0, "transforms"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 40
    .local v0, "transforms":Lcom/facebook/react/bridge/ReadableArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/react/animated/TransformAnimatedNode;->mTransformConfigs:Ljava/util/List;

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 42
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 43
    .local v2, "transformConfigMap":Lcom/facebook/react/bridge/ReadableMap;
    const-string v3, "property"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "property":Ljava/lang/String;
    const-string v4, "type"

    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "type":Ljava/lang/String;
    const-string v5, "animated"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 46
    new-instance v5, Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;

    invoke-direct {v5, p0, v6}, Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;-><init>(Lcom/facebook/react/animated/TransformAnimatedNode;Lcom/facebook/react/animated/TransformAnimatedNode$1;)V

    .line 47
    .local v5, "transformConfig":Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;
    iput-object v3, v5, Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;->mProperty:Ljava/lang/String;

    .line 48
    const-string v6, "nodeTag"

    invoke-interface {v2, v6}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;->mNodeTag:I

    .line 49
    iget-object v6, p0, Lcom/facebook/react/animated/TransformAnimatedNode;->mTransformConfigs:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v5    # "transformConfig":Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;
    goto :goto_1

    .line 51
    :cond_0
    new-instance v5, Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;

    invoke-direct {v5, p0, v6}, Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;-><init>(Lcom/facebook/react/animated/TransformAnimatedNode;Lcom/facebook/react/animated/TransformAnimatedNode$1;)V

    .line 52
    .local v5, "transformConfig":Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;
    iput-object v3, v5, Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;->mProperty:Ljava/lang/String;

    .line 53
    const-string v6, "value"

    invoke-interface {v2, v6}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;->mValue:D

    .line 54
    iget-object v6, p0, Lcom/facebook/react/animated/TransformAnimatedNode;->mTransformConfigs:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .end local v2    # "transformConfigMap":Lcom/facebook/react/bridge/ReadableMap;
    .end local v3    # "property":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "transformConfig":Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "i":I
    :cond_1
    iput-object p2, p0, Lcom/facebook/react/animated/TransformAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 58
    return-void
.end method


# virtual methods
.method public collectViewUpdates(Lcom/facebook/react/bridge/JavaOnlyMap;)V
    .locals 8
    .param p1, "propsMap"    # Lcom/facebook/react/bridge/JavaOnlyMap;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/react/animated/TransformAnimatedNode;->mTransformConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v0, "transforms":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/JavaOnlyMap;>;"
    iget-object v1, p0, Lcom/facebook/react/animated/TransformAnimatedNode;->mTransformConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/animated/TransformAnimatedNode$TransformConfig;

    .line 65
    .local v2, "transformConfig":Lcom/facebook/react/animated/TransformAnimatedNode$TransformConfig;
    instance-of v3, v2, Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;

    if-eqz v3, :cond_2

    .line 66
    move-object v3, v2

    check-cast v3, Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;

    iget v3, v3, Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;->mNodeTag:I

    .line 67
    .local v3, "nodeTag":I
    iget-object v4, p0, Lcom/facebook/react/animated/TransformAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    invoke-virtual {v4, v3}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;

    move-result-object v4

    .line 68
    .local v4, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v4, :cond_1

    .line 70
    instance-of v5, v4, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v5, :cond_0

    .line 71
    move-object v5, v4

    check-cast v5, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v5}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v5

    .line 76
    .end local v3    # "nodeTag":I
    .end local v4    # "node":Lcom/facebook/react/animated/AnimatedNode;
    .local v5, "value":D
    goto :goto_1

    .line 73
    .end local v5    # "value":D
    .restart local v3    # "nodeTag":I
    .restart local v4    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported type of node used as a transform child node "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "Mapped style node does not exists"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    .end local v3    # "nodeTag":I
    .end local v4    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_2
    move-object v3, v2

    check-cast v3, Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;

    iget-wide v5, v3, Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;->mValue:D

    .line 80
    .restart local v5    # "value":D
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v7, v2, Lcom/facebook/react/animated/TransformAnimatedNode$TransformConfig;->mProperty:Ljava/lang/String;

    aput-object v7, v3, v4

    const/4 v4, 0x1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v3}, Lcom/facebook/react/bridge/JavaOnlyMap;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v2    # "transformConfig":Lcom/facebook/react/animated/TransformAnimatedNode$TransformConfig;
    .end local v5    # "value":D
    goto :goto_0

    .line 83
    :cond_3
    invoke-static {v0}, Lcom/facebook/react/bridge/JavaOnlyArray;->from(Ljava/util/List;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v1

    const-string v2, "transform"

    invoke-virtual {p1, v2, v1}, Lcom/facebook/react/bridge/JavaOnlyMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 84
    return-void
.end method
