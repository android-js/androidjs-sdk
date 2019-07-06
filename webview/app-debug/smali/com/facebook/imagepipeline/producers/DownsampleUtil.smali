.class public Lcom/facebook/imagepipeline/producers/DownsampleUtil;
.super Ljava/lang/Object;
.source "DownsampleUtil.java"


# static fields
.field public static final DEFAULT_SAMPLE_SIZE:I = 0x1

.field private static final INTERVAL_ROUNDING:F = 0.33333334f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static determineDownsampleRatio(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)F
    .locals 12
    .param p0, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 65
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->isMetaDataAvailable(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v0

    .line 67
    .local v0, "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    if-eqz v0, :cond_5

    iget v1, v0, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    if-lez v1, :cond_5

    iget v1, v0, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    if-lez v1, :cond_5

    .line 68
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 72
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/DownsampleUtil;->getRotationAngle(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v1

    .line 73
    .local v1, "rotationAngle":I
    const/16 v2, 0x5a

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 74
    .local v2, "swapDimensions":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 75
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v5

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v5

    .line 76
    .local v5, "widthAfterRotation":I
    :goto_2
    if-eqz v2, :cond_4

    .line 77
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v6

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v6

    .line 79
    .local v6, "heightAfterRotation":I
    :goto_3
    iget v7, v0, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    .line 80
    .local v7, "widthRatio":F
    iget v8, v0, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    .line 81
    .local v8, "heightRatio":F
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 82
    .local v9, "ratio":F
    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    iget v11, v0, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    .line 86
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    iget v3, v0, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v4

    const/4 v3, 0x2

    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v3

    const/4 v3, 0x3

    .line 89
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v3

    const/4 v3, 0x4

    .line 90
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v10, v3

    const/4 v3, 0x5

    .line 91
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v10, v3

    const/4 v3, 0x6

    .line 92
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v10, v3

    const/4 v3, 0x7

    .line 93
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v3

    .line 82
    const-string v3, "DownsampleUtil"

    const-string v4, "Downsample - Specified size: %dx%d, image size: %dx%d ratio: %.1f x %.1f, ratio: %.3f for %s"

    invoke-static {v3, v4, v10}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    return v9

    .line 69
    .end local v1    # "rotationAngle":I
    .end local v2    # "swapDimensions":Z
    .end local v5    # "widthAfterRotation":I
    .end local v6    # "heightAfterRotation":I
    .end local v7    # "widthRatio":F
    .end local v8    # "heightRatio":F
    .end local v9    # "ratio":F
    :cond_5
    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public static determineSampleSize(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)I
    .locals 7
    .param p0, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 34
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->isMetaDataAvailable(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x1

    return v0

    .line 37
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/DownsampleUtil;->determineDownsampleRatio(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)F

    move-result v0

    .line 39
    .local v0, "ratio":F
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v1

    sget-object v2, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne v1, v2, :cond_1

    .line 40
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DownsampleUtil;->ratioToSampleSizeJPEG(F)I

    move-result v1

    .local v1, "sampleSize":I
    goto :goto_0

    .line 42
    .end local v1    # "sampleSize":I
    :cond_1
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DownsampleUtil;->ratioToSampleSize(F)I

    move-result v1

    .line 47
    .restart local v1    # "sampleSize":I
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 48
    .local v2, "maxDimension":I
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v3

    .line 49
    .local v3, "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    if-eqz v3, :cond_2

    iget v4, v3, Lcom/facebook/imagepipeline/common/ResizeOptions;->maxBitmapSize:F

    goto :goto_1

    :cond_2
    const/high16 v4, 0x45000000    # 2048.0f

    .line 52
    .local v4, "maxBitmapSize":F
    :goto_1
    div-int v5, v2, v1

    int-to-float v5, v5

    cmpl-float v5, v5, v4

    if-lez v5, :cond_4

    .line 53
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v5

    sget-object v6, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne v5, v6, :cond_3

    .line 54
    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 56
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    :cond_4
    return v1
.end method

.method private static getRotationAngle(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)I
    .locals 3
    .param p0, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 130
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/RotationOptions;->useImageMetadata()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 131
    return v1

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result v0

    .line 134
    .local v0, "rotationAngle":I
    if-eqz v0, :cond_1

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_1

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 136
    return v0
.end method

.method static ratioToSampleSize(F)I
    .locals 8
    .param p0, "ratio"    # F
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 99
    const v0, 0x3f2aaaab

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_0
    const/4 v0, 0x2

    .line 104
    .local v0, "sampleSize":I
    :goto_0
    int-to-double v1, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v1, v3, v1

    .line 105
    .local v1, "intervalLength":D
    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    const-wide v5, 0x3fd5555560000000L    # 0.3333333432674408

    mul-double v5, v5, v1

    add-double/2addr v3, v5

    .line 106
    .local v3, "compare":D
    float-to-double v5, p0

    cmpg-double v7, v3, v5

    if-gtz v7, :cond_1

    .line 107
    add-int/lit8 v5, v0, -0x1

    return v5

    .line 109
    :cond_1
    nop

    .end local v1    # "intervalLength":D
    .end local v3    # "compare":D
    add-int/lit8 v0, v0, 0x1

    .line 110
    goto :goto_0
.end method

.method static ratioToSampleSizeJPEG(F)I
    .locals 8
    .param p0, "ratio"    # F
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 115
    const v0, 0x3f2aaaab

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 116
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_0
    const/4 v0, 0x2

    .line 120
    .local v0, "sampleSize":I
    :goto_0
    mul-int/lit8 v1, v0, 0x2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double v1, v3, v1

    .line 121
    .local v1, "intervalLength":D
    mul-int/lit8 v5, v0, 0x2

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    const-wide v5, 0x3fd5555560000000L    # 0.3333333432674408

    mul-double v5, v5, v1

    add-double/2addr v3, v5

    .line 122
    .local v3, "compare":D
    float-to-double v5, p0

    cmpg-double v7, v3, v5

    if-gtz v7, :cond_1

    .line 123
    return v0

    .line 125
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    .line 126
    .end local v1    # "intervalLength":D
    .end local v3    # "compare":D
    goto :goto_0
.end method

.method static roundToPowerOfTwo(I)I
    .locals 1
    .param p0, "sampleSize"    # I
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 141
    const/4 v0, 0x1

    .line 143
    .local v0, "compare":I
    :goto_0
    if-lt v0, p0, :cond_0

    .line 144
    return v0

    .line 146
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method
