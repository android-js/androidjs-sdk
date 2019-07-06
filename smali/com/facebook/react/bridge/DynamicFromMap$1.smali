.class final Lcom/facebook/react/bridge/DynamicFromMap$1;
.super Ljava/lang/ThreadLocal;
.source "DynamicFromMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/bridge/DynamicFromMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/support/v4/util/Pools$SimplePool<",
        "Lcom/facebook/react/bridge/DynamicFromMap;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/support/v4/util/Pools$SimplePool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pools$SimplePool<",
            "Lcom/facebook/react/bridge/DynamicFromMap;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/facebook/react/bridge/DynamicFromMap$1;->initialValue()Landroid/support/v4/util/Pools$SimplePool;

    move-result-object v0

    return-object v0
.end method
