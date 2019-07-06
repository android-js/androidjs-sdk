.class public abstract Lcom/facebook/imagepipeline/request/BasePostprocessor;
.super Ljava/lang/Object;
.source "BasePostprocessor.java"

# interfaces
.implements Lcom/facebook/imagepipeline/request/Postprocessor;


# static fields
.field public static final FALLBACK_BITMAP_CONFIGURATION:Landroid/graphics/Bitmap$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/facebook/imagepipeline/request/BasePostprocessor;->FALLBACK_BITMAP_CONFIGURATION:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static internalCopyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "destBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;

    .line 116
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 117
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 123
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 125
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "Unknown postprocessor"

    return-object v0
.end method

.method public getPostprocessorCacheKey()Lcom/facebook/cache/common/CacheKey;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public process(Landroid/graphics/Bitmap;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;)Lcom/facebook/common/references/CloseableReference;
    .locals 4
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bitmapFactory"    # Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 55
    .local v0, "sourceBitmapConfig":Landroid/graphics/Bitmap$Config;
    nop

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eqz v0, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/facebook/imagepipeline/request/BasePostprocessor;->FALLBACK_BITMAP_CONFIGURATION:Landroid/graphics/Bitmap$Config;

    .line 56
    :goto_0
    invoke-virtual {p2, v1, v2, v3}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmapInternal(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 61
    .local v1, "destBitmapRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2, p1}, Lcom/facebook/imagepipeline/request/BasePostprocessor;->process(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 62
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 62
    return-object v2

    .line 64
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 65
    throw v2
.end method

.method public process(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 97
    return-void
.end method

.method public process(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "destBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "sourceBitmap"    # Landroid/graphics/Bitmap;

    .line 84
    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/request/BasePostprocessor;->internalCopyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/request/BasePostprocessor;->process(Landroid/graphics/Bitmap;)V

    .line 86
    return-void
.end method
