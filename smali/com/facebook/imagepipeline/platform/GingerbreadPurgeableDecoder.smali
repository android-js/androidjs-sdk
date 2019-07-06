.class public Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;
.super Lcom/facebook/imagepipeline/platform/DalvikPurgeableDecoder;
.source "GingerbreadPurgeableDecoder.java"


# static fields
.field private static sGetFileDescriptorMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/facebook/imagepipeline/platform/DalvikPurgeableDecoder;-><init>()V

    return-void
.end method

.method private static copyToMemoryFile(Lcom/facebook/common/references/CloseableReference;I[B)Landroid/os/MemoryFile;
    .locals 9
    .param p1, "inputLength"    # I
    .param p2, "suffix"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;I[B)",
            "Landroid/os/MemoryFile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    .local p0, "bytesRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p2

    :goto_0
    add-int/2addr v1, p1

    .line 78
    .local v1, "outputLength":I
    new-instance v2, Landroid/os/MemoryFile;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 79
    .local v2, "memoryFile":Landroid/os/MemoryFile;
    invoke-virtual {v2, v0}, Landroid/os/MemoryFile;->allowPurging(Z)Z

    .line 80
    const/4 v3, 0x0

    .line 81
    .local v3, "pbbIs":Lcom/facebook/common/memory/PooledByteBufferInputStream;
    const/4 v4, 0x0

    .line 82
    .local v4, "is":Lcom/facebook/common/streams/LimitedInputStream;
    const/4 v5, 0x0

    .line 84
    .local v5, "os":Ljava/io/OutputStream;
    const/4 v6, 0x1

    :try_start_0
    new-instance v7, Lcom/facebook/common/memory/PooledByteBufferInputStream;

    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-direct {v7, v8}, Lcom/facebook/common/memory/PooledByteBufferInputStream;-><init>(Lcom/facebook/common/memory/PooledByteBuffer;)V

    move-object v3, v7

    .line 85
    new-instance v7, Lcom/facebook/common/streams/LimitedInputStream;

    invoke-direct {v7, v3, p1}, Lcom/facebook/common/streams/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v4, v7

    .line 86
    invoke-virtual {v2}, Landroid/os/MemoryFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    move-object v5, v7

    .line 87
    invoke-static {v4, v5}, Lcom/facebook/common/internal/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 88
    if-eqz p2, :cond_1

    .line 89
    array-length v7, p2

    invoke-virtual {v2, p2, v0, p1, v7}, Landroid/os/MemoryFile;->writeBytes([BIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    nop

    .line 93
    invoke-static {p0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 94
    invoke-static {v3}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    .line 95
    invoke-static {v4}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    .line 96
    invoke-static {v5, v6}, Lcom/facebook/common/internal/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 91
    return-object v2

    .line 93
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 94
    invoke-static {v3}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    .line 95
    invoke-static {v4}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    .line 96
    invoke-static {v5, v6}, Lcom/facebook/common/internal/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 97
    throw v0
.end method

.method private declared-synchronized getFileDescriptorMethod()Ljava/lang/reflect/Method;
    .locals 3

    monitor-enter p0

    .line 101
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->sGetFileDescriptorMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 103
    :try_start_1
    const-class v0, Landroid/os/MemoryFile;

    const-string v1, "getFileDescriptor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->sGetFileDescriptorMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    goto :goto_0

    .line 104
    .end local p0    # "this":Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->sGetFileDescriptorMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getMemoryFileDescriptor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;
    .locals 2
    .param p1, "memoryFile"    # Landroid/os/MemoryFile;

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->getFileDescriptorMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "rawFD":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 115
    .end local v0    # "rawFD":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method protected decodeByteArrayAsPurgeable(Lcom/facebook/common/references/CloseableReference;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 51
    .local p1, "bytesRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->decodeFileDescriptorAsPurgeable(Lcom/facebook/common/references/CloseableReference;I[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected decodeFileDescriptorAsPurgeable(Lcom/facebook/common/references/CloseableReference;I[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .param p2, "inputLength"    # I
    .param p3, "suffix"    # [B
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;I[B",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 125
    .local p1, "bytesRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    const/4 v0, 0x0

    .line 127
    .local v0, "memoryFile":Landroid/os/MemoryFile;
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->copyToMemoryFile(Lcom/facebook/common/references/CloseableReference;I[B)Landroid/os/MemoryFile;

    move-result-object v1

    move-object v0, v1

    .line 128
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->getMemoryFileDescriptor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 129
    .local v1, "fd":Ljava/io/FileDescriptor;
    sget-object v2, Lcom/facebook/common/webp/WebpSupportStatus;->sWebpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, p4}, Lcom/facebook/common/webp/WebpBitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 130
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const-string v3, "BitmapFactory returned null"

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 130
    :cond_0
    return-object v3

    .line 134
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {v1}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "memoryFile":Landroid/os/MemoryFile;
    .end local p1    # "bytesRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    .end local p2    # "inputLength":I
    .end local p3    # "suffix":[B
    .end local p4    # "options":Landroid/graphics/BitmapFactory$Options;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "memoryFile":Landroid/os/MemoryFile;
    .restart local p1    # "bytesRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    .restart local p2    # "inputLength":I
    .restart local p3    # "suffix":[B
    .restart local p4    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 137
    :cond_1
    throw v1
.end method

.method public bridge synthetic decodeFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;)Lcom/facebook/common/references/CloseableReference;
    .locals 0
    .param p3    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/platform/DalvikPurgeableDecoder;->decodeFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method

.method protected decodeJPEGByteArrayAsPurgeable(Lcom/facebook/common/references/CloseableReference;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p2, "length"    # I
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;I",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 69
    .local p1, "bytesRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->endsWithEOI(Lcom/facebook/common/references/CloseableReference;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->EOI:[B

    .line 70
    .local v0, "suffix":[B
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->decodeFileDescriptorAsPurgeable(Lcom/facebook/common/references/CloseableReference;I[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic decodeJPEGFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;I)Lcom/facebook/common/references/CloseableReference;
    .locals 0
    .param p3    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/platform/DalvikPurgeableDecoder;->decodeJPEGFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;I)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic pinBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/common/references/CloseableReference;
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/platform/DalvikPurgeableDecoder;->pinBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method
