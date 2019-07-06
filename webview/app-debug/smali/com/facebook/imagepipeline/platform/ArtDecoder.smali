.class public Lcom/facebook/imagepipeline/platform/ArtDecoder;
.super Ljava/lang/Object;
.source "ArtDecoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/platform/PlatformDecoder;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final DECODE_BUFFER_SIZE:I = 0x4000

.field private static final EOI_TAIL:[B

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

.field final mDecodeBuffers:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/facebook/imagepipeline/platform/ArtDecoder;

    sput-object v0, Lcom/facebook/imagepipeline/platform/ArtDecoder;->TAG:Ljava/lang/Class;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/imagepipeline/platform/ArtDecoder;->EOI_TAIL:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x27t
    .end array-data
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/memory/BitmapPool;ILandroid/support/v4/util/Pools$SynchronizedPool;)V
    .locals 3
    .param p1, "bitmapPool"    # Lcom/facebook/imagepipeline/memory/BitmapPool;
    .param p2, "maxNumThreads"    # I
    .param p3, "decodeBuffers"    # Landroid/support/v4/util/Pools$SynchronizedPool;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/facebook/imagepipeline/platform/ArtDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    .line 63
    iput-object p3, p0, Lcom/facebook/imagepipeline/platform/ArtDecoder;->mDecodeBuffers:Landroid/support/v4/util/Pools$SynchronizedPool;

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 65
    iget-object v1, p0, Lcom/facebook/imagepipeline/platform/ArtDecoder;->mDecodeBuffers:Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static getDecodeOptionsForStream(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .param p0, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p1, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .line 217
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 219
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSampleSize()I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 220
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 222
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 223
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v2, v3, :cond_0

    .line 227
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 228
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 229
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 230
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 232
    return-object v0

    .line 224
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method


# virtual methods
.method public decodeFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;)Lcom/facebook/common/references/CloseableReference;
    .locals 4
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .param p3, "regionToDecode"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/platform/ArtDecoder;->getDecodeOptionsForStream(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 83
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 85
    .local v1, "retryOnFail":Z
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p3}, Lcom/facebook/imagepipeline/platform/ArtDecoder;->decodeStaticImageFromStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "re":Ljava/lang/RuntimeException;
    if-eqz v1, :cond_1

    .line 88
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, v3, p3}, Lcom/facebook/imagepipeline/platform/ArtDecoder;->decodeFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    return-object v3

    .line 90
    :cond_1
    throw v2
.end method

.method public decodeJPEGFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;I)Lcom/facebook/common/references/CloseableReference;
    .locals 6
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .param p3, "regionToDecode"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/Rect;",
            "I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-virtual {p1, p4}, Lcom/facebook/imagepipeline/image/EncodedImage;->isCompleteAt(I)Z

    move-result v0

    .line 112
    .local v0, "isJpegComplete":Z
    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/platform/ArtDecoder;->getDecodeOptionsForStream(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 114
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 118
    .local v2, "jpegDataStream":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v3

    if-le v3, p4, :cond_0

    .line 120
    new-instance v3, Lcom/facebook/common/streams/LimitedInputStream;

    invoke-direct {v3, v2, p4}, Lcom/facebook/common/streams/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v2, v3

    .line 122
    :cond_0
    if-nez v0, :cond_1

    .line 123
    new-instance v3, Lcom/facebook/common/streams/TailAppendingInputStream;

    sget-object v4, Lcom/facebook/imagepipeline/platform/ArtDecoder;->EOI_TAIL:[B

    invoke-direct {v3, v2, v4}, Lcom/facebook/common/streams/TailAppendingInputStream;-><init>(Ljava/io/InputStream;[B)V

    move-object v2, v3

    .line 125
    :cond_1
    iget-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 127
    .local v3, "retryOnFail":Z
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2, v1, p3}, Lcom/facebook/imagepipeline/platform/ArtDecoder;->decodeStaticImageFromStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 128
    :catch_0
    move-exception v4

    .line 129
    .local v4, "re":Ljava/lang/RuntimeException;
    if-eqz v3, :cond_3

    .line 130
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, v5, p3}, Lcom/facebook/imagepipeline/platform/ArtDecoder;->decodeFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v5

    return-object v5

    .line 132
    :cond_3
    throw v4
.end method

.method protected decodeStaticImageFromStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;)Lcom/facebook/common/references/CloseableReference;
    .locals 12
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "regionToDecode"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/graphics/BitmapFactory$Options;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 140
    .local v0, "targetWidth":I
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 141
    .local v1, "targetHeight":I
    if-eqz p3, :cond_0

    .line 142
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 143
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 145
    :cond_0
    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 146
    invoke-static {v0, v1, v2}, Lcom/facebook/imageutils/BitmapUtil;->getSizeInByteForBitmap(IILandroid/graphics/Bitmap$Config;)I

    move-result v2

    .line 147
    .local v2, "sizeInBytes":I
    iget-object v3, p0, Lcom/facebook/imagepipeline/platform/ArtDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/memory/BitmapPool;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 148
    .local v3, "bitmapToReuse":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_7

    .line 151
    iput-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 153
    const/4 v4, 0x0

    .line 154
    .local v4, "decodedBitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/facebook/imagepipeline/platform/ArtDecoder;->mDecodeBuffers:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v5}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 155
    .local v5, "byteBuffer":Ljava/nio/ByteBuffer;
    if-nez v5, :cond_1

    .line 156
    const/16 v6, 0x4000

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 159
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iput-object v6, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    if-eqz p3, :cond_3

    .line 161
    const/4 v6, 0x0

    .line 163
    .local v6, "bitmapRegionDecoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v7, 0x1

    :try_start_1
    iget-object v8, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v0, v1, v8}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 164
    invoke-static {p1, v7}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v8

    move-object v6, v8

    .line 165
    invoke-virtual {v6, p3, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v7

    .line 169
    if-eqz v6, :cond_3

    .line 170
    :goto_0
    :try_start_2
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 169
    :catchall_0
    move-exception v7

    goto :goto_1

    .line 166
    :catch_0
    move-exception v8

    .line 167
    .local v8, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v9, Lcom/facebook/imagepipeline/platform/ArtDecoder;->TAG:Ljava/lang/Class;

    const-string v10, "Could not decode region %s, decoding full bitmap instead."

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p3, v7, v11

    invoke-static {v9, v10, v7}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    .end local v8    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_3

    .line 170
    goto :goto_0

    .line 169
    :goto_1
    if-eqz v6, :cond_2

    .line 170
    :try_start_4
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 172
    :cond_2
    nop

    .end local v0    # "targetWidth":I
    .end local v1    # "targetHeight":I
    .end local v2    # "sizeInBytes":I
    .end local v3    # "bitmapToReuse":Landroid/graphics/Bitmap;
    .end local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p3    # "regionToDecode":Landroid/graphics/Rect;
    throw v7

    .line 174
    .end local v6    # "bitmapRegionDecoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v0    # "targetWidth":I
    .restart local v1    # "targetHeight":I
    .restart local v2    # "sizeInBytes":I
    .restart local v3    # "bitmapToReuse":Landroid/graphics/Bitmap;
    .restart local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p3    # "regionToDecode":Landroid/graphics/Rect;
    :cond_3
    :goto_2
    if-nez v4, :cond_4

    .line 175
    const/4 v6, 0x0

    invoke-static {p1, v6, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v4, v6

    .line 199
    :cond_4
    iget-object v6, p0, Lcom/facebook/imagepipeline/platform/ArtDecoder;->mDecodeBuffers:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v6, v5}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 200
    nop

    .line 202
    if-ne v3, v4, :cond_5

    .line 208
    iget-object v6, p0, Lcom/facebook/imagepipeline/platform/ArtDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-static {v4, v6}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v6

    return-object v6

    .line 203
    :cond_5
    iget-object v6, p0, Lcom/facebook/imagepipeline/platform/ArtDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-virtual {v6, v3}, Lcom/facebook/imagepipeline/memory/BitmapPool;->release(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 205
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 199
    :catchall_1
    move-exception v6

    goto :goto_3

    .line 195
    :catch_1
    move-exception v6

    .line 196
    .local v6, "re":Ljava/lang/RuntimeException;
    :try_start_5
    iget-object v7, p0, Lcom/facebook/imagepipeline/platform/ArtDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-virtual {v7, v3}, Lcom/facebook/imagepipeline/memory/BitmapPool;->release(Ljava/lang/Object;)V

    .line 197
    nop

    .end local v0    # "targetWidth":I
    .end local v1    # "targetHeight":I
    .end local v2    # "sizeInBytes":I
    .end local v3    # "bitmapToReuse":Landroid/graphics/Bitmap;
    .end local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p3    # "regionToDecode":Landroid/graphics/Rect;
    throw v6

    .line 177
    .end local v6    # "re":Ljava/lang/RuntimeException;
    .restart local v0    # "targetWidth":I
    .restart local v1    # "targetHeight":I
    .restart local v2    # "sizeInBytes":I
    .restart local v3    # "bitmapToReuse":Landroid/graphics/Bitmap;
    .restart local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p3    # "regionToDecode":Landroid/graphics/Rect;
    :catch_2
    move-exception v6

    .line 178
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Lcom/facebook/imagepipeline/platform/ArtDecoder;->mBitmapPool:Lcom/facebook/imagepipeline/memory/BitmapPool;

    invoke-virtual {v7, v3}, Lcom/facebook/imagepipeline/memory/BitmapPool;->release(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 183
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 185
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 186
    .local v7, "naiveDecodedBitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_6

    .line 189
    invoke-static {}, Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;->getInstance()Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 199
    iget-object v9, p0, Lcom/facebook/imagepipeline/platform/ArtDecoder;->mDecodeBuffers:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v9, v5}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 189
    return-object v8

    .line 187
    :cond_6
    nop

    .end local v0    # "targetWidth":I
    .end local v1    # "targetHeight":I
    .end local v2    # "sizeInBytes":I
    .end local v3    # "bitmapToReuse":Landroid/graphics/Bitmap;
    .end local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p3    # "regionToDecode":Landroid/graphics/Rect;
    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 190
    .end local v7    # "naiveDecodedBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "targetWidth":I
    .restart local v1    # "targetHeight":I
    .restart local v2    # "sizeInBytes":I
    .restart local v3    # "bitmapToReuse":Landroid/graphics/Bitmap;
    .restart local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p3    # "regionToDecode":Landroid/graphics/Rect;
    :catch_3
    move-exception v7

    .line 193
    .local v7, "re":Ljava/io/IOException;
    nop

    .end local v0    # "targetWidth":I
    .end local v1    # "targetHeight":I
    .end local v2    # "sizeInBytes":I
    .end local v3    # "bitmapToReuse":Landroid/graphics/Bitmap;
    .end local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p3    # "regionToDecode":Landroid/graphics/Rect;
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 199
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "re":Ljava/io/IOException;
    .restart local v0    # "targetWidth":I
    .restart local v1    # "targetHeight":I
    .restart local v2    # "sizeInBytes":I
    .restart local v3    # "bitmapToReuse":Landroid/graphics/Bitmap;
    .restart local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p3    # "regionToDecode":Landroid/graphics/Rect;
    :goto_3
    iget-object v7, p0, Lcom/facebook/imagepipeline/platform/ArtDecoder;->mDecodeBuffers:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v7, v5}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 200
    throw v6

    .line 149
    .end local v4    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_7
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "BitmapPool.get returned null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    return-void
.end method
