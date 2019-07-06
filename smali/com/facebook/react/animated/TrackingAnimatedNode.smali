.class Lcom/facebook/react/animated/TrackingAnimatedNode;
.super Lcom/facebook/react/animated/AnimatedNode;
.source "TrackingAnimatedNode.java"


# instance fields
.field private final mAnimationConfig:Lcom/facebook/react/bridge/JavaOnlyMap;

.field private final mAnimationId:I

.field private final mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

.field private final mToValueNode:I

.field private final mValueNode:I


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 1
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "nativeAnimatedNodesManager"    # Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 21
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimatedNode;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/facebook/react/animated/TrackingAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 23
    const-string v0, "animationId"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/react/animated/TrackingAnimatedNode;->mAnimationId:I

    .line 24
    const-string v0, "toValue"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/react/animated/TrackingAnimatedNode;->mToValueNode:I

    .line 25
    const-string v0, "value"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/react/animated/TrackingAnimatedNode;->mValueNode:I

    .line 26
    const-string v0, "animationConfig"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/bridge/JavaOnlyMap;->deepClone(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/JavaOnlyMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/TrackingAnimatedNode;->mAnimationConfig:Lcom/facebook/react/bridge/JavaOnlyMap;

    .line 27
    return-void
.end method


# virtual methods
.method public update()V
    .locals 6

    .line 31
    iget-object v0, p0, Lcom/facebook/react/animated/TrackingAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    iget v1, p0, Lcom/facebook/react/animated/TrackingAnimatedNode;->mToValueNode:I

    invoke-virtual {v0, v1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;

    move-result-object v0

    .line 32
    .local v0, "toValue":Lcom/facebook/react/animated/AnimatedNode;
    iget-object v1, p0, Lcom/facebook/react/animated/TrackingAnimatedNode;->mAnimationConfig:Lcom/facebook/react/bridge/JavaOnlyMap;

    move-object v2, v0

    check-cast v2, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v2}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v2

    const-string v4, "toValue"

    invoke-virtual {v1, v4, v2, v3}, Lcom/facebook/react/bridge/JavaOnlyMap;->putDouble(Ljava/lang/String;D)V

    .line 33
    iget-object v1, p0, Lcom/facebook/react/animated/TrackingAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    iget v2, p0, Lcom/facebook/react/animated/TrackingAnimatedNode;->mAnimationId:I

    iget v3, p0, Lcom/facebook/react/animated/TrackingAnimatedNode;->mValueNode:I

    iget-object v4, p0, Lcom/facebook/react/animated/TrackingAnimatedNode;->mAnimationConfig:Lcom/facebook/react/bridge/JavaOnlyMap;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->startAnimatingNode(IILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    .line 34
    return-void
.end method
