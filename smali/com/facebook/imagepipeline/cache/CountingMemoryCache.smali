.class public Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/MemoryCache;
.implements Lcom/facebook/common/memory/MemoryTrimmable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,
        Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;,
        Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/MemoryCache<",
        "TK;TV;>;",
        "Lcom/facebook/common/memory/MemoryTrimmable;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field static final PARAMS_INTERCHECK_INTERVAL_MS:J
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;

.field final mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingLruMap<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingLruMap<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastCacheParamsCheck:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherEntries:Ljava/util/Map;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 98
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->PARAMS_INTERCHECK_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;Lcom/facebook/common/internal/Supplier;)V
    .locals 2
    .param p2, "cacheTrimStrategy"    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "valueDescriptor":Lcom/facebook/imagepipeline/cache/ValueDescriptor;, "Lcom/facebook/imagepipeline/cache/ValueDescriptor<TV;>;"
    .local p3, "memoryCacheParamsSupplier":Lcom/facebook/common/internal/Supplier;, "Lcom/facebook/common/internal/Supplier<Lcom/facebook/imagepipeline/cache/MemoryCacheParams;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mOtherEntries:Ljava/util/Map;

    .line 129
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    .line 130
    new-instance v0, Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->wrapValueDescriptor(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 131
    new-instance v0, Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->wrapValueDescriptor(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 132
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;

    .line 133
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    .line 134
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mLastCacheParamsCheck:J

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/cache/CountingMemoryCache;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
    .param p1, "x1"    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->releaseClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    return-void
.end method

.method private declared-synchronized canCacheNewValue(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/ValueDescriptor;->getSizeInBytes(Ljava/lang/Object;)I

    move-result v0

    .line 205
    .local v0, "newValueSize":I
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v1, v1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntrySize:I

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getInUseCount()I

    move-result v1

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v3, v3, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntries:I

    sub-int/2addr v3, v2

    if-gt v1, v3, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getInUseSizeInBytes()I

    move-result v1

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v3, v3, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v3, v0

    if-gt v1, v3, :cond_0

    goto :goto_0

    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    :cond_0
    const/4 v2, 0x0

    .line 205
    :goto_0
    monitor-exit p0

    return v2

    .line 203
    .end local v0    # "newValueSize":I
    .end local p1    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized decreaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    monitor-enter p0

    .line 489
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 491
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    monitor-exit p0

    return-void

    .line 488
    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .end local p1    # "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized increaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    monitor-enter p0

    .line 482
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 484
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    monitor-exit p0

    return-void

    .line 481
    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .end local p1    # "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized makeOrphan(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    monitor-enter p0

    .line 475
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 477
    iput-boolean v1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    monitor-exit p0

    return-void

    .line 474
    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .end local p1    # "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized makeOrphans(Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "oldEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    monitor-enter p0

    .line 466
    if-eqz p1, :cond_0

    .line 467
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 468
    .local v1, "oldEntry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->makeOrphan(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    .end local v1    # "oldEntry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    goto :goto_0

    .line 465
    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .end local p1    # "oldEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 471
    .restart local p1    # "oldEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized maybeAddToExclusives(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    monitor-enter p0

    .line 264
    :try_start_0
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    iget-object v1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 268
    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 263
    .end local p1    # "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private maybeClose(Ljava/util/ArrayList;)V
    .locals 3
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 437
    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "oldEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_0

    .line 438
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 439
    .local v1, "oldEntry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 440
    .end local v1    # "oldEntry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    goto :goto_0

    .line 442
    :cond_0
    return-void
.end method

.method private maybeEvictEntries()V
    .locals 4

    .line 392
    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v0, v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxEvictionQueueEntries:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v1, v1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntries:I

    .line 395
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getInUseCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 393
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 396
    .local v0, "maxCount":I
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v1, v1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxEvictionQueueSize:I

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheSize:I

    .line 398
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getInUseSizeInBytes()I

    move-result v3

    sub-int/2addr v2, v3

    .line 396
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 399
    .local v1, "maxSize":I
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->trimExclusivelyOwnedEntries(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 400
    .local v2, "oldEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 401
    .end local v0    # "maxCount":I
    .end local v1    # "maxSize":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 403
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    .line 404
    return-void

    .line 401
    .end local v2    # "oldEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static maybeNotifyExclusiveEntryInsertion(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 3
    .param p0    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 459
    .local p0, "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;->onExclusivityChanged(Ljava/lang/Object;Z)V

    .line 462
    :cond_0
    return-void
.end method

.method private static maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 3
    .param p0    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 453
    .local p0, "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;->onExclusivityChanged(Ljava/lang/Object;Z)V

    .line 456
    :cond_0
    return-void
.end method

.method private maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 445
    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_0

    .line 446
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 447
    .local v1, "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    invoke-static {v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 448
    .end local v1    # "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    goto :goto_0

    .line 450
    :cond_0
    return-void
.end method

.method private declared-synchronized maybeUpdateCacheParams()V
    .locals 5

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 377
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mLastCacheParamsCheck:J

    sget-wide v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->PARAMS_INTERCHECK_INTERVAL_MS:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 378
    monitor-exit p0

    return-void

    .line 380
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mLastCacheParamsCheck:J

    .line 381
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    monitor-exit p0

    return-void

    .line 376
    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized newClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    monitor-enter p0

    .line 235
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->increaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 236
    iget-object v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;

    .line 237
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$2;-><init>(Lcom/facebook/imagepipeline/cache/CountingMemoryCache;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 236
    invoke-static {v0, v1}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 234
    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .end local p1    # "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    monitor-enter p0

    .line 497
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 496
    .end local p1    # "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private releaseClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 248
    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->decreaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 253
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeAddToExclusives(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Z

    move-result v0

    .line 254
    .local v0, "isExclusiveAdded":Z
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 255
    .local v1, "oldRefToClose":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<TV;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 257
    if-eqz v0, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryInsertion(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 258
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeUpdateCacheParams()V

    .line 259
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeEvictEntries()V

    .line 260
    return-void

    .line 255
    .end local v0    # "isExclusiveAdded":Z
    .end local v1    # "oldRefToClose":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<TV;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized trimExclusivelyOwnedEntries(II)Ljava/util/ArrayList;
    .locals 3
    .param p1, "count"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 415
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    move p1, v1

    .line 416
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move p2, v0

    .line 418
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, p2, :cond_0

    .line 419
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 421
    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v0, "oldEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v1

    if-gt v1, p1, :cond_2

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v1, p2, :cond_1

    goto :goto_1

    .line 427
    :cond_1
    monitor-exit p0

    return-object v0

    .line 423
    :cond_2
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getFirstKey()Ljava/lang/Object;

    move-result-object v1

    .line 424
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    nop

    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 414
    .end local v0    # "oldEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    .end local p1    # "count":I
    .end local p2    # "size":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private wrapValueDescriptor(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)Lcom/facebook/imagepipeline/cache/ValueDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
            "TV;>;)",
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "evictableValueDescriptor":Lcom/facebook/imagepipeline/cache/ValueDescriptor;, "Lcom/facebook/imagepipeline/cache/ValueDescriptor<TV;>;"
    new-instance v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$1;-><init>(Lcom/facebook/imagepipeline/cache/CountingMemoryCache;Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    return-object v0
.end method


# virtual methods
.method public cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "valueRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/common/references/CloseableReference;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "TK;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "valueRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<TV;>;"
    .local p3, "observer":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<TK;>;"
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeUpdateCacheParams()V

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "oldRefToClose":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<TV;>;"
    const/4 v1, 0x0

    .line 180
    .local v1, "clientRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<TV;>;"
    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 183
    .local v2, "oldExclusive":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 184
    .local v3, "oldEntry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    if-eqz v3, :cond_0

    .line 185
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->makeOrphan(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 186
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v4

    move-object v0, v4

    .line 189
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->canCacheNewValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->of(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    move-result-object v4

    .line 191
    .local v4, "newEntry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    iget-object v5, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v5, p1, v4}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->newClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v5

    move-object v1, v5

    .line 194
    .end local v3    # "oldEntry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    .end local v4    # "newEntry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 196
    invoke-static {v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 198
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeEvictEntries()V

    .line 199
    return-object v1

    .line 194
    .end local v2    # "oldExclusive":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public clear()V
    .locals 2

    .line 325
    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->clear()Ljava/util/ArrayList;

    move-result-object v0

    .line 327
    .local v0, "oldExclusives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->clear()Ljava/util/ArrayList;

    move-result-object v1

    .line 328
    .local v1, "oldEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 329
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 331
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    .line 332
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeUpdateCacheParams()V

    .line 333
    return-void

    .line 329
    .end local v0    # "oldExclusives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    .end local v1    # "oldEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized contains(Lcom/facebook/common/internal/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Predicate<",
            "TK;>;)Z"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "predicate":Lcom/facebook/common/internal/Predicate;, "Lcom/facebook/common/internal/Predicate<TK;>;"
    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getMatchingEntries(Lcom/facebook/common/internal/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .end local p1    # "predicate":Lcom/facebook/common/internal/Predicate;, "Lcom/facebook/common/internal/Predicate<TK;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 217
    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "clientRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<TV;>;"
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 222
    .local v1, "oldExclusive":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 223
    .local v2, "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    if-eqz v2, :cond_0

    .line 224
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->newClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    move-object v0, v3

    .line 226
    .end local v2    # "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-static {v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 228
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeUpdateCacheParams()V

    .line 229
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeEvictEntries()V

    .line 230
    return-object v0

    .line 226
    .end local v1    # "oldExclusive":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized getCount()I
    .locals 1

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEvictionQueueCount()I
    .locals 1

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEvictionQueueSizeInBytes()I
    .locals 1

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInUseCount()I
    .locals 2

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInUseSizeInBytes()I
    .locals 2

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSizeInBytes()I
    .locals 1

    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAll(Lcom/facebook/common/internal/Predicate;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Predicate<",
            "TK;>;)I"
        }
    .end annotation

    .line 309
    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "predicate":Lcom/facebook/common/internal/Predicate;, "Lcom/facebook/common/internal/Predicate<TK;>;"
    monitor-enter p0

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->removeAll(Lcom/facebook/common/internal/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    .line 311
    .local v0, "oldExclusives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->removeAll(Lcom/facebook/common/internal/Predicate;)Ljava/util/ArrayList;

    move-result-object v1

    .line 312
    .local v1, "oldEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 313
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 315
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    .line 316
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeUpdateCacheParams()V

    .line 317
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeEvictEntries()V

    .line 318
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2

    .line 313
    .end local v0    # "oldExclusives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    .end local v1    # "oldEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public reuse(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 278
    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "clientRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<TV;>;"
    const/4 v1, 0x0

    .line 281
    .local v1, "removed":Z
    const/4 v2, 0x0

    .line 282
    .local v2, "oldExclusive":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    move-object v2, v3

    .line 284
    if-eqz v2, :cond_1

    .line 285
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 286
    .local v3, "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    invoke-static {v3}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget v4, v3, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 290
    iget-object v4, v3, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;

    move-object v0, v4

    .line 291
    const/4 v1, 0x1

    .line 293
    .end local v3    # "entry":Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    if-eqz v1, :cond_2

    .line 295
    invoke-static {v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 297
    :cond_2
    return-object v0

    .line 293
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public trim(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 6
    .param p1, "trimType"    # Lcom/facebook/common/memory/MemoryTrimType;

    .line 360
    .local p0, "this":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;->getTrimRatio(Lcom/facebook/common/memory/MemoryTrimType;)D

    move-result-wide v0

    .line 361
    .local v0, "trimRatio":D
    monitor-enter p0

    .line 362
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 363
    .local v2, "targetCacheSize":I
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getInUseSizeInBytes()I

    move-result v4

    sub-int v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 364
    .local v3, "targetEvictionQueueSize":I
    const v4, 0x7fffffff

    invoke-direct {p0, v4, v3}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->trimExclusivelyOwnedEntries(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 365
    .local v4, "oldEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 366
    .end local v2    # "targetCacheSize":I
    .end local v3    # "targetEvictionQueueSize":I
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 368
    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    .line 369
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeUpdateCacheParams()V

    .line 370
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeEvictEntries()V

    .line 371
    return-void

    .line 366
    .end local v4    # "oldEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
