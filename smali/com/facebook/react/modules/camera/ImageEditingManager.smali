.class public Lcom/facebook/react/modules/camera/ImageEditingManager;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "ImageEditingManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "ImageEditingManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;,
        Lcom/facebook/react/modules/camera/ImageEditingManager$CleanTask;
    }
.end annotation


# static fields
.field private static final COMPRESS_QUALITY:I = 0x5a

.field private static final EXIF_ATTRIBUTES:[Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final LOCAL_URI_PREFIXES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final NAME:Ljava/lang/String; = "ImageEditingManager"

.field private static final TEMP_FILE_PREFIX:Ljava/lang/String; = "ReactNative_cropped_image_"


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 60
    const-string v0, "file://"

    const-string v1, "content://"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/modules/camera/ImageEditingManager;->LOCAL_URI_PREFIXES:Ljava/util/List;

    .line 68
    const-string v1, "FNumber"

    const-string v2, "DateTime"

    const-string v3, "DateTimeDigitized"

    const-string v4, "ExposureTime"

    const-string v5, "Flash"

    const-string v6, "FocalLength"

    const-string v7, "GPSAltitude"

    const-string v8, "GPSAltitudeRef"

    const-string v9, "GPSDateStamp"

    const-string v10, "GPSLatitude"

    const-string v11, "GPSLatitudeRef"

    const-string v12, "GPSLongitude"

    const-string v13, "GPSLongitudeRef"

    const-string v14, "GPSProcessingMethod"

    const-string v15, "GPSTimeStamp"

    const-string v16, "ImageLength"

    const-string v17, "ImageWidth"

    const-string v18, "ISOSpeedRatings"

    const-string v19, "Make"

    const-string v20, "Model"

    const-string v21, "Orientation"

    const-string v22, "SubSecTime"

    const-string v23, "SubSecTimeDigitized"

    const-string v24, "SubSecTimeOriginal"

    const-string v25, "WhiteBalance"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/modules/camera/ImageEditingManager;->EXIF_ATTRIBUTES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 97
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 98
    new-instance v0, Lcom/facebook/react/modules/camera/ImageEditingManager$CleanTask;

    invoke-virtual {p0}, Lcom/facebook/react/modules/camera/ImageEditingManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/modules/camera/ImageEditingManager$CleanTask;-><init>(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/modules/camera/ImageEditingManager$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/camera/ImageEditingManager$CleanTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 56
    invoke-static {p0}, Lcom/facebook/react/modules/camera/ImageEditingManager;->isLocalUri(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-static {p0, p1}, Lcom/facebook/react/modules/camera/ImageEditingManager;->createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Bitmap;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-static {p0, p1, p2}, Lcom/facebook/react/modules/camera/ImageEditingManager;->writeCompressedBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-static {p0, p1, p2}, Lcom/facebook/react/modules/camera/ImageEditingManager;->copyExif(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$600(IIII)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 56
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/react/modules/camera/ImageEditingManager;->getDecodeSampleSize(IIII)I

    move-result v0

    return v0
.end method

.method private static copyExif(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldImage"    # Landroid/net/Uri;
    .param p2, "newFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    invoke-static {p0, p1}, Lcom/facebook/react/modules/camera/ImageEditingManager;->getFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 401
    .local v0, "oldFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get real path for uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void

    .line 406
    :cond_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, "oldExif":Landroid/media/ExifInterface;
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 408
    .local v2, "newExif":Landroid/media/ExifInterface;
    sget-object v3, Lcom/facebook/react/modules/camera/ImageEditingManager;->EXIF_ATTRIBUTES:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 409
    .local v6, "attribute":Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 410
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 411
    invoke-virtual {v2, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .end local v6    # "attribute":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 415
    return-void
.end method

.method private static createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimeType"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 490
    .local v0, "externalCacheDir":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 492
    .local v1, "internalCacheDir":Ljava/io/File;
    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No cache directory available"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 495
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 496
    move-object v2, v1

    .local v2, "cacheDir":Ljava/io/File;
    goto :goto_1

    .line 498
    .end local v2    # "cacheDir":Ljava/io/File;
    :cond_2
    if-nez v1, :cond_3

    .line 499
    move-object v2, v0

    .restart local v2    # "cacheDir":Ljava/io/File;
    goto :goto_1

    .line 501
    .end local v2    # "cacheDir":Ljava/io/File;
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    move-object v2, v0

    goto :goto_1

    :cond_4
    move-object v2, v1

    .line 504
    .restart local v2    # "cacheDir":Ljava/io/File;
    :goto_1
    invoke-static {p1}, Lcom/facebook/react/modules/camera/ImageEditingManager;->getFileExtensionForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ReactNative_cropped_image_"

    invoke-static {v4, v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    return-object v3
.end method

.method private static getCompressFormatForType(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .line 460
    const-string v0, "image/png"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0

    .line 463
    :cond_0
    const-string v0, "image/webp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0

    .line 466
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method private static getDecodeSampleSize(IIII)I
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I

    .line 514
    const/4 v0, 0x1

    .line 515
    .local v0, "inSampleSize":I
    if-gt p1, p2, :cond_0

    if-le p0, p3, :cond_1

    .line 516
    :cond_0
    div-int/lit8 v1, p1, 0x2

    .line 517
    .local v1, "halfHeight":I
    div-int/lit8 v2, p0, 0x2

    .line 518
    .local v2, "halfWidth":I
    :goto_0
    div-int v3, v2, v0

    if-lt v3, p2, :cond_1

    div-int v3, v1, v0

    if-lt v3, p3, :cond_1

    .line 520
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 523
    .end local v1    # "halfHeight":I
    .end local v2    # "halfWidth":I
    :cond_1
    return v0
.end method

.method private static getFileExtensionForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 450
    const-string v0, "image/png"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const-string v0, ".png"

    return-object v0

    .line 453
    :cond_0
    const-string v0, "image/webp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    const-string v0, ".webp"

    return-object v0

    .line 456
    :cond_1
    const-string v0, ".jpg"

    return-object v0
.end method

.method private static getFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 418
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 420
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 422
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 423
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 425
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 428
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 428
    return-object v2

    .line 432
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 433
    goto :goto_0

    .line 432
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 433
    throw v1

    .line 437
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isLocalUri(Ljava/lang/String;)Z
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    .line 441
    sget-object v0, Lcom/facebook/react/modules/camera/ImageEditingManager;->LOCAL_URI_PREFIXES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 442
    .local v1, "localPrefix":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    const/4 v0, 0x1

    return v0

    .line 445
    .end local v1    # "localPrefix":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 446
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static writeCompressedBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .param p0, "cropped"    # Landroid/graphics/Bitmap;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "tempFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 473
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p1}, Lcom/facebook/react/modules/camera/ImageEditingManager;->getCompressFormatForType(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    nop

    .line 476
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 479
    return-void

    .line 475
    :catchall_0
    move-exception v1

    .line 476
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 478
    throw v1
.end method


# virtual methods
.method public cropImage(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p3, "success"    # Lcom/facebook/react/bridge/Callback;
    .param p4, "error"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 174
    move-object/from16 v0, p2

    const-string v1, "offset"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 175
    .local v1, "offset":Lcom/facebook/react/bridge/ReadableMap;
    :goto_0
    const-string v2, "size"

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    :cond_1
    move-object v2, v3

    .line 176
    .local v2, "size":Lcom/facebook/react/bridge/ReadableMap;
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 177
    const-string v3, "x"

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "y"

    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 178
    const-string v5, "width"

    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "height"

    invoke-interface {v2, v6}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 181
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 185
    new-instance v7, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/modules/camera/ImageEditingManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v9

    .line 188
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-int v11, v10

    .line 189
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-int v12, v3

    .line 190
    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-int v13, v3

    .line 191
    invoke-interface {v2, v6}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-int v14, v3

    const/16 v17, 0x0

    move-object v8, v7

    move-object/from16 v10, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    invoke-direct/range {v8 .. v17}, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;-><init>(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;IIIILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/modules/camera/ImageEditingManager$1;)V

    move-object v3, v7

    .line 194
    .local v3, "cropTask":Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;
    const-string v4, "displaySize"

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 195
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    .line 196
    .local v4, "targetSize":Lcom/facebook/react/bridge/ReadableMap;
    nop

    .line 197
    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-int v5, v7

    .line 198
    invoke-interface {v4, v6}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-int v6, v6

    .line 196
    invoke-virtual {v3, v5, v6}, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->setTargetSize(II)V

    .line 200
    .end local v4    # "targetSize":Lcom/facebook/react/bridge/ReadableMap;
    :cond_2
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 201
    return-void

    .line 182
    .end local v3    # "cropTask":Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;
    :cond_3
    new-instance v3, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v4, "Please specify a URI"

    invoke-direct {v3, v4}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_4
    new-instance v3, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v4, "Please specify offset and size"

    invoke-direct {v3, v4}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, "ImageEditingManager"

    return-object v0
.end method

.method public onCatalystInstanceDestroy()V
    .locals 3

    .line 113
    new-instance v0, Lcom/facebook/react/modules/camera/ImageEditingManager$CleanTask;

    invoke-virtual {p0}, Lcom/facebook/react/modules/camera/ImageEditingManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/modules/camera/ImageEditingManager$CleanTask;-><init>(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/modules/camera/ImageEditingManager$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/camera/ImageEditingManager$CleanTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 114
    return-void
.end method
