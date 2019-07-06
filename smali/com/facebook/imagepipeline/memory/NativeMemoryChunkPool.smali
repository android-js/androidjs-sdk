.class public Lcom/facebook/imagepipeline/memory/NativeMemoryChunkPool;
.super Lcom/facebook/imagepipeline/memory/BasePool;
.source "NativeMemoryChunkPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/memory/BasePool<",
        "Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;",
        ">;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mBucketSizes:[I


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)V
    .locals 4
    .param p1, "memoryTrimmableRegistry"    # Lcom/facebook/common/memory/MemoryTrimmableRegistry;
    .param p2, "poolParams"    # Lcom/facebook/imagepipeline/memory/PoolParams;
    .param p3, "nativeMemoryChunkPoolStatsTracker"    # Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/BasePool;-><init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)V

    .line 33
    iget-object v0, p2, Lcom/facebook/imagepipeline/memory/PoolParams;->bucketSizes:Landroid/util/SparseIntArray;

    .line 34
    .local v0, "bucketSizes":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunkPool;->mBucketSizes:[I

    .line 35
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunkPool;->mBucketSizes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 36
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunkPool;->initialize()V

    .line 39
    return-void
.end method


# virtual methods
.method protected alloc(I)Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
    .locals 1
    .param p1, "bucketedSize"    # I

    .line 56
    new-instance v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic alloc(I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunkPool;->alloc(I)Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    move-result-object p1

    return-object p1
.end method

.method protected free(Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;)V
    .locals 0
    .param p1, "value"    # Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    .line 65
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->close()V

    .line 67
    return-void
.end method

.method protected bridge synthetic free(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunkPool;->free(Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;)V

    return-void
.end method

.method protected getBucketedSize(I)I
    .locals 5
    .param p1, "requestSize"    # I

    .line 91
    move v0, p1

    .line 92
    .local v0, "intRequestSize":I
    if-lez v0, :cond_2

    .line 97
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunkPool;->mBucketSizes:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 98
    .local v4, "bucketedSize":I
    if-lt v4, v0, :cond_0

    .line 99
    return v4

    .line 97
    .end local v4    # "bucketedSize":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_1
    return p1

    .line 93
    :cond_2
    new-instance v1, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;-><init>(Ljava/lang/Object;)V

    throw v1

    return-void
.end method

.method protected getBucketedSizeForValue(Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;)I
    .locals 1
    .param p1, "value"    # Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    .line 115
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->getSize()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getBucketedSizeForValue(Ljava/lang/Object;)I
    .locals 0

    .line 18
    check-cast p1, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunkPool;->getBucketedSizeForValue(Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;)I

    move-result p1

    return p1
.end method

.method public getMinBufferSize()I
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunkPool;->mBucketSizes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected getSizeInBytes(I)I
    .locals 0
    .param p1, "bucketedSize"    # I

    .line 76
    return p1
.end method

.method protected isReusable(Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;)Z
    .locals 1
    .param p1, "value"    # Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    .line 128
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected bridge synthetic isReusable(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    check-cast p1, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunkPool;->isReusable(Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;)Z

    move-result p1

    return p1
.end method
