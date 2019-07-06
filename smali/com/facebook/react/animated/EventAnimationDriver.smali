.class Lcom/facebook/react/animated/EventAnimationDriver;
.super Ljava/lang/Object;
.source "EventAnimationDriver.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/RCTEventEmitter;


# instance fields
.field private mEventPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mValueNode:Lcom/facebook/react/animated/ValueAnimatedNode;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/facebook/react/animated/ValueAnimatedNode;)V
    .locals 0
    .param p2, "valueNode"    # Lcom/facebook/react/animated/ValueAnimatedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/react/animated/ValueAnimatedNode;",
            ")V"
        }
    .end annotation

    .line 26
    .local p1, "eventPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/react/animated/EventAnimationDriver;->mEventPath:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/facebook/react/animated/EventAnimationDriver;->mValueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 29
    return-void
.end method


# virtual methods
.method public receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 4
    .param p1, "targetTag"    # I
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "event"    # Lcom/facebook/react/bridge/WritableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    if-eqz p3, :cond_1

    .line 38
    move-object v0, p3

    .line 39
    .local v0, "curMap":Lcom/facebook/react/bridge/ReadableMap;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/animated/EventAnimationDriver;->mEventPath:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/facebook/react/animated/EventAnimationDriver;->mEventPath:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/animated/EventAnimationDriver;->mValueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-object v2, p0, Lcom/facebook/react/animated/EventAnimationDriver;->mEventPath:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    .line 44
    return-void

    .line 34
    .end local v0    # "curMap":Lcom/facebook/react/bridge/ReadableMap;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Native animated events must have event data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public receiveTouches(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "touches"    # Lcom/facebook/react/bridge/WritableArray;
    .param p3, "changedIndices"    # Lcom/facebook/react/bridge/WritableArray;

    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "receiveTouches is not support by native animated events"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
