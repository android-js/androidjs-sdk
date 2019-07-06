.class Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "ImageEditingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/camera/ImageEditingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CropTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/bridge/GuardedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mError:Lcom/facebook/react/bridge/Callback;

.field final mHeight:I

.field final mSuccess:Lcom/facebook/react/bridge/Callback;

.field mTargetHeight:I

.field mTargetWidth:I

.field final mUri:Ljava/lang/String;

.field final mWidth:I

.field final mX:I

.field final mY:I


# direct methods
.method private constructor <init>(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;IIIILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "success"    # Lcom/facebook/react/bridge/Callback;
    .param p8, "error"    # Lcom/facebook/react/bridge/Callback;

    .line 224
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mTargetWidth:I

    .line 211
    iput v0, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mTargetHeight:I

    .line 225
    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    if-lez p5, :cond_0

    if-lez p6, :cond_0

    .line 229
    iput-object p1, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mContext:Landroid/content/Context;

    .line 230
    iput-object p2, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mUri:Ljava/lang/String;

    .line 231
    iput p3, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mX:I

    .line 232
    iput p4, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mY:I

    .line 233
    iput p5, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mWidth:I

    .line 234
    iput p6, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mHeight:I

    .line 235
    iput-object p7, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mSuccess:Lcom/facebook/react/bridge/Callback;

    .line 236
    iput-object p8, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mError:Lcom/facebook/react/bridge/Callback;

    .line 237
    return-void

    .line 226
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 227
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 226
    const-string v0, "Invalid crop rectangle: [%d, %d, %d, %d]"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor <init>(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;IIIILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/modules/camera/ImageEditingManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/facebook/react/bridge/Callback;
    .param p8, "x7"    # Lcom/facebook/react/bridge/Callback;
    .param p9, "x8"    # Lcom/facebook/react/modules/camera/ImageEditingManager$1;

    .line 203
    invoke-direct/range {p0 .. p8}, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;-><init>(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;IIIILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method private crop(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "outOptions"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-direct {p0}, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->openBitmapInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 303
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .line 305
    .local v1, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mX:I

    iget v4, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mY:I

    iget v5, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mX:I

    iget v6, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mWidth:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mY:I

    iget v7, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mHeight:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 306
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1, v2, p1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 311
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 306
    return-object v3

    .line 308
    .end local v2    # "rect":Landroid/graphics/Rect;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 311
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 312
    throw v2
.end method

.method private cropAndResize(IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 26
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .param p3, "outOptions"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {p3 .. p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v5, v0

    .line 332
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 333
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->openBitmapInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 335
    .local v6, "inputStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v6, v0, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 337
    if-eqz v6, :cond_0

    .line 338
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 346
    :cond_0
    iget v7, v1, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mWidth:I

    int-to-float v8, v7

    iget v9, v1, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mHeight:I

    int-to-float v10, v9

    div-float/2addr v8, v10

    .line 347
    .local v8, "cropRectRatio":F
    int-to-float v10, v2

    int-to-float v11, v3

    div-float/2addr v10, v11

    .line 348
    .local v10, "targetRatio":F
    const/high16 v11, 0x40000000    # 2.0f

    cmpl-float v12, v8, v10

    if-lez v12, :cond_1

    .line 350
    int-to-float v12, v9

    mul-float v12, v12, v10

    .line 351
    .local v12, "newWidth":F
    int-to-float v13, v9

    .line 352
    .local v13, "newHeight":F
    iget v14, v1, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mX:I

    int-to-float v14, v14

    int-to-float v7, v7

    sub-float/2addr v7, v12

    div-float/2addr v7, v11

    add-float/2addr v14, v7

    .line 353
    .local v14, "newX":F
    iget v7, v1, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mY:I

    int-to-float v7, v7

    .line 354
    .local v7, "newY":F
    int-to-float v11, v3

    int-to-float v9, v9

    div-float/2addr v11, v9

    .local v11, "scale":F
    goto :goto_0

    .line 357
    .end local v7    # "newY":F
    .end local v11    # "scale":F
    .end local v12    # "newWidth":F
    .end local v13    # "newHeight":F
    .end local v14    # "newX":F
    :cond_1
    int-to-float v12, v7

    .line 358
    .restart local v12    # "newWidth":F
    int-to-float v13, v7

    div-float/2addr v13, v10

    .line 359
    .restart local v13    # "newHeight":F
    iget v14, v1, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mX:I

    int-to-float v14, v14

    .line 360
    .restart local v14    # "newX":F
    iget v15, v1, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mY:I

    int-to-float v15, v15

    int-to-float v9, v9

    sub-float/2addr v9, v13

    div-float/2addr v9, v11

    add-float/2addr v9, v15

    .line 361
    .local v9, "newY":F
    int-to-float v11, v2

    int-to-float v7, v7

    div-float/2addr v11, v7

    move v7, v9

    .line 366
    .end local v9    # "newY":F
    .restart local v7    # "newY":F
    .restart local v11    # "scale":F
    :goto_0
    iget v9, v1, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mWidth:I

    iget v15, v1, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mHeight:I

    invoke-static {v9, v15, v2, v3}, Lcom/facebook/react/modules/camera/ImageEditingManager;->access$600(IIII)I

    move-result v9

    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 367
    const/4 v9, 0x0

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->openBitmapInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 373
    :try_start_1
    invoke-static {v6, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 374
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 378
    if-eqz v6, :cond_2

    .line 379
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 383
    :cond_2
    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v9, v9

    div-float v9, v14, v9

    float-to-double v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 384
    .local v2, "cropX":I
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v3, v3

    div-float v3, v7, v3

    move/from16 v22, v7

    move v9, v8

    .end local v7    # "newY":F
    .end local v8    # "cropRectRatio":F
    .local v9, "cropRectRatio":F
    .local v22, "newY":F
    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v3, v7

    .line 385
    .local v3, "cropY":I
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v7, v7

    div-float v7, v12, v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 386
    .local v7, "cropWidth":I
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v8, v8

    div-float v8, v13, v8

    move/from16 v23, v9

    .end local v9    # "cropRectRatio":F
    .local v23, "cropRectRatio":F
    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 387
    .local v8, "cropHeight":I
    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v9, v9

    mul-float v9, v9, v11

    .line 389
    .local v9, "cropScale":F
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 390
    .local v15, "scaleMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v15, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 391
    const/16 v24, 0x1

    .line 393
    .local v24, "filter":Z
    move-object/from16 v25, v15

    .end local v15    # "scaleMatrix":Landroid/graphics/Matrix;
    .local v25, "scaleMatrix":Landroid/graphics/Matrix;
    move-object v15, v0

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v25

    move/from16 v21, v24

    invoke-static/range {v15 .. v21}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    return-object v15

    .line 375
    .end local v2    # "cropX":I
    .end local v3    # "cropY":I
    .end local v9    # "cropScale":F
    .end local v22    # "newY":F
    .end local v23    # "cropRectRatio":F
    .end local v24    # "filter":Z
    .end local v25    # "scaleMatrix":Landroid/graphics/Matrix;
    .local v7, "newY":F
    .local v8, "cropRectRatio":F
    :cond_3
    move/from16 v22, v7

    move/from16 v23, v8

    .end local v7    # "newY":F
    .end local v8    # "cropRectRatio":F
    .restart local v22    # "newY":F
    .restart local v23    # "cropRectRatio":F
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot decode bitmap: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "targetRatio":F
    .end local v11    # "scale":F
    .end local v12    # "newWidth":F
    .end local v13    # "newHeight":F
    .end local v14    # "newX":F
    .end local v22    # "newY":F
    .end local v23    # "cropRectRatio":F
    .end local p1    # "targetWidth":I
    .end local p2    # "targetHeight":I
    .end local p3    # "outOptions":Landroid/graphics/BitmapFactory$Options;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "targetRatio":F
    .restart local v11    # "scale":F
    .restart local v12    # "newWidth":F
    .restart local v13    # "newHeight":F
    .restart local v14    # "newX":F
    .restart local v22    # "newY":F
    .restart local v23    # "cropRectRatio":F
    .restart local p1    # "targetWidth":I
    .restart local p2    # "targetHeight":I
    .restart local p3    # "outOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v0

    goto :goto_1

    .end local v22    # "newY":F
    .end local v23    # "cropRectRatio":F
    .restart local v7    # "newY":F
    .restart local v8    # "cropRectRatio":F
    :catchall_1
    move-exception v0

    move/from16 v22, v7

    move/from16 v23, v8

    .end local v7    # "newY":F
    .end local v8    # "cropRectRatio":F
    .restart local v22    # "newY":F
    .restart local v23    # "cropRectRatio":F
    :goto_1
    if-eqz v6, :cond_4

    .line 379
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 381
    :cond_4
    throw v0

    .line 337
    .end local v10    # "targetRatio":F
    .end local v11    # "scale":F
    .end local v12    # "newWidth":F
    .end local v13    # "newHeight":F
    .end local v14    # "newX":F
    .end local v22    # "newY":F
    .end local v23    # "cropRectRatio":F
    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v6, :cond_5

    .line 338
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 340
    :cond_5
    throw v2
.end method

.method private openBitmapInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/react/modules/camera/ImageEditingManager;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .local v0, "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 253
    .end local v0    # "stream":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 254
    .local v0, "connection":Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 256
    .local v0, "stream":Ljava/io/InputStream;
    :goto_0
    if-eqz v0, :cond_1

    .line 259
    return-object v0

    .line 257
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot open bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .line 203
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .line 265
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 268
    .local v2, "outOptions":Landroid/graphics/BitmapFactory$Options;
    iget v3, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mTargetWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mTargetHeight:I

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 271
    .local v3, "hasTargetSize":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 272
    iget v4, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mTargetWidth:I

    iget v5, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mTargetHeight:I

    invoke-direct {p0, v4, v5, v2}, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->cropAndResize(IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "cropped":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 274
    .end local v4    # "cropped":Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0, v2}, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->crop(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 277
    .restart local v4    # "cropped":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v5, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 278
    .local v5, "mimeType":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 282
    iget-object v6, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/facebook/react/modules/camera/ImageEditingManager;->access$300(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 283
    .local v6, "tempFile":Ljava/io/File;
    invoke-static {v4, v5, v6}, Lcom/facebook/react/modules/camera/ImageEditingManager;->access$400(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)V

    .line 285
    const-string v7, "image/jpeg"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 286
    iget-object v7, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mUri:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/facebook/react/modules/camera/ImageEditingManager;->access$500(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    .line 289
    :cond_2
    iget-object v7, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mSuccess:Lcom/facebook/react/bridge/Callback;

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 292
    .end local v2    # "outOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "hasTargetSize":Z
    .end local v4    # "cropped":Landroid/graphics/Bitmap;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "tempFile":Ljava/io/File;
    goto :goto_2

    .line 279
    .restart local v2    # "outOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "hasTargetSize":Z
    .restart local v4    # "cropped":Landroid/graphics/Bitmap;
    .restart local v5    # "mimeType":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Could not determine MIME type"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "params":[Ljava/lang/Void;
    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v2    # "outOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "hasTargetSize":Z
    .end local v4    # "cropped":Landroid/graphics/Bitmap;
    .end local v5    # "mimeType":Ljava/lang/String;
    .restart local p1    # "params":[Ljava/lang/Void;
    :catch_0
    move-exception v2

    .line 291
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mError:Lcom/facebook/react/bridge/Callback;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-interface {v3, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 293
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public setTargetSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 240
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 244
    iput p1, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mTargetWidth:I

    .line 245
    iput p2, p0, Lcom/facebook/react/modules/camera/ImageEditingManager$CropTask;->mTargetHeight:I

    .line 246
    return-void

    .line 241
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 241
    const-string v2, "Invalid target size: [%d, %d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
