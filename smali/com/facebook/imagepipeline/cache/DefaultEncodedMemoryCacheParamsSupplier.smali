.class public Lcom/facebook/imagepipeline/cache/DefaultEncodedMemoryCacheParamsSupplier;
.super Ljava/lang/Object;
.source "DefaultEncodedMemoryCacheParamsSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Supplier<",
        "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_CACHE_ENTRIES:I = 0x7fffffff

.field private static final MAX_EVICTION_QUEUE_ENTRIES:I = 0x7fffffff


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMaxCacheSize()I
    .locals 4

    .line 35
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 36
    .local v1, "maxMemory":I
    const/high16 v0, 0x1000000

    if-ge v1, v0, :cond_0

    .line 37
    const/high16 v0, 0x100000

    return v0

    .line 38
    :cond_0
    const/high16 v0, 0x2000000

    if-ge v1, v0, :cond_1

    .line 39
    const/high16 v0, 0x200000

    return v0

    .line 41
    :cond_1
    const/high16 v0, 0x400000

    return v0
.end method


# virtual methods
.method public get()Lcom/facebook/imagepipeline/cache/MemoryCacheParams;
    .locals 9

    .line 24
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/DefaultEncodedMemoryCacheParamsSupplier;->getMaxCacheSize()I

    move-result v6

    .line 25
    .local v6, "maxCacheSize":I
    div-int/lit8 v7, v6, 0x8

    .line 26
    .local v7, "maxCacheEntrySize":I
    new-instance v8, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    const v2, 0x7fffffff

    const v4, 0x7fffffff

    move-object v0, v8

    move v1, v6

    move v3, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;-><init>(IIIII)V

    return-object v8
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/DefaultEncodedMemoryCacheParamsSupplier;->get()Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    move-result-object v0

    return-object v0
.end method
