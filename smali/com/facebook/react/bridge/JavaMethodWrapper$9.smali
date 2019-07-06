.class final Lcom/facebook/react/bridge/JavaMethodWrapper$9;
.super Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
.source "JavaMethodWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/bridge/JavaMethodWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor<",
        "Lcom/facebook/react/bridge/Callback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;-><init>(Lcom/facebook/react/bridge/JavaMethodWrapper$1;)V

    return-void
.end method


# virtual methods
.method public extractArgument(Lcom/facebook/react/bridge/JSInstance;Lcom/facebook/react/bridge/ReadableArray;I)Lcom/facebook/react/bridge/Callback;
    .locals 2
    .param p1, "jsInstance"    # Lcom/facebook/react/bridge/JSInstance;
    .param p2, "jsArguments"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "atIndex"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 109
    invoke-interface {p2, p3}, Lcom/facebook/react/bridge/ReadableArray;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    invoke-interface {p2, p3}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v0

    double-to-int v0, v0

    .line 113
    .local v0, "id":I
    new-instance v1, Lcom/facebook/react/bridge/CallbackImpl;

    invoke-direct {v1, p1, v0}, Lcom/facebook/react/bridge/CallbackImpl;-><init>(Lcom/facebook/react/bridge/JSInstance;I)V

    return-object v1
.end method

.method public bridge synthetic extractArgument(Lcom/facebook/react/bridge/JSInstance;Lcom/facebook/react/bridge/ReadableArray;I)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/bridge/JavaMethodWrapper$9;->extractArgument(Lcom/facebook/react/bridge/JSInstance;Lcom/facebook/react/bridge/ReadableArray;I)Lcom/facebook/react/bridge/Callback;

    move-result-object p1

    return-object p1
.end method
