.class Lcom/facebook/imagepipeline/memory/BasePool$Counter;
.super Ljava/lang/Object;
.source "BasePool.java"


# annotations
.annotation build Lcom/facebook/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/BasePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Counter"
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.facebook.imagepipeline.memory.BasePool.Counter"


# instance fields
.field mCount:I

.field mNumBytes:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrement(I)V
    .locals 4
    .param p1, "numBytes"    # I

    .line 821
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    const/4 v1, 0x1

    if-lt v0, p1, :cond_0

    iget v2, p0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mCount:I

    if-lez v2, :cond_0

    .line 822
    sub-int/2addr v2, v1

    iput v2, p0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mCount:I

    .line 823
    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    goto :goto_0

    .line 825
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 828
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    .line 829
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mCount:I

    .line 830
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 825
    const-string v1, "com.facebook.imagepipeline.memory.BasePool.Counter"

    const-string v2, "Unexpected decrement of %d. Current numBytes = %d, count = %d"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 832
    :goto_0
    return-void
.end method

.method public increment(I)V
    .locals 1
    .param p1, "numBytes"    # I

    .line 812
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mCount:I

    .line 813
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    .line 814
    return-void
.end method

.method public reset()V
    .locals 1

    .line 838
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mCount:I

    .line 839
    iput v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$Counter;->mNumBytes:I

    .line 840
    return-void
.end method
