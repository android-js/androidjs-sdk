.class public Lcom/facebook/imagepipeline/memory/SharedByteArray;
.super Ljava/lang/Object;
.source "SharedByteArray.java"

# interfaces
.implements Lcom/facebook/common/memory/MemoryTrimmable;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field final mByteArraySoftRef:Lcom/facebook/common/references/OOMSoftReference;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/OOMSoftReference<",
            "[B>;"
        }
    .end annotation
.end field

.field final mMaxByteArraySize:I
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final mMinByteArraySize:I
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private final mResourceReleaser:Lcom/facebook/common/references/ResourceReleaser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/ResourceReleaser<",
            "[B>;"
        }
    .end annotation
.end field

.field final mSemaphore:Ljava/util/concurrent/Semaphore;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;)V
    .locals 4
    .param p1, "memoryTrimmableRegistry"    # Lcom/facebook/common/memory/MemoryTrimmableRegistry;
    .param p2, "params"    # Lcom/facebook/imagepipeline/memory/PoolParams;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget v0, p2, Lcom/facebook/imagepipeline/memory/PoolParams;->minBucketSize:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 64
    iget v0, p2, Lcom/facebook/imagepipeline/memory/PoolParams;->maxBucketSize:I

    iget v3, p2, Lcom/facebook/imagepipeline/memory/PoolParams;->minBucketSize:I

    if-lt v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 66
    iget v0, p2, Lcom/facebook/imagepipeline/memory/PoolParams;->maxBucketSize:I

    iput v0, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mMaxByteArraySize:I

    .line 67
    iget v0, p2, Lcom/facebook/imagepipeline/memory/PoolParams;->minBucketSize:I

    iput v0, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mMinByteArraySize:I

    .line 68
    new-instance v0, Lcom/facebook/common/references/OOMSoftReference;

    invoke-direct {v0}, Lcom/facebook/common/references/OOMSoftReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mByteArraySoftRef:Lcom/facebook/common/references/OOMSoftReference;

    .line 69
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 70
    new-instance v0, Lcom/facebook/imagepipeline/memory/SharedByteArray$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/memory/SharedByteArray$1;-><init>(Lcom/facebook/imagepipeline/memory/SharedByteArray;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mResourceReleaser:Lcom/facebook/common/references/ResourceReleaser;

    .line 77
    invoke-interface {p1, p0}, Lcom/facebook/common/memory/MemoryTrimmableRegistry;->registerMemoryTrimmable(Lcom/facebook/common/memory/MemoryTrimmable;)V

    .line 78
    return-void
.end method

.method private declared-synchronized allocateByteArray(I)[B
    .locals 2
    .param p1, "size"    # I

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mByteArraySoftRef:Lcom/facebook/common/references/OOMSoftReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/OOMSoftReference;->clear()V

    .line 135
    new-array v0, p1, [B

    .line 136
    .local v0, "byteArray":[B
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mByteArraySoftRef:Lcom/facebook/common/references/OOMSoftReference;

    invoke-virtual {v1, v0}, Lcom/facebook/common/references/OOMSoftReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-object v0

    .line 133
    .end local v0    # "byteArray":[B
    .end local p0    # "this":Lcom/facebook/imagepipeline/memory/SharedByteArray;
    .end local p1    # "size":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getByteArray(I)[B
    .locals 3
    .param p1, "requestedSize"    # I

    .line 100
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/SharedByteArray;->getBucketedSize(I)I

    move-result v0

    .line 101
    .local v0, "bucketedSize":I
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mByteArraySoftRef:Lcom/facebook/common/references/OOMSoftReference;

    invoke-virtual {v1}, Lcom/facebook/common/references/OOMSoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 102
    .local v1, "byteArray":[B
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v2, v0, :cond_1

    .line 103
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/memory/SharedByteArray;->allocateByteArray(I)[B

    move-result-object v1

    .line 105
    :cond_1
    return-object v1
.end method


# virtual methods
.method public get(I)Lcom/facebook/common/references/CloseableReference;
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "[B>;"
        }
    .end annotation

    .line 87
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Size must be greater than zero"

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 88
    iget v2, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mMaxByteArraySize:I

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Requested size is too big"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 91
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/SharedByteArray;->getByteArray(I)[B

    move-result-object v0

    .line 92
    .local v0, "byteArray":[B
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mResourceReleaser:Lcom/facebook/common/references/ResourceReleaser;

    invoke-static {v0, v1}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 93
    .end local v0    # "byteArray":[B
    :catch_0
    move-exception v0

    .line 94
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 95
    invoke-static {v0}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method getBucketedSize(I)I
    .locals 1
    .param p1, "size"    # I
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 128
    iget v0, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mMinByteArraySize:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 129
    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public trim(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 2
    .param p1, "trimType"    # Lcom/facebook/common/memory/MemoryTrimType;

    .line 116
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mByteArraySoftRef:Lcom/facebook/common/references/OOMSoftReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/OOMSoftReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 123
    nop

    .line 124
    return-void

    .line 122
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/SharedByteArray;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 123
    throw v0
.end method
