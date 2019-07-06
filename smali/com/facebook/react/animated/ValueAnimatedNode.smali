.class Lcom/facebook/react/animated/ValueAnimatedNode;
.super Lcom/facebook/react/animated/AnimatedNode;
.source "ValueAnimatedNode.java"


# instance fields
.field mOffset:D

.field mValue:D

.field private mValueListener:Lcom/facebook/react/animated/AnimatedNodeValueListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimatedNode;-><init>()V

    .line 19
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 27
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimatedNode;-><init>()V

    .line 19
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    .line 28
    const-string v0, "value"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    .line 29
    const-string v0, "offset"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    .line 30
    return-void
.end method


# virtual methods
.method public extractOffset()V
    .locals 4

    .line 42
    iget-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    iget-wide v2, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    .line 44
    return-void
.end method

.method public flattenOffset()V
    .locals 4

    .line 37
    iget-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    iget-wide v2, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    .line 39
    return-void
.end method

.method public getValue()D
    .locals 4

    .line 33
    iget-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    iget-wide v2, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public onValueUpdate()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValueListener:Lcom/facebook/react/animated/AnimatedNodeValueListener;

    if-nez v0, :cond_0

    .line 48
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/animated/AnimatedNodeValueListener;->onValueUpdate(D)V

    .line 51
    return-void
.end method

.method public setValueListener(Lcom/facebook/react/animated/AnimatedNodeValueListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/facebook/react/animated/AnimatedNodeValueListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    iput-object p1, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValueListener:Lcom/facebook/react/animated/AnimatedNodeValueListener;

    .line 55
    return-void
.end method
