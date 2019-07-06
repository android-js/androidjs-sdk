.class public Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;
.super Ljava/lang/Object;
.source "NoOpImageCacheStatsTracker.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;


# static fields
.field private static sInstance:Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;->sInstance:Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;
    .locals 2

    const-class v0, Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;->sInstance:Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;-><init>()V

    sput-object v1, Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;->sInstance:Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;

    .line 25
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;->sInstance:Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public onBitmapCacheHit(Lcom/facebook/cache/common/CacheKey;)V
    .locals 0
    .param p1, "cacheKey"    # Lcom/facebook/cache/common/CacheKey;

    .line 34
    return-void
.end method

.method public onBitmapCacheMiss()V
    .locals 0

    .line 38
    return-void
.end method

.method public onBitmapCachePut()V
    .locals 0

    .line 30
    return-void
.end method

.method public onDiskCacheGetFail()V
    .locals 0

    .line 70
    return-void
.end method

.method public onDiskCacheHit()V
    .locals 0

    .line 62
    return-void
.end method

.method public onDiskCacheMiss()V
    .locals 0

    .line 66
    return-void
.end method

.method public onMemoryCacheHit(Lcom/facebook/cache/common/CacheKey;)V
    .locals 0
    .param p1, "cacheKey"    # Lcom/facebook/cache/common/CacheKey;

    .line 46
    return-void
.end method

.method public onMemoryCacheMiss()V
    .locals 0

    .line 50
    return-void
.end method

.method public onMemoryCachePut()V
    .locals 0

    .line 42
    return-void
.end method

.method public onStagingAreaHit(Lcom/facebook/cache/common/CacheKey;)V
    .locals 0
    .param p1, "cacheKey"    # Lcom/facebook/cache/common/CacheKey;

    .line 54
    return-void
.end method

.method public onStagingAreaMiss()V
    .locals 0

    .line 58
    return-void
.end method

.method public registerBitmapMemoryCache(Lcom/facebook/imagepipeline/cache/CountingMemoryCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "**>;)V"
        }
    .end annotation

    .line 74
    .local p1, "bitmapMemoryCache":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<**>;"
    return-void
.end method

.method public registerEncodedMemoryCache(Lcom/facebook/imagepipeline/cache/CountingMemoryCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "**>;)V"
        }
    .end annotation

    .line 78
    .local p1, "encodedMemoryCache":Lcom/facebook/imagepipeline/cache/CountingMemoryCache;, "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<**>;"
    return-void
.end method
