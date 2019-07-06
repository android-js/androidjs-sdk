.class Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "PartialDiskCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartialDiskCacheConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# static fields
.field private static final READ_SIZE:I = 0x4000


# instance fields
.field private final mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

.field private final mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field private final mPartialEncodedImageFromCache:Lcom/facebook/imagepipeline/image/EncodedImage;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPartialImageCacheKey:Lcom/facebook/cache/common/CacheKey;

.field private final mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/image/EncodedImage;)V
    .locals 0
    .param p2, "defaultBufferedDiskCache"    # Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .param p3, "partialImageCacheKey"    # Lcom/facebook/cache/common/CacheKey;
    .param p4, "pooledByteBufferFactory"    # Lcom/facebook/common/memory/PooledByteBufferFactory;
    .param p5, "byteArrayPool"    # Lcom/facebook/common/memory/ByteArrayPool;
    .param p6, "partialEncodedImageFromCache"    # Lcom/facebook/imagepipeline/image/EncodedImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBufferFactory;",
            "Lcom/facebook/common/memory/ByteArrayPool;",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ")V"
        }
    .end annotation

    .line 251
    .local p1, "consumer":Lcom/facebook/imagepipeline/producers/Consumer;, "Lcom/facebook/imagepipeline/producers/Consumer<Lcom/facebook/imagepipeline/image/EncodedImage;>;"
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 252
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 253
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPartialImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 254
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    .line 255
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    .line 256
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPartialEncodedImageFromCache:Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 257
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/imagepipeline/producers/Consumer;
    .param p2, "x1"    # Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .param p3, "x2"    # Lcom/facebook/cache/common/CacheKey;
    .param p4, "x3"    # Lcom/facebook/common/memory/PooledByteBufferFactory;
    .param p5, "x4"    # Lcom/facebook/common/memory/ByteArrayPool;
    .param p6, "x5"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p7, "x6"    # Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;

    .line 233
    invoke-direct/range {p0 .. p6}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 7
    .param p1, "from"    # Ljava/io/InputStream;
    .param p2, "to"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    move v0, p3

    .line 307
    .local v0, "bytesStillToRead":I
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lcom/facebook/common/memory/ByteArrayPool;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 310
    .local v1, "ioArray":[B
    :cond_0
    :goto_0
    const/4 v3, 0x0

    if-lez v0, :cond_1

    .line 311
    :try_start_0
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v5, v4

    .local v5, "bufferLength":I
    if-ltz v4, :cond_1

    .line 312
    if-lez v5, :cond_0

    .line 313
    invoke-virtual {p2, v1, v3, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    sub-int/2addr v0, v5

    goto :goto_0

    .line 318
    .end local v5    # "bufferLength":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {v3, v1}, Lcom/facebook/common/memory/ByteArrayPool;->release(Ljava/lang/Object;)V

    .line 319
    throw v2

    .line 318
    :cond_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {v2, v1}, Lcom/facebook/common/memory/ByteArrayPool;->release(Ljava/lang/Object;)V

    .line 319
    nop

    .line 321
    if-gtz v0, :cond_2

    .line 328
    return-void

    .line 322
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const/4 v4, 0x0

    check-cast v4, Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 325
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x1

    .line 326
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 322
    const-string v3, "Failed to read %d bytes - finished %d short"

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    return-void
.end method

.method private merge(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .locals 5
    .param p1, "initialData"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "remainingData"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getBytesRange()Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object v1

    iget v1, v1, Lcom/facebook/imagepipeline/common/BytesRange;->from:I

    add-int/2addr v0, v1

    .line 294
    .local v0, "totalLength":I
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    .line 295
    invoke-interface {v1, v0}, Lcom/facebook/common/memory/PooledByteBufferFactory;->newOutputStream(I)Lcom/facebook/common/memory/PooledByteBufferOutputStream;

    move-result-object v1

    .line 298
    .local v1, "pooledOutputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getBytesRange()Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object v2

    iget v2, v2, Lcom/facebook/imagepipeline/common/BytesRange;->from:I

    .line 299
    .local v2, "bytesToReadFromInitialData":I
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 300
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v4

    invoke-direct {p0, v3, v1, v4}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 302
    return-object v1
.end method

.method private sendFinalResultToConsumer(Lcom/facebook/common/memory/PooledByteBufferOutputStream;)V
    .locals 4
    .param p1, "pooledOutputStream"    # Lcom/facebook/common/memory/PooledByteBufferOutputStream;

    .line 331
    nop

    .line 332
    invoke-virtual {p1}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->toByteBuffer()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 333
    .local v0, "result":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    const/4 v1, 0x0

    .line 335
    .local v1, "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    :try_start_0
    new-instance v2, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v2, v0}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V

    move-object v1, v2

    .line 336
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->parseMetaData()V

    .line 337
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 340
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 341
    nop

    .line 342
    return-void

    .line 339
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 340
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 341
    throw v2
.end method


# virtual methods
.method public onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .locals 3
    .param p1, "newResult"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "status"    # I

    .line 261
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->isNotLast(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPartialEncodedImageFromCache:Lcom/facebook/imagepipeline/image/EncodedImage;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getBytesRange()Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPartialEncodedImageFromCache:Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 269
    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->merge(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/common/memory/PooledByteBufferOutputStream;

    move-result-object v0

    .line 270
    .local v0, "pooledOutputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->sendFinalResultToConsumer(Lcom/facebook/common/memory/PooledByteBufferOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .end local v0    # "pooledOutputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 277
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPartialEncodedImageFromCache:Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 278
    goto :goto_1

    .line 276
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 271
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "PartialDiskCacheProducer"

    const-string v2, "Error while merging image data"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 280
    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPartialImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->remove(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;

    goto :goto_3

    .line 276
    :goto_2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 277
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPartialEncodedImageFromCache:Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 278
    throw v0

    .line 281
    :cond_1
    const/16 v0, 0x8

    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->statusHasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->isLast(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, v1, :cond_2

    .line 284
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPartialImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->put(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 285
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    goto :goto_3

    .line 287
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    .line 289
    :goto_3
    return-void
.end method

.method public bridge synthetic onNewResultImpl(Ljava/lang/Object;I)V
    .locals 0

    .line 233
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V

    return-void
.end method
