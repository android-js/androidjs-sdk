.class public Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;
.super Lcom/facebook/imagepipeline/producers/LocalFetchProducer;
.source "LocalContentUriThumbnailFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ThumbnailProducer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/LocalFetchProducer;",
        "Lcom/facebook/imagepipeline/producers/ThumbnailProducer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# static fields
.field private static final MICRO_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

.field private static final MINI_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

.field private static final NO_THUMBNAIL:I = 0x0

.field public static final PRODUCER_NAME:Ljava/lang/String; = "LocalContentUriThumbnailFetchProducer"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final THUMBNAIL_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    const-class v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;

    sput-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->TAG:Ljava/lang/Class;

    .line 39
    const-string v0, "_data"

    const-string v1, "_id"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->PROJECTION:[Ljava/lang/String;

    .line 43
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->THUMBNAIL_PROJECTION:[Ljava/lang/String;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v2, 0x200

    const/16 v3, 0x180

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->MINI_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x60

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->MICRO_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "pooledByteBufferFactory"    # Lcom/facebook/common/memory/PooledByteBufferFactory;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/LocalFetchProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;)V

    .line 59
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    return-void
.end method

.method private getCameraImage(Landroid/net/Uri;Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/image/EncodedImage;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resizeOptions"    # Lcom/facebook/imagepipeline/common/ResizeOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 88
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    return-object v1

    .line 92
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 93
    nop

    .line 107
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 93
    return-object v1

    .line 95
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 96
    const-string v2, "_data"

    .line 97
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "pathname":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 99
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 100
    .local v3, "imageIdColumnIndex":I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->getThumbnail(Lcom/facebook/imagepipeline/common/ResizeOptions;I)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v4

    .line 101
    .local v4, "thumbnail":Lcom/facebook/imagepipeline/image/EncodedImage;
    if-eqz v4, :cond_2

    .line 102
    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->getRotationAngle(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->setRotationAngle(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    nop

    .line 107
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 103
    return-object v4

    .line 107
    .end local v2    # "pathname":Ljava/lang/String;
    .end local v3    # "imageIdColumnIndex":I
    .end local v4    # "thumbnail":Lcom/facebook/imagepipeline/image/EncodedImage;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 108
    nop

    .line 109
    return-object v1

    .line 107
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 108
    throw v1
.end method

.method private static getLength(Ljava/lang/String;)I
    .locals 2
    .param p0, "pathname"    # Ljava/lang/String;

    .line 167
    if-nez p0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method private static getRotationAngle(Ljava/lang/String;)I
    .locals 5
    .param p0, "pathname"    # Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 178
    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 179
    .local v2, "exif":Landroid/media/ExifInterface;
    const-string v3, "Orientation"

    invoke-virtual {v2, v3, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/facebook/imageutils/JfifUtil;->getAutoRotateAngleFromOrientation(I)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 181
    .end local v2    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v2

    .line 182
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v3, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->TAG:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string v4, "Unable to retrieve thumbnail rotation for %s"

    invoke-static {v3, v2, v4, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_0
    return v0
.end method

.method private getThumbnail(Lcom/facebook/imagepipeline/common/ResizeOptions;I)Lcom/facebook/imagepipeline/image/EncodedImage;
    .locals 7
    .param p1, "resizeOptions"    # Lcom/facebook/imagepipeline/common/ResizeOptions;
    .param p2, "imageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->getThumbnailKind(Lcom/facebook/imagepipeline/common/ResizeOptions;)I

    move-result v0

    .line 117
    .local v0, "thumbnailKind":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    return-object v1

    .line 120
    :cond_0
    const/4 v2, 0x0

    .line 122
    .local v2, "thumbnailCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->mContentResolver:Landroid/content/ContentResolver;

    int-to-long v4, p2

    sget-object v6, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->THUMBNAIL_PROJECTION:[Ljava/lang/String;

    invoke-static {v3, v4, v5, v0, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->queryMiniThumbnail(Landroid/content/ContentResolver;JI[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 127
    if-nez v2, :cond_2

    .line 128
    nop

    .line 139
    if-eqz v2, :cond_1

    .line 140
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_1
    return-object v1

    .line 130
    :cond_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 132
    const-string v3, "_data"

    .line 133
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 132
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "thumbnailUri":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 135
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->getLength(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->getEncodedImage(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    if-eqz v2, :cond_3

    .line 140
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_3
    return-object v1

    .line 139
    .end local v3    # "thumbnailUri":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_5

    .line 140
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_5
    return-object v1

    .line 139
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_6

    .line 140
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_6
    throw v1
.end method

.method private static getThumbnailKind(Lcom/facebook/imagepipeline/common/ResizeOptions;)I
    .locals 2
    .param p0, "resizeOptions"    # Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 151
    sget-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->MICRO_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

    .line 152
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->MICRO_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

    .line 153
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 151
    invoke-static {v0, v1, p0}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->isImageBigEnough(IILcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x3

    return v0

    .line 156
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->MINI_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

    .line 157
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->MINI_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

    .line 158
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 156
    invoke-static {v0, v1, p0}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->isImageBigEnough(IILcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    const/4 v0, 0x1

    return v0

    .line 162
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public canProvideImageForSize(Lcom/facebook/imagepipeline/common/ResizeOptions;)Z
    .locals 2
    .param p1, "resizeOptions"    # Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 64
    sget-object v0, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->MINI_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

    .line 65
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->MINI_THUMBNAIL_DIMENSIONS:Landroid/graphics/Rect;

    .line 66
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 64
    invoke-static {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->isImageBigEnough(IILcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result v0

    return v0
.end method

.method protected getEncodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/image/EncodedImage;
    .locals 2
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    .line 74
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->isLocalCameraUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;->getCameraImage(Landroid/net/Uri;Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v1

    .line 76
    .local v1, "cameraImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    if-eqz v1, :cond_0

    .line 77
    return-object v1

    .line 81
    .end local v1    # "cameraImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getProducerName()Ljava/lang/String;
    .locals 1

    .line 172
    const-string v0, "LocalContentUriThumbnailFetchProducer"

    return-object v0
.end method
