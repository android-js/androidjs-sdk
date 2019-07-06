.class Lcom/facebook/react/animated/MultiplicationAnimatedNode;
.super Lcom/facebook/react/animated/ValueAnimatedNode;
.source "MultiplicationAnimatedNode.java"


# instance fields
.field private final mInputNodes:[I

.field private final mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 4
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "nativeAnimatedNodesManager"    # Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 25
    invoke-direct {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/facebook/react/animated/MultiplicationAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 27
    const-string v0, "input"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 28
    .local v0, "inputNodes":Lcom/facebook/react/bridge/ReadableArray;
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/facebook/react/animated/MultiplicationAnimatedNode;->mInputNodes:[I

    .line 29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/animated/MultiplicationAnimatedNode;->mInputNodes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 30
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    aput v3, v2, v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public update()V
    .locals 6

    .line 36
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/facebook/react/animated/MultiplicationAnimatedNode;->mValue:D

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/animated/MultiplicationAnimatedNode;->mInputNodes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/facebook/react/animated/MultiplicationAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    aget v1, v1, v0

    invoke-virtual {v2, v1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;

    move-result-object v1

    .line 39
    .local v1, "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v2, :cond_0

    .line 40
    iget-wide v2, p0, Lcom/facebook/react/animated/MultiplicationAnimatedNode;->mValue:D

    move-object v4, v1

    check-cast v4, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v4}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v4

    mul-double v2, v2, v4

    iput-wide v2, p0, Lcom/facebook/react/animated/MultiplicationAnimatedNode;->mValue:D

    .line 37
    .end local v1    # "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .restart local v1    # "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    :cond_0
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    const-string v3, "Illegal node ID set as an input for Animated.multiply node"

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    .end local v0    # "i":I
    .end local v1    # "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    :cond_1
    return-void
.end method
