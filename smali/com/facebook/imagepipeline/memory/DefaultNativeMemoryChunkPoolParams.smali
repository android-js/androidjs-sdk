.class public Lcom/facebook/imagepipeline/memory/DefaultNativeMemoryChunkPoolParams;
.super Ljava/lang/Object;
.source "DefaultNativeMemoryChunkPoolParams.java"


# static fields
.field private static final LARGE_BUCKET_LENGTH:I = 0x2

.field private static final SMALL_BUCKET_LENGTH:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/facebook/imagepipeline/memory/PoolParams;
    .locals 4

    .line 30
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 31
    .local v0, "DEFAULT_BUCKETS":Landroid/util/SparseIntArray;
    const/4 v1, 0x5

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    const/16 v2, 0x800

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    const/16 v2, 0x1000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    const/16 v2, 0x2000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    const/16 v2, 0x4000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    const v2, 0x8000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    const/high16 v2, 0x10000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    const/high16 v2, 0x20000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    const/4 v1, 0x2

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    const/high16 v2, 0x80000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    const/high16 v2, 0x100000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    new-instance v1, Lcom/facebook/imagepipeline/memory/PoolParams;

    .line 43
    invoke-static {}, Lcom/facebook/imagepipeline/memory/DefaultNativeMemoryChunkPoolParams;->getMaxSizeSoftCap()I

    move-result v2

    .line 44
    invoke-static {}, Lcom/facebook/imagepipeline/memory/DefaultNativeMemoryChunkPoolParams;->getMaxSizeHardCap()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/memory/PoolParams;-><init>(IILandroid/util/SparseIntArray;)V

    .line 42
    return-object v1
.end method

.method private static getMaxSizeHardCap()I
    .locals 4

    .line 69
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 70
    .local v1, "maxMemory":I
    const/high16 v0, 0x1000000

    if-ge v1, v0, :cond_0

    .line 71
    div-int/lit8 v0, v1, 0x2

    return v0

    .line 73
    :cond_0
    div-int/lit8 v0, v1, 0x4

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private static getMaxSizeSoftCap()I
    .locals 4

    .line 54
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 55
    .local v1, "maxMemory":I
    const/high16 v0, 0x1000000

    if-ge v1, v0, :cond_0

    .line 56
    const/high16 v0, 0x300000

    return v0

    .line 57
    :cond_0
    const/high16 v0, 0x2000000

    if-ge v1, v0, :cond_1

    .line 58
    const/high16 v0, 0x600000

    return v0

    .line 60
    :cond_1
    const/high16 v0, 0xc00000

    return v0
.end method
