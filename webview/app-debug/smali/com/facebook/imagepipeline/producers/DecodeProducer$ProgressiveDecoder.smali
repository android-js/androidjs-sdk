.class abstract Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/DecodeProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ProgressiveDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DECODE_EXCEPTION_MESSAGE_NUM_HEADER_BYTES:I = 0xa


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

.field private mIsFinished:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

.field private final mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field private final mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Z)V
    .locals 4
    .param p3, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .param p4, "decodeCancellationEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Z)V"
        }
    .end annotation

    .line 127
    .local p2, "consumer":Lcom/facebook/imagepipeline/producers/Consumer;, "Lcom/facebook/imagepipeline/producers/Consumer<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 128
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 112
    const-string v0, "ProgressiveDecoder"

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->TAG:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 130
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    .line 131
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getImageDecodeOptions()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mIsFinished:Z

    .line 133
    new-instance v0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 150
    .local v0, "job":Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;
    new-instance v1, Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->access$300(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    iget v3, v3, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->minDecodeIntervalMs:I

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/imagepipeline/producers/JobScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;I)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 151
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    new-instance v2, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;

    invoke-direct {v2, p0, p1, p4}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;Z)V

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 167
    return-void
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;
    .param p1, "x1"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "x2"    # I

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->doDecode(Lcom/facebook/imagepipeline/image/EncodedImage;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)Lcom/facebook/imagepipeline/producers/ProducerContext;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    .line 109
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)Lcom/facebook/imagepipeline/producers/JobScheduler;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    .line 109
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    .line 109
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleCancellation()V

    return-void
.end method

.method private doDecode(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .locals 28
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "status"    # I

    .line 208
    move-object/from16 v15, p0

    move/from16 v1, p2

    const-string v14, "DecodeProducer"

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    sget-object v2, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, v2, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->isNotLast(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    return-void

    .line 212
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->isFinished()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->isValid(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_a

    .line 216
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v16

    .line 217
    .local v16, "imageFormat":Lcom/facebook/imageformat/ImageFormat;
    if-eqz v16, :cond_2

    .line 218
    invoke-virtual/range {v16 .. v16}, Lcom/facebook/imageformat/ImageFormat;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .local v0, "imageFormatStr":Ljava/lang/String;
    goto :goto_0

    .line 220
    .end local v0    # "imageFormatStr":Ljava/lang/String;
    :cond_2
    const-string v0, "unknown"

    move-object/from16 v17, v0

    .line 222
    .local v17, "imageFormatStr":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 223
    .local v18, "encodedImageSize":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSampleSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 224
    .local v19, "sampleSize":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->isLast(I)Z

    move-result v20

    .line 225
    .local v20, "isLast":Z
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v20, :cond_3

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->statusHasFlag(II)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move/from16 v21, v0

    .line 226
    .local v21, "isLastAndComplete":Z
    const/4 v7, 0x4

    invoke-static {v1, v7}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->statusHasFlag(II)Z

    move-result v22

    .line 228
    .local v22, "isPlaceholder":Z
    iget-object v0, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v13

    .line 229
    .local v13, "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    if-eqz v13, :cond_4

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v13, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    .local v0, "requestedSizeStr":Ljava/lang/String;
    goto :goto_2

    .line 232
    .end local v0    # "requestedSizeStr":Ljava/lang/String;
    :cond_4
    const-string v0, "unknown"

    move-object/from16 v23, v0

    .line 235
    .local v23, "requestedSizeStr":Ljava/lang/String;
    :goto_2
    :try_start_0
    iget-object v0, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->getQueuedTime()J

    move-result-wide v3

    .line 236
    .local v3, "queueTime":J
    iget-object v0, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v24, v0

    .line 237
    .local v24, "requestUri":Ljava/lang/String;
    if-nez v21, :cond_6

    if-eqz v22, :cond_5

    goto :goto_3

    .line 239
    :cond_5
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getIntermediateImageEndOffset(Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 292
    .end local v3    # "queueTime":J
    .end local v24    # "requestUri":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v26, v13

    goto/16 :goto_9

    .line 238
    .restart local v3    # "queueTime":J
    .restart local v24    # "requestUri":Ljava/lang/String;
    :cond_6
    :goto_3
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 239
    :goto_4
    move v12, v0

    .line 240
    .local v12, "length":I
    if-nez v21, :cond_8

    if-eqz v22, :cond_7

    goto :goto_5

    .line 242
    :cond_7
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 240
    :cond_8
    :goto_5
    :try_start_4
    sget-object v0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->FULL_QUALITY:Lcom/facebook/imagepipeline/image/QualityInfo;

    .line 242
    :goto_6
    move-object v11, v0

    .line 244
    .local v11, "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    iget-object v0, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v2, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v14}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerStart(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 245
    const/4 v2, 0x0

    .line 248
    .local v2, "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    :try_start_5
    iget-object v0, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->access$700(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    move-result-object v0

    iget-object v8, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    move-object/from16 v10, p1

    invoke-interface {v0, v10, v12, v11, v8}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->decode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object v0
    :try_end_5
    .catch Lcom/facebook/imagepipeline/decoder/DecodeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v9, v0

    .line 260
    .end local v2    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .local v9, "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    nop

    .line 261
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSampleSize()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eq v0, v6, :cond_9

    .line 262
    or-int/lit8 v0, v1, 0x10

    move v8, v0

    .end local p2    # "status":I
    .local v0, "status":I
    goto :goto_7

    .line 261
    .end local v0    # "status":I
    .restart local p2    # "status":I
    :cond_9
    move v8, v1

    .line 278
    .end local p2    # "status":I
    .local v8, "status":I
    :goto_7
    nop

    .line 279
    move-object/from16 v1, p0

    move-object v2, v9

    move-object v5, v11

    move/from16 v6, v20

    move-object/from16 v7, v17

    move/from16 v25, v12

    move v12, v8

    .end local v8    # "status":I
    .local v12, "status":I
    .local v25, "length":I
    move-object/from16 v8, v18

    move-object/from16 v26, v13

    move-object v13, v9

    .end local v9    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .local v13, "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .local v26, "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    move-object/from16 v9, v23

    move-object/from16 v10, v19

    :try_start_7
    invoke-direct/range {v1 .. v10}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getExtraMap(Lcom/facebook/imagepipeline/image/CloseableImage;JLcom/facebook/imagepipeline/image/QualityInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 288
    .local v0, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v2, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 289
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v14, v0}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 290
    invoke-direct {v15, v13, v12}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleResult(Lcom/facebook/imagepipeline/image/CloseableImage;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 292
    .end local v0    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "queueTime":J
    .end local v11    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .end local v13    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .end local v24    # "requestUri":Ljava/lang/String;
    .end local v25    # "length":I
    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 293
    nop

    .line 294
    return-void

    .line 292
    :catchall_1
    move-exception v0

    move v1, v12

    goto/16 :goto_9

    .line 264
    .end local v26    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v3    # "queueTime":J
    .restart local v9    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .restart local v11    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .local v12, "length":I
    .local v13, "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v24    # "requestUri":Ljava/lang/String;
    .restart local p2    # "status":I
    :catch_0
    move-exception v0

    move/from16 v25, v12

    move-object/from16 v26, v13

    move-object v13, v9

    move-object v2, v13

    .end local v9    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .end local v12    # "length":I
    .local v13, "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .restart local v25    # "length":I
    .restart local v26    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    goto :goto_8

    .line 292
    .end local v3    # "queueTime":J
    .end local v11    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .end local v24    # "requestUri":Ljava/lang/String;
    .end local v25    # "length":I
    .end local v26    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .local v13, "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    :catchall_2
    move-exception v0

    move-object/from16 v26, v13

    goto/16 :goto_9

    .line 264
    .restart local v2    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .restart local v3    # "queueTime":J
    .restart local v11    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .restart local v12    # "length":I
    .restart local v24    # "requestUri":Ljava/lang/String;
    :catch_1
    move-exception v0

    move/from16 v25, v12

    move-object/from16 v26, v13

    .end local v12    # "length":I
    .end local v13    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v25    # "length":I
    .restart local v26    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    goto :goto_8

    .line 249
    .end local v25    # "length":I
    .end local v26    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v12    # "length":I
    .restart local v13    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    :catch_2
    move-exception v0

    move/from16 v25, v12

    move-object/from16 v26, v13

    .line 250
    .end local v12    # "length":I
    .end local v13    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .local v0, "e":Lcom/facebook/imagepipeline/decoder/DecodeException;
    .restart local v25    # "length":I
    .restart local v26    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    :try_start_8
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/decoder/DecodeException;->getEncodedImage()Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v8

    .line 251
    .local v8, "failedEncodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    const-string v9, "ProgressiveDecoder"

    const-string v10, "%s, {uri: %s, firstEncodedBytes: %s, length: %d}"

    new-array v7, v7, [Ljava/lang/Object;

    .line 254
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/decoder/DecodeException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v5

    aput-object v24, v7, v6

    const/4 v5, 0x2

    const/16 v6, 0xa

    .line 256
    invoke-virtual {v8, v6}, Lcom/facebook/imagepipeline/image/EncodedImage;->getFirstBytesAsHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    const/4 v5, 0x3

    .line 258
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    .line 251
    invoke-static {v9, v10, v7}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    nop

    .end local v16    # "imageFormat":Lcom/facebook/imageformat/ImageFormat;
    .end local v17    # "imageFormatStr":Ljava/lang/String;
    .end local v18    # "encodedImageSize":Ljava/lang/String;
    .end local v19    # "sampleSize":Ljava/lang/String;
    .end local v20    # "isLast":Z
    .end local v21    # "isLastAndComplete":Z
    .end local v22    # "isPlaceholder":Z
    .end local v23    # "requestedSizeStr":Ljava/lang/String;
    .end local v26    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .end local p1    # "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    .end local p2    # "status":I
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 292
    .end local v0    # "e":Lcom/facebook/imagepipeline/decoder/DecodeException;
    .end local v2    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .end local v3    # "queueTime":J
    .end local v8    # "failedEncodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    .end local v11    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .end local v24    # "requestUri":Ljava/lang/String;
    .end local v25    # "length":I
    .restart local v16    # "imageFormat":Lcom/facebook/imageformat/ImageFormat;
    .restart local v17    # "imageFormatStr":Ljava/lang/String;
    .restart local v18    # "encodedImageSize":Ljava/lang/String;
    .restart local v19    # "sampleSize":Ljava/lang/String;
    .restart local v20    # "isLast":Z
    .restart local v21    # "isLastAndComplete":Z
    .restart local v22    # "isPlaceholder":Z
    .restart local v23    # "requestedSizeStr":Ljava/lang/String;
    .restart local v26    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local p1    # "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    .restart local p2    # "status":I
    :catchall_3
    move-exception v0

    goto :goto_9

    .line 264
    .restart local v2    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .restart local v3    # "queueTime":J
    .restart local v11    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .restart local v24    # "requestUri":Ljava/lang/String;
    .restart local v25    # "length":I
    :catch_3
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    move-object/from16 v5, p0

    move-object v6, v2

    move-wide v7, v3

    move-object v9, v11

    move/from16 v10, v20

    move-object/from16 v27, v11

    .end local v11    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    .local v27, "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v23

    move-object v1, v14

    move-object/from16 v14, v19

    :try_start_9
    invoke-direct/range {v5 .. v14}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getExtraMap(Lcom/facebook/imagepipeline/image/CloseableImage;JLcom/facebook/imagepipeline/image/QualityInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 274
    .local v5, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v7, v15, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 275
    invoke-interface {v7}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1, v0, v5}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 276
    invoke-direct {v15, v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 292
    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 277
    return-void

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    .end local v3    # "queueTime":J
    .end local v5    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "requestUri":Ljava/lang/String;
    .end local v25    # "length":I
    .end local v27    # "quality":Lcom/facebook/imagepipeline/image/QualityInfo;
    :catchall_4
    move-exception v0

    move/from16 v1, p2

    goto :goto_9

    .end local v26    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local v13    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    :catchall_5
    move-exception v0

    move-object/from16 v26, v13

    move/from16 v1, p2

    .end local v13    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .end local p2    # "status":I
    .local v1, "status":I
    .restart local v26    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    :goto_9
    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 293
    throw v0

    .line 213
    .end local v1    # "status":I
    .end local v16    # "imageFormat":Lcom/facebook/imageformat/ImageFormat;
    .end local v17    # "imageFormatStr":Ljava/lang/String;
    .end local v18    # "encodedImageSize":Ljava/lang/String;
    .end local v19    # "sampleSize":Ljava/lang/String;
    .end local v20    # "isLast":Z
    .end local v21    # "isLastAndComplete":Z
    .end local v22    # "isPlaceholder":Z
    .end local v23    # "requestedSizeStr":Ljava/lang/String;
    .end local v26    # "resizeOptions":Lcom/facebook/imagepipeline/common/ResizeOptions;
    .restart local p2    # "status":I
    :cond_a
    :goto_a
    return-void
.end method

.method private getExtraMap(Lcom/facebook/imagepipeline/image/CloseableImage;JLcom/facebook/imagepipeline/image/QualityInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 17
    .param p1, "image"    # Lcom/facebook/imagepipeline/image/CloseableImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "queueTime"    # J
    .param p4, "quality"    # Lcom/facebook/imagepipeline/image/QualityInfo;
    .param p5, "isFinal"    # Z
    .param p6, "imageFormatName"    # Ljava/lang/String;
    .param p7, "encodedImageSize"    # Ljava/lang/String;
    .param p8, "requestImageSize"    # Ljava/lang/String;
    .param p9, "sampleSize"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            "J",
            "Lcom/facebook/imagepipeline/image/QualityInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 305
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    iget-object v6, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v7, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v7}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/facebook/imagepipeline/producers/ProducerListener;->requiresExtraMap(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 306
    const/4 v6, 0x0

    return-object v6

    .line 308
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 309
    .local v6, "queueStr":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Lcom/facebook/imagepipeline/image/QualityInfo;->isOfGoodEnoughQuality()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, "qualityStr":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 311
    .local v8, "finalStr":Ljava/lang/String;
    instance-of v9, v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    const-string v10, "sampleSize"

    const-string v11, "requestedImageSize"

    const-string v12, "imageFormat"

    const-string v13, "encodedImageSize"

    const-string v14, "isFinal"

    const-string v15, "hasGoodQuality"

    const-string v0, "queueTime"

    if-eqz v9, :cond_1

    .line 312
    move-object v9, v1

    check-cast v9, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    invoke-virtual {v9}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 313
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "sizeStr":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    move-object/from16 v16, v9

    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .local v16, "bitmap":Landroid/graphics/Bitmap;
    const/16 v9, 0x8

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 317
    .local v5, "tmpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "bitmapSize"

    invoke-interface {v5, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-interface {v5, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-interface {v5, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-interface {v5, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-interface {v5, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-interface {v5, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    move-object/from16 v9, p9

    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-static {v5}, Lcom/facebook/common/internal/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/facebook/common/internal/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 327
    .end local v1    # "sizeStr":Ljava/lang/String;
    .end local v5    # "tmpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    move-object v9, v5

    new-instance v1, Ljava/util/HashMap;

    const/4 v5, 0x7

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 328
    .local v1, "tmpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-interface {v1, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-interface {v1, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-interface {v1, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-interface {v1, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-static {v1}, Lcom/facebook/common/internal/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/facebook/common/internal/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private handleCancellation()V
    .locals 1

    .line 386
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->maybeFinish(Z)V

    .line 387
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    .line 388
    return-void
.end method

.method private handleError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 378
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->maybeFinish(Z)V

    .line 379
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    .line 380
    return-void
.end method

.method private handleResult(Lcom/facebook/imagepipeline/image/CloseableImage;I)V
    .locals 2
    .param p1, "decodedImage"    # Lcom/facebook/imagepipeline/image/CloseableImage;
    .param p2, "status"    # I

    .line 365
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 367
    .local v0, "decodedImageRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;"
    :try_start_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->isLast(I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->maybeFinish(Z)V

    .line 368
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 371
    nop

    .line 372
    return-void

    .line 370
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 371
    throw v1
.end method

.method private declared-synchronized isFinished()Z
    .locals 1

    monitor-enter p0

    .line 343
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private maybeFinish(Z)V
    .locals 2
    .param p1, "shouldFinish"    # Z

    .line 351
    monitor-enter p0

    .line 352
    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mIsFinished:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mIsFinished:Z

    .line 357
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->clearJob()V

    .line 359
    return-void

    .line 353
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected abstract getIntermediateImageEndOffset(Lcom/facebook/imagepipeline/image/EncodedImage;)I
.end method

.method protected abstract getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;
.end method

.method public onCancellationImpl()V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleCancellation()V

    .line 198
    return-void
.end method

.method public onFailureImpl(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 192
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V

    .line 193
    return-void
.end method

.method public onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .locals 3
    .param p1, "newResult"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "status"    # I

    .line 171
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->isLast(I)Z

    move-result v0

    .line 172
    .local v0, "isLast":Z
    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->isValid(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Lcom/facebook/common/util/ExceptionWithNoStacktrace;

    const-string v2, "Encoded image is not valid."

    invoke-direct {v1, v2}, Lcom/facebook/common/util/ExceptionWithNoStacktrace;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V

    .line 174
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->updateDecodeJob(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    return-void

    .line 179
    :cond_1
    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->statusHasFlag(II)Z

    move-result v1

    .line 180
    .local v1, "isPlaceholder":Z
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isIntermediateResultExpected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->scheduleJob()Z

    .line 183
    :cond_3
    return-void
.end method

.method public bridge synthetic onNewResultImpl(Ljava/lang/Object;I)V
    .locals 0

    .line 109
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V

    return-void
.end method

.method protected onProgressUpdateImpl(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 187
    const v0, 0x3f7d70a4    # 0.99f

    mul-float v0, v0, p1

    invoke-super {p0, v0}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->onProgressUpdateImpl(F)V

    .line 188
    return-void
.end method

.method protected updateDecodeJob(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z
    .locals 1
    .param p1, "ref"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "status"    # I

    .line 202
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->updateJob(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z

    move-result v0

    return v0
.end method
