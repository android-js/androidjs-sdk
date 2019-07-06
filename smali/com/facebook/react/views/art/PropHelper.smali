.class Lcom/facebook/react/views/art/PropHelper;
.super Ljava/lang/Object;
.source "PropHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toFloatArray(Lcom/facebook/react/bridge/ReadableArray;[F)I
    .locals 4
    .param p0, "value"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p1, "into"    # [F

    .line 46
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    array-length v1, p1

    if-le v0, v1, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    .line 47
    .local v0, "length":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 48
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, p1, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50
    .end local v1    # "i":I
    :cond_1
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    return v1
.end method

.method static toFloatArray(Lcom/facebook/react/bridge/ReadableArray;)[F
    .locals 1
    .param p0, "value"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 27
    if-eqz p0, :cond_0

    .line 28
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v0, v0, [F

    .line 29
    .local v0, "result":[F
    invoke-static {p0, v0}, Lcom/facebook/react/views/art/PropHelper;->toFloatArray(Lcom/facebook/react/bridge/ReadableArray;[F)I

    .line 30
    return-object v0

    .line 32
    .end local v0    # "result":[F
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
