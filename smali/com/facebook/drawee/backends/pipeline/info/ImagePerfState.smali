.class public Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;
.super Ljava/lang/Object;
.source "ImagePerfState.java"


# instance fields
.field private mCallerContext:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mControllerCancelTimeMs:J

.field private mControllerFailureTimeMs:J

.field private mControllerFinalImageSetTimeMs:J

.field private mControllerId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mControllerIntermediateImageSetTimeMs:J

.field private mControllerSubmitTimeMs:J

.field private mImageInfo:Lcom/facebook/imagepipeline/image/ImageInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mImageLoadStatus:I

.field private mImageOrigin:I

.field private mImageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mImageRequestEndTimeMs:J

.field private mImageRequestStartTimeMs:J

.field private mIsCanceled:Z

.field private mIsPrefetch:Z

.field private mIsSuccessful:Z

.field private mRequestId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerSubmitTimeMs:J

    .line 26
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerIntermediateImageSetTimeMs:J

    .line 27
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerFinalImageSetTimeMs:J

    .line 28
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerFailureTimeMs:J

    .line 29
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerCancelTimeMs:J

    .line 32
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageRequestStartTimeMs:J

    .line 33
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageRequestEndTimeMs:J

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageOrigin:I

    .line 42
    iput v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageLoadStatus:I

    return-void
.end method


# virtual methods
.method public getImageLoadStatus()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageLoadStatus:I

    return v0
.end method

.method public reset()V
    .locals 2

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mRequestId:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 47
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mCallerContext:Ljava/lang/Object;

    .line 48
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageInfo:Lcom/facebook/imagepipeline/image/ImageInfo;

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerSubmitTimeMs:J

    .line 51
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerFinalImageSetTimeMs:J

    .line 52
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerFailureTimeMs:J

    .line 53
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerCancelTimeMs:J

    .line 55
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageRequestStartTimeMs:J

    .line 56
    iput-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageRequestEndTimeMs:J

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageOrigin:I

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mIsCanceled:Z

    .line 60
    iput-boolean v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mIsSuccessful:Z

    .line 61
    iput-boolean v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mIsPrefetch:Z

    .line 63
    iput v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageLoadStatus:I

    .line 64
    return-void
.end method

.method public setCallerContext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callerContext"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mCallerContext:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public setCanceled(Z)V
    .locals 0
    .param p1, "canceled"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mIsCanceled:Z

    .line 125
    return-void
.end method

.method public setControllerCancelTimeMs(J)V
    .locals 0
    .param p1, "controllerCancelTimeMs"    # J

    .line 108
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerCancelTimeMs:J

    .line 109
    return-void
.end method

.method public setControllerFailureTimeMs(J)V
    .locals 0
    .param p1, "controllerFailureTimeMs"    # J

    .line 104
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerFailureTimeMs:J

    .line 105
    return-void
.end method

.method public setControllerFinalImageSetTimeMs(J)V
    .locals 0
    .param p1, "controllerFinalImageSetTimeMs"    # J

    .line 100
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerFinalImageSetTimeMs:J

    .line 101
    return-void
.end method

.method public setControllerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "controllerId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setControllerIntermediateImageSetTimeMs(J)V
    .locals 0
    .param p1, "controllerIntermediateImageSetTimeMs"    # J

    .line 96
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerIntermediateImageSetTimeMs:J

    .line 97
    return-void
.end method

.method public setControllerSubmitTimeMs(J)V
    .locals 0
    .param p1, "controllerSubmitTimeMs"    # J

    .line 92
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerSubmitTimeMs:J

    .line 93
    return-void
.end method

.method public setImageInfo(Lcom/facebook/imagepipeline/image/ImageInfo;)V
    .locals 0
    .param p1, "imageInfo"    # Lcom/facebook/imagepipeline/image/ImageInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 136
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageInfo:Lcom/facebook/imagepipeline/image/ImageInfo;

    .line 137
    return-void
.end method

.method public setImageLoadStatus(I)V
    .locals 0
    .param p1, "imageLoadStatus"    # I

    .line 67
    iput p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageLoadStatus:I

    .line 68
    return-void
.end method

.method public setImageOrigin(I)V
    .locals 0
    .param p1, "imageOrigin"    # I

    .line 120
    iput p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageOrigin:I

    .line 121
    return-void
.end method

.method public setImageRequest(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 85
    return-void
.end method

.method public setImageRequestEndTimeMs(J)V
    .locals 0
    .param p1, "imageRequestEndTimeMs"    # J

    .line 116
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageRequestEndTimeMs:J

    .line 117
    return-void
.end method

.method public setImageRequestStartTimeMs(J)V
    .locals 0
    .param p1, "imageRequestStartTimeMs"    # J

    .line 112
    iput-wide p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageRequestStartTimeMs:J

    .line 113
    return-void
.end method

.method public setPrefetch(Z)V
    .locals 0
    .param p1, "prefetch"    # Z

    .line 132
    iput-boolean p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mIsPrefetch:Z

    .line 133
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mRequestId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setSuccessful(Z)V
    .locals 0
    .param p1, "successful"    # Z

    .line 128
    iput-boolean p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mIsSuccessful:Z

    .line 129
    return-void
.end method

.method public snapshot()Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;
    .locals 28

    .line 140
    move-object/from16 v0, p0

    new-instance v25, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerId:Ljava/lang/String;

    iget-object v3, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mRequestId:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v5, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mCallerContext:Ljava/lang/Object;

    iget-object v6, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageInfo:Lcom/facebook/imagepipeline/image/ImageInfo;

    iget-wide v7, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerSubmitTimeMs:J

    iget-wide v9, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerIntermediateImageSetTimeMs:J

    iget-wide v11, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerFinalImageSetTimeMs:J

    iget-wide v13, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerFailureTimeMs:J

    move-object/from16 v26, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mControllerCancelTimeMs:J

    move-wide v15, v1

    iget-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageRequestStartTimeMs:J

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageRequestEndTimeMs:J

    move-wide/from16 v19, v1

    iget v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mImageOrigin:I

    move/from16 v21, v1

    iget-boolean v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mIsCanceled:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mIsSuccessful:Z

    move/from16 v23, v1

    iget-boolean v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->mIsPrefetch:Z

    move/from16 v24, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v24}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/image/ImageInfo;JJJJJJJIZZZ)V

    return-object v25
.end method
