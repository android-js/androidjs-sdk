.class public Lcom/facebook/react/modules/camera/CameraRollManager;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "CameraRollManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "CameraRollManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;,
        Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;
    }
.end annotation


# static fields
.field private static final ASSET_TYPE_ALL:Ljava/lang/String; = "All"

.field private static final ASSET_TYPE_PHOTOS:Ljava/lang/String; = "Photos"

.field private static final ASSET_TYPE_VIDEOS:Ljava/lang/String; = "Videos"

.field private static final ERROR_UNABLE_TO_FILTER:Ljava/lang/String; = "E_UNABLE_TO_FILTER"

.field private static final ERROR_UNABLE_TO_LOAD:Ljava/lang/String; = "E_UNABLE_TO_LOAD"

.field private static final ERROR_UNABLE_TO_LOAD_PERMISSION:Ljava/lang/String; = "E_UNABLE_TO_LOAD_PERMISSION"

.field private static final ERROR_UNABLE_TO_SAVE:Ljava/lang/String; = "E_UNABLE_TO_SAVE"

.field public static final NAME:Ljava/lang/String; = "CameraRollManager"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION_BUCKET:Ljava/lang/String; = "bucket_display_name = ?"

.field private static final SELECTION_DATE_TAKEN:Ljava/lang/String; = "datetaken < ?"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 71
    const-string v0, "_id"

    const-string v1, "mime_type"

    const-string v2, "bucket_display_name"

    const-string v3, "datetaken"

    const-string v4, "width"

    const-string v5, "height"

    const-string v6, "longitude"

    const-string v7, "latitude"

    const-string v8, "_data"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/modules/camera/CameraRollManager;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 87
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 88
    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/facebook/react/modules/camera/CameraRollManager;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/facebook/react/bridge/WritableMap;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # Lcom/facebook/react/bridge/WritableMap;
    .param p3, "x3"    # I

    .line 58
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/react/modules/camera/CameraRollManager;->putEdges(Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/facebook/react/bridge/WritableMap;I)V

    return-void
.end method

.method static synthetic access$400(Landroid/database/Cursor;Lcom/facebook/react/bridge/WritableMap;I)V
    .locals 0
    .param p0, "x0"    # Landroid/database/Cursor;
    .param p1, "x1"    # Lcom/facebook/react/bridge/WritableMap;
    .param p2, "x2"    # I

    .line 58
    invoke-static {p0, p1, p2}, Lcom/facebook/react/modules/camera/CameraRollManager;->putPageInfo(Landroid/database/Cursor;Lcom/facebook/react/bridge/WritableMap;I)V

    return-void
.end method

.method private static putBasicNodeInfo(Landroid/database/Cursor;Lcom/facebook/react/bridge/WritableMap;III)V
    .locals 4
    .param p0, "media"    # Landroid/database/Cursor;
    .param p1, "node"    # Lcom/facebook/react/bridge/WritableMap;
    .param p2, "mimeTypeIndex"    # I
    .param p3, "groupNameIndex"    # I
    .param p4, "dateTakenIndex"    # I

    .line 392
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "group_name"

    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-interface {p0, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-string v2, "timestamp"

    invoke-interface {p1, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 395
    return-void
.end method

.method private static putEdges(Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/facebook/react/bridge/WritableMap;I)V
    .locals 21
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "media"    # Landroid/database/Cursor;
    .param p2, "response"    # Lcom/facebook/react/bridge/WritableMap;
    .param p3, "limit"    # I

    .line 353
    move-object/from16 v7, p1

    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    move-object v8, v0

    .line 354
    .local v8, "edges":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 355
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 356
    .local v9, "idIndex":I
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 357
    .local v10, "mimeTypeIndex":I
    const-string v0, "bucket_display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 358
    .local v11, "groupNameIndex":I
    const-string v0, "datetaken"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 359
    .local v12, "dateTakenIndex":I
    const-string v0, "width"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 360
    .local v13, "widthIndex":I
    const-string v0, "height"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 361
    .local v14, "heightIndex":I
    const-string v0, "longitude"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 362
    .local v15, "longitudeIndex":I
    const-string v0, "latitude"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 363
    .local v6, "latitudeIndex":I
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 365
    .local v16, "dataIndex":I
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_0
    move/from16 v4, p3

    if-ge v5, v4, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    move-object v3, v0

    .line 367
    .local v3, "edge":Lcom/facebook/react/bridge/WritableMap;
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    move-object v2, v0

    .line 368
    .local v2, "node":Lcom/facebook/react/bridge/WritableMap;
    nop

    .line 369
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v17, v2

    .end local v2    # "node":Lcom/facebook/react/bridge/WritableMap;
    .local v17, "node":Lcom/facebook/react/bridge/WritableMap;
    move-object/from16 v18, v8

    move-object v8, v3

    .end local v3    # "edge":Lcom/facebook/react/bridge/WritableMap;
    .local v8, "edge":Lcom/facebook/react/bridge/WritableMap;
    .local v18, "edges":Lcom/facebook/react/bridge/WritableArray;
    move v3, v9

    move v4, v13

    move/from16 v19, v5

    .end local v5    # "i":I
    .local v19, "i":I
    move v5, v14

    move/from16 v20, v9

    move v9, v6

    .end local v6    # "latitudeIndex":I
    .local v9, "latitudeIndex":I
    .local v20, "idIndex":I
    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lcom/facebook/react/modules/camera/CameraRollManager;->putImageInfo(Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/facebook/react/bridge/WritableMap;IIII)Z

    move-result v0

    .line 370
    .local v0, "imageInfoSuccess":Z
    if-eqz v0, :cond_0

    .line 371
    move-object/from16 v1, v17

    .end local v17    # "node":Lcom/facebook/react/bridge/WritableMap;
    .local v1, "node":Lcom/facebook/react/bridge/WritableMap;
    invoke-static {v7, v1, v10, v11, v12}, Lcom/facebook/react/modules/camera/CameraRollManager;->putBasicNodeInfo(Landroid/database/Cursor;Lcom/facebook/react/bridge/WritableMap;III)V

    .line 372
    invoke-static {v7, v1, v15, v9}, Lcom/facebook/react/modules/camera/CameraRollManager;->putLocationInfo(Landroid/database/Cursor;Lcom/facebook/react/bridge/WritableMap;II)V

    .line 374
    const-string v2, "node"

    invoke-interface {v8, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 375
    move-object/from16 v2, v18

    .end local v18    # "edges":Lcom/facebook/react/bridge/WritableArray;
    .local v2, "edges":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v2, v8}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_1

    .line 379
    .end local v1    # "node":Lcom/facebook/react/bridge/WritableMap;
    .end local v2    # "edges":Lcom/facebook/react/bridge/WritableArray;
    .restart local v17    # "node":Lcom/facebook/react/bridge/WritableMap;
    .restart local v18    # "edges":Lcom/facebook/react/bridge/WritableArray;
    :cond_0
    move-object/from16 v1, v17

    move-object/from16 v2, v18

    .end local v17    # "node":Lcom/facebook/react/bridge/WritableMap;
    .end local v18    # "edges":Lcom/facebook/react/bridge/WritableArray;
    .restart local v1    # "node":Lcom/facebook/react/bridge/WritableMap;
    .restart local v2    # "edges":Lcom/facebook/react/bridge/WritableArray;
    add-int/lit8 v5, v19, -0x1

    move/from16 v19, v5

    .line 381
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 365
    .end local v0    # "imageInfoSuccess":Z
    .end local v1    # "node":Lcom/facebook/react/bridge/WritableMap;
    .end local v8    # "edge":Lcom/facebook/react/bridge/WritableMap;
    add-int/lit8 v5, v19, 0x1

    move-object v8, v2

    move v6, v9

    move/from16 v9, v20

    .end local v19    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .end local v2    # "edges":Lcom/facebook/react/bridge/WritableArray;
    .end local v20    # "idIndex":I
    .restart local v6    # "latitudeIndex":I
    .local v8, "edges":Lcom/facebook/react/bridge/WritableArray;
    .local v9, "idIndex":I
    :cond_1
    move/from16 v19, v5

    move-object v2, v8

    move/from16 v20, v9

    move v9, v6

    .line 383
    .end local v5    # "i":I
    .end local v6    # "latitudeIndex":I
    .end local v8    # "edges":Lcom/facebook/react/bridge/WritableArray;
    .restart local v2    # "edges":Lcom/facebook/react/bridge/WritableArray;
    .local v9, "latitudeIndex":I
    .restart local v20    # "idIndex":I
    const-string v0, "edges"

    move-object/from16 v1, p2

    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 384
    return-void
.end method

.method private static putImageInfo(Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/facebook/react/bridge/WritableMap;IIII)Z
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "media"    # Landroid/database/Cursor;
    .param p2, "node"    # Lcom/facebook/react/bridge/WritableMap;
    .param p3, "idIndex"    # I
    .param p4, "widthIndex"    # I
    .param p5, "heightIndex"    # I
    .param p6, "dataIndex"    # I

    .line 405
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    move-object v3, v0

    .line 406
    .local v3, "image":Lcom/facebook/react/bridge/WritableMap;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p6

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 407
    .local v5, "photoUri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "uri"

    invoke-interface {v3, v6, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    move/from16 v6, p4

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-float v7, v0

    .line 409
    .local v7, "width":F
    move/from16 v8, p5

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-float v9, v0

    .line 411
    .local v9, "height":F
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 413
    .local v10, "mimeType":Ljava/lang/String;
    const-string v0, "r"

    const-string v12, "ReactNative"

    const/4 v13, 0x0

    if-eqz v10, :cond_2

    .line 414
    const-string v14, "video"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 416
    :try_start_0
    invoke-virtual {v1, v5, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v14

    .line 417
    .local v14, "photoDescriptor":Landroid/content/res/AssetFileDescriptor;
    new-instance v15, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v15}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 418
    .local v15, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 421
    cmpg-float v11, v7, v13

    if-lez v11, :cond_0

    cmpg-float v11, v9, v13

    if-gtz v11, :cond_1

    .line 422
    :cond_0
    const/16 v11, 0x12

    .line 424
    :try_start_1
    invoke-virtual {v15, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    .line 423
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v7, v11

    .line 425
    const/16 v11, 0x13

    .line 427
    invoke-virtual {v15, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    .line 426
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v9, v11

    .line 429
    :cond_1
    const/16 v11, 0x9

    .line 431
    invoke-virtual {v15, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    .line 430
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 432
    .local v11, "timeInMillisec":I
    div-int/lit16 v13, v11, 0x3e8

    .line 433
    .local v13, "playableDuration":I
    const-string v2, "playableDuration"

    invoke-interface {v3, v2, v13}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    .end local v11    # "timeInMillisec":I
    .end local v13    # "playableDuration":I
    :try_start_2
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 443
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 444
    nop

    .line 448
    .end local v14    # "photoDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v15    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_1

    .line 442
    .restart local v14    # "photoDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v15    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Number format exception occurred while trying to fetch video metadata for "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-static {v12, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 440
    nop

    .line 442
    :try_start_4
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 443
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 440
    const/4 v2, 0x0

    return v2

    .line 442
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 443
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 444
    nop

    .end local v3    # "image":Lcom/facebook/react/bridge/WritableMap;
    .end local v5    # "photoUri":Landroid/net/Uri;
    .end local v7    # "width":F
    .end local v9    # "height":F
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "media":Landroid/database/Cursor;
    .end local p2    # "node":Lcom/facebook/react/bridge/WritableMap;
    .end local p3    # "idIndex":I
    .end local p4    # "widthIndex":I
    .end local p5    # "heightIndex":I
    .end local p6    # "dataIndex":I
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 445
    .end local v14    # "photoDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v15    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v3    # "image":Lcom/facebook/react/bridge/WritableMap;
    .restart local v5    # "photoUri":Landroid/net/Uri;
    .restart local v7    # "width":F
    .restart local v9    # "height":F
    .restart local v10    # "mimeType":Ljava/lang/String;
    .restart local p0    # "resolver":Landroid/content/ContentResolver;
    .restart local p1    # "media":Landroid/database/Cursor;
    .restart local p2    # "node":Lcom/facebook/react/bridge/WritableMap;
    .restart local p3    # "idIndex":I
    .restart local p4    # "widthIndex":I
    .restart local p5    # "heightIndex":I
    .restart local p6    # "dataIndex":I
    :catch_1
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not get video metadata for "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    const/4 v2, 0x0

    return v2

    .line 451
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    const/4 v2, 0x1

    const/4 v11, 0x0

    cmpg-float v13, v7, v11

    if-lez v13, :cond_3

    cmpg-float v11, v9, v11

    if-gtz v11, :cond_4

    .line 453
    :cond_3
    :try_start_5
    invoke-virtual {v1, v5, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 454
    .local v0, "photoDescriptor":Landroid/content/res/AssetFileDescriptor;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 457
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 458
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 459
    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v7, v13

    .line 460
    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v13

    .line 461
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 465
    .end local v0    # "photoDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    nop

    .line 467
    :cond_4
    float-to-double v11, v7

    const-string v0, "width"

    invoke-interface {v3, v0, v11, v12}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 468
    float-to-double v11, v9

    const-string v0, "height"

    invoke-interface {v3, v0, v11, v12}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 469
    const-string v0, "image"

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 471
    return v2

    .line 462
    :catch_2
    move-exception v0

    move-object/from16 v11, p2

    .line 463
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not get width/height for "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    const/4 v2, 0x0

    return v2
.end method

.method private static putLocationInfo(Landroid/database/Cursor;Lcom/facebook/react/bridge/WritableMap;II)V
    .locals 7
    .param p0, "media"    # Landroid/database/Cursor;
    .param p1, "node"    # Lcom/facebook/react/bridge/WritableMap;
    .param p2, "longitudeIndex"    # I
    .param p3, "latitudeIndex"    # I

    .line 479
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 480
    .local v0, "longitude":D
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 481
    .local v2, "latitude":D
    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-gtz v6, :cond_0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    .line 482
    :cond_0
    new-instance v4, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v4}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 483
    .local v4, "location":Lcom/facebook/react/bridge/WritableMap;
    const-string v5, "longitude"

    invoke-interface {v4, v5, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 484
    const-string v5, "latitude"

    invoke-interface {v4, v5, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 485
    const-string v5, "location"

    invoke-interface {p1, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 487
    .end local v4    # "location":Lcom/facebook/react/bridge/WritableMap;
    :cond_1
    return-void
.end method

.method private static putPageInfo(Landroid/database/Cursor;Lcom/facebook/react/bridge/WritableMap;I)V
    .locals 3
    .param p0, "media"    # Landroid/database/Cursor;
    .param p1, "response"    # Lcom/facebook/react/bridge/WritableMap;
    .param p2, "limit"    # I

    .line 337
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 338
    .local v0, "pageInfo":Lcom/facebook/react/bridge/WritableMap;
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "has_next_page"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 340
    add-int/lit8 v1, p2, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 341
    nop

    .line 343
    const-string v1, "datetaken"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 341
    const-string v2, "end_cursor"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_1
    const-string v1, "page_info"

    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 346
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "CameraRollManager"

    return-object v0
.end method

.method public getPhotos(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 11
    .param p1, "params"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 213
    const-string v0, "first"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 214
    .local v0, "first":I
    const-string v1, "after"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 215
    .local v4, "after":Ljava/lang/String;
    :goto_0
    const-string v1, "groupName"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 216
    .local v5, "groupName":Ljava/lang/String;
    :goto_1
    const-string v1, "assetType"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, "Photos"

    :goto_2
    move-object v7, v1

    .line 217
    .local v7, "assetType":Ljava/lang/String;
    const-string v1, "mimeTypes"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    move-object v6, v1

    goto :goto_3

    :cond_3
    move-object v6, v3

    .line 220
    .local v6, "mimeTypes":Lcom/facebook/react/bridge/ReadableArray;
    :goto_3
    const-string v1, "groupTypes"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 224
    new-instance v10, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;

    .line 225
    invoke-virtual {p0}, Lcom/facebook/react/modules/camera/CameraRollManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    const/4 v9, 0x0

    move-object v1, v10

    move v3, v0

    move-object v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;-><init>(Lcom/facebook/react/bridge/ReactContext;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Lcom/facebook/react/modules/camera/CameraRollManager$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 232
    invoke-virtual {v10, v1, v2}, Lcom/facebook/react/modules/camera/CameraRollManager$GetMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 233
    return-void

    .line 221
    :cond_4
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v2, "groupTypes is not supported on Android"

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public saveToCameraRoll(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 105
    new-instance v0, Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;

    invoke-virtual {p0}, Lcom/facebook/react/modules/camera/CameraRollManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;-><init>(Lcom/facebook/react/bridge/ReactContext;Landroid/net/Uri;Lcom/facebook/react/bridge/Promise;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/camera/CameraRollManager$SaveToCameraRoll;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    return-void
.end method
