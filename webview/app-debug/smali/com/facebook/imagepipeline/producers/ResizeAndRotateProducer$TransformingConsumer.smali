.class Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "ResizeAndRotateProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformingConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsCancelled:Z

.field private final mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

.field private final mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 4
    .param p3, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 103
    .local p2, "consumer":Lcom/facebook/imagepipeline/producers/Consumer;, "Lcom/facebook/imagepipeline/producers/Consumer<Lcom/facebook/imagepipeline/image/EncodedImage;>;"
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->this$0:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;

    .line 104
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mIsCancelled:Z

    .line 106
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 108
    new-instance v0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$1;-><init>(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;)V

    .line 114
    .local v0, "job":Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;
    new-instance v1, Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->access$100(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;)Ljava/util/concurrent/Executor;

    move-result-object v2

    const/16 v3, 0x64

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/imagepipeline/producers/JobScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;I)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 116
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    new-instance v2, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$2;-><init>(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;Lcom/facebook/imagepipeline/producers/Consumer;)V

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;
    .param p1, "x1"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "x2"    # I

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->doTransform(Lcom/facebook/imagepipeline/image/EncodedImage;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;)Lcom/facebook/imagepipeline/producers/ProducerContext;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;

    .line 94
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;)Lcom/facebook/imagepipeline/producers/JobScheduler;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;

    .line 94
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;
    .param p1, "x1"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mIsCancelled:Z

    return p1
.end method

.method private doTransform(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .locals 20
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "status"    # I

    .line 179
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    iget-object v0, v14, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v0

    iget-object v1, v14, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v13, "ResizeAndRotateProducer"

    invoke-interface {v0, v1, v13}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, v14, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v12

    .line 181
    .local v12, "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    iget-object v0, v14, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->this$0:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->access$700(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;)Lcom/facebook/common/memory/PooledByteBufferFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBufferFactory;->newOutputStream()Lcom/facebook/common/memory/PooledByteBufferOutputStream;

    move-result-object v11

    .line 182
    .local v11, "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    const/16 v16, 0x0

    .line 183
    .local v16, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 184
    .local v17, "ret":Lcom/facebook/imagepipeline/image/EncodedImage;
    const/4 v1, 0x0

    .line 186
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v0, v14, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->this$0:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;

    .line 189
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->access$500(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;)Z

    move-result v0

    .line 186
    invoke-static {v12, v15, v0}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->access$800(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;Z)I

    move-result v6

    .line 190
    .local v6, "softwareNumerator":I
    invoke-static {v12, v15}, Lcom/facebook/imagepipeline/producers/DownsampleUtil;->determineSampleSize(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v0

    move v10, v0

    .line 191
    .local v10, "downsampleRatio":I
    invoke-static {v10}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->calculateDownsampleNumerator(I)I

    move-result v5

    .line 193
    .local v5, "downsampleNumerator":I
    iget-object v0, v14, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->this$0:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->access$900(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    move v0, v5

    move v9, v0

    .local v0, "numerator":I
    goto :goto_0

    .line 196
    .end local v0    # "numerator":I
    :cond_0
    move v0, v6

    move v9, v0

    .line 198
    .local v9, "numerator":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    move-object v8, v0

    .line 199
    .end local v1    # "is":Ljava/io/InputStream;
    .local v8, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->access$1000()Lcom/facebook/common/internal/ImmutableList;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getExifOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/common/internal/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    const/16 v7, 0x55

    if-eqz v0, :cond_1

    .line 202
    nop

    .line 204
    :try_start_2
    invoke-virtual {v12}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    .line 203
    invoke-static {v0, v15}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->access$1100(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v0

    .line 205
    .local v0, "exifOrientation":I
    const/16 v18, 0x0

    .line 206
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move v4, v9

    const/16 v14, 0x55

    move/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->getExtraMap(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/request/ImageRequest;IIII)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v16, v1

    .line 208
    invoke-static {v8, v11, v0, v9, v14}, Lcom/facebook/imagepipeline/nativecode/JpegTranscoder;->transcodeJpegWithExifOrientation(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    .end local v0    # "exifOrientation":I
    move-object v1, v8

    move v2, v9

    move v3, v10

    move-object v4, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v7, v16

    goto :goto_1

    .line 252
    .end local v5    # "downsampleNumerator":I
    .end local v6    # "softwareNumerator":I
    .end local v9    # "numerator":I
    .end local v10    # "downsampleRatio":I
    :catchall_0
    move-exception v0

    move-object/from16 v10, p0

    move-object v1, v8

    move-object v4, v11

    move-object/from16 v18, v12

    move/from16 v11, p2

    goto/16 :goto_a

    .line 244
    :catch_0
    move-exception v0

    move-object/from16 v10, p0

    move-object v1, v8

    move-object v4, v11

    move-object/from16 v18, v12

    move-object v12, v13

    move-object/from16 v7, v16

    move/from16 v11, p2

    goto/16 :goto_9

    .line 212
    .restart local v5    # "downsampleNumerator":I
    .restart local v6    # "softwareNumerator":I
    .restart local v9    # "numerator":I
    .restart local v10    # "downsampleRatio":I
    :cond_1
    const/16 v14, 0x55

    .line 213
    :try_start_3
    invoke-virtual {v12}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    invoke-static {v0, v15}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->access$1200(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    .line 214
    .local v0, "rotationAngle":I
    nop

    .line 215
    move-object/from16 v7, p0

    move-object v1, v8

    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    move-object/from16 v8, p1

    move v2, v9

    .end local v9    # "numerator":I
    .local v2, "numerator":I
    move-object v9, v12

    move v3, v10

    .end local v10    # "downsampleRatio":I
    .local v3, "downsampleRatio":I
    move v10, v2

    move-object v4, v11

    .end local v11    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .local v4, "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    move v11, v5

    move-object/from16 v18, v12

    .end local v12    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .local v18, "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    move v12, v6

    move-object/from16 v19, v13

    move v13, v0

    :try_start_4
    invoke-direct/range {v7 .. v13}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->getExtraMap(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/request/ImageRequest;IIII)Ljava/util/Map;

    move-result-object v7

    move-object/from16 v16, v7

    .line 222
    invoke-static {v1, v4, v0, v2, v14}, Lcom/facebook/imagepipeline/nativecode/JpegTranscoder;->transcodeJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    move-object/from16 v7, v16

    .line 225
    .end local v0    # "rotationAngle":I
    .end local v16    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v7, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    nop

    .line 226
    :try_start_5
    invoke-virtual {v4}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->toByteBuffer()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    move-object v8, v0

    .line 228
    .local v8, "ref":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    :try_start_6
    new-instance v0, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v0, v8}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    move-object v9, v0

    .line 229
    .end local v17    # "ret":Lcom/facebook/imagepipeline/image/EncodedImage;
    .local v9, "ret":Lcom/facebook/imagepipeline/image/EncodedImage;
    :try_start_7
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    invoke-virtual {v9, v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->setImageFormat(Lcom/facebook/imageformat/ImageFormat;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 231
    :try_start_8
    invoke-virtual {v9}, Lcom/facebook/imagepipeline/image/EncodedImage;->parseMetaData()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 232
    move-object/from16 v10, p0

    :try_start_9
    iget-object v0, v10, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v0

    iget-object v11, v10, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 233
    invoke-interface {v11}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object/from16 v12, v19

    :try_start_a
    invoke-interface {v0, v11, v12, v7}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 234
    const/4 v0, 0x1

    if-eq v3, v0, :cond_2

    .line 235
    or-int/lit8 v0, p2, 0x10

    move v11, v0

    .end local p2    # "status":I
    .local v0, "status":I
    goto :goto_2

    .line 234
    .end local v0    # "status":I
    .restart local p2    # "status":I
    :cond_2
    move/from16 v11, p2

    .line 237
    .end local p2    # "status":I
    .local v11, "status":I
    :goto_2
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, v9, v11}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 239
    :try_start_c
    invoke-static {v9}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 240
    nop

    .line 242
    :try_start_d
    invoke-static {v8}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 243
    nop

    .line 252
    .end local v2    # "numerator":I
    .end local v3    # "downsampleRatio":I
    .end local v5    # "downsampleNumerator":I
    .end local v6    # "softwareNumerator":I
    .end local v8    # "ref":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    invoke-static {v1}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    .line 253
    invoke-virtual {v4}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->close()V

    .line 254
    nop

    .line 255
    return-void

    .line 252
    :catchall_1
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    goto/16 :goto_a

    .line 244
    :catch_1
    move-exception v0

    move-object/from16 v17, v9

    goto/16 :goto_9

    .line 239
    .restart local v2    # "numerator":I
    .restart local v3    # "downsampleRatio":I
    .restart local v5    # "downsampleNumerator":I
    .restart local v6    # "softwareNumerator":I
    .restart local v8    # "ref":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    :catchall_2
    move-exception v0

    goto :goto_5

    .end local v11    # "status":I
    .restart local p2    # "status":I
    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object/from16 v10, p0

    :goto_3
    move-object/from16 v12, v19

    :goto_4
    move/from16 v11, p2

    .end local p2    # "status":I
    .restart local v11    # "status":I
    :goto_5
    :try_start_e
    invoke-static {v9}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 240
    nop

    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "numerator":I
    .end local v3    # "downsampleRatio":I
    .end local v4    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .end local v5    # "downsampleNumerator":I
    .end local v6    # "softwareNumerator":I
    .end local v7    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "ref":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    .end local v9    # "ret":Lcom/facebook/imagepipeline/image/EncodedImage;
    .end local v11    # "status":I
    .end local v18    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .end local p1    # "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 242
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "numerator":I
    .restart local v3    # "downsampleRatio":I
    .restart local v4    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .restart local v5    # "downsampleNumerator":I
    .restart local v6    # "softwareNumerator":I
    .restart local v7    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "ref":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    .restart local v9    # "ret":Lcom/facebook/imagepipeline/image/EncodedImage;
    .restart local v11    # "status":I
    .restart local v18    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .restart local p1    # "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    :catchall_6
    move-exception v0

    move-object/from16 v17, v9

    goto :goto_6

    .end local v11    # "status":I
    .restart local p2    # "status":I
    :catchall_7
    move-exception v0

    move-object/from16 v10, p0

    move-object/from16 v12, v19

    move/from16 v11, p2

    move-object/from16 v17, v9

    goto :goto_6

    .end local v9    # "ret":Lcom/facebook/imagepipeline/image/EncodedImage;
    .restart local v17    # "ret":Lcom/facebook/imagepipeline/image/EncodedImage;
    :catchall_8
    move-exception v0

    move-object/from16 v10, p0

    move-object/from16 v12, v19

    move/from16 v11, p2

    .end local p2    # "status":I
    .restart local v11    # "status":I
    :goto_6
    :try_start_f
    invoke-static {v8}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 243
    nop

    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .end local v7    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "status":I
    .end local v17    # "ret":Lcom/facebook/imagepipeline/image/EncodedImage;
    .end local v18    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .end local p1    # "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    .line 244
    .end local v2    # "numerator":I
    .end local v3    # "downsampleRatio":I
    .end local v5    # "downsampleNumerator":I
    .end local v6    # "softwareNumerator":I
    .end local v8    # "ref":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/common/memory/PooledByteBuffer;>;"
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v4    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .restart local v7    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "status":I
    .restart local v17    # "ret":Lcom/facebook/imagepipeline/image/EncodedImage;
    .restart local v18    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .restart local p1    # "encodedImage":Lcom/facebook/imagepipeline/image/EncodedImage;
    :catch_2
    move-exception v0

    goto/16 :goto_9

    .line 252
    .end local v11    # "status":I
    .restart local p2    # "status":I
    :catchall_9
    move-exception v0

    move-object/from16 v10, p0

    move/from16 v11, p2

    move-object/from16 v16, v7

    goto/16 :goto_a

    .line 244
    :catch_3
    move-exception v0

    move-object/from16 v10, p0

    move-object/from16 v12, v19

    move/from16 v11, p2

    goto/16 :goto_9

    .line 252
    .end local v7    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_a
    move-exception v0

    move-object/from16 v10, p0

    move/from16 v11, p2

    goto/16 :goto_a

    .line 244
    :catch_4
    move-exception v0

    move-object/from16 v10, p0

    move-object/from16 v12, v19

    move/from16 v11, p2

    move-object/from16 v7, v16

    goto :goto_9

    .line 252
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .end local v18    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .local v8, "is":Ljava/io/InputStream;
    .local v11, "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .restart local v12    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    :catchall_b
    move-exception v0

    move-object/from16 v10, p0

    move-object v1, v8

    move-object v4, v11

    move-object/from16 v18, v12

    goto :goto_7

    .line 244
    :catch_5
    move-exception v0

    move-object/from16 v10, p0

    move-object v1, v8

    move-object v4, v11

    move-object/from16 v18, v12

    move-object v12, v13

    goto :goto_8

    .line 252
    :catchall_c
    move-exception v0

    move-object v1, v8

    move-object v4, v11

    move-object/from16 v18, v12

    move-object v10, v14

    :goto_7
    move/from16 v11, p2

    .end local v8    # "is":Ljava/io/InputStream;
    .end local v11    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .end local v12    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v4    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .restart local v18    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    goto :goto_a

    .line 244
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .end local v18    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v11    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .restart local v12    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    :catch_6
    move-exception v0

    move-object v1, v8

    move-object v4, v11

    move-object/from16 v18, v12

    move-object v12, v13

    move-object v10, v14

    :goto_8
    move/from16 v11, p2

    move-object/from16 v7, v16

    .end local v8    # "is":Ljava/io/InputStream;
    .end local v11    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .end local v12    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v4    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .restart local v18    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    goto :goto_9

    .line 252
    .end local v4    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .end local v18    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .restart local v11    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .restart local v12    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    :catchall_d
    move-exception v0

    move-object v4, v11

    move-object/from16 v18, v12

    move-object v10, v14

    move/from16 v11, p2

    .end local v11    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .end local v12    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .restart local v4    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .restart local v18    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    goto :goto_a

    .line 244
    .end local v4    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .end local v18    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .restart local v11    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .restart local v12    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    :catch_7
    move-exception v0

    move-object v4, v11

    move-object/from16 v18, v12

    move-object v12, v13

    move-object v10, v14

    move/from16 v11, p2

    move-object/from16 v7, v16

    .line 245
    .end local v12    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .end local v16    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p2    # "status":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "outputStream":Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .restart local v7    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v11, "status":I
    .restart local v18    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    :goto_9
    :try_start_10
    iget-object v2, v10, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v2

    iget-object v3, v10, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 246
    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v12, v0, v7}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 247
    invoke-static {v11}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->isLast(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    .line 252
    :cond_3
    invoke-static {v1}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    .line 253
    invoke-virtual {v4}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->close()V

    .line 250
    return-void

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_e
    move-exception v0

    move-object/from16 v16, v7

    .end local v7    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_a
    invoke-static {v1}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    .line 253
    invoke-virtual {v4}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->close()V

    .line 254
    throw v0
.end method

.method private getExtraMap(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/request/ImageRequest;IIII)Ljava/util/Map;
    .locals 6
    .param p1, "encodedImage"    # Lcom/facebook/imagepipeline/image/EncodedImage;
    .param p2, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p3, "numerator"    # I
    .param p4, "downsampleNumerator"    # I
    .param p5, "softwareNumerator"    # I
    .param p6, "rotationAngle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "IIII)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener;->requiresExtraMap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x0

    return-object v0

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "originalSize":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v3

    iget v3, v3, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v1

    iget v1, v1, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "requestedSize":Ljava/lang/String;
    goto :goto_0

    .line 274
    .end local v1    # "requestedSize":Ljava/lang/String;
    :cond_1
    const-string v1, "Unspecified"

    .line 277
    .restart local v1    # "requestedSize":Ljava/lang/String;
    :goto_0
    if-lez p3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    .line 278
    .local v2, "fraction":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 279
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Original size"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v4, "Requested size"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v4, "Fraction"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/producers/JobScheduler;->getQueuedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "queueTime"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "downsampleEnumerator"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "softwareEnumerator"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rotationAngle"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-static {v3}, Lcom/facebook/common/internal/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/facebook/common/internal/ImmutableMap;

    move-result-object v4

    return-object v4
.end method

.method private moveImage(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/image/EncodedImage;
    .locals 1
    .param p1, "newResult"    # Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 173
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->cloneOrNull(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v0

    .line 174
    .local v0, "cloned":Lcom/facebook/imagepipeline/image/EncodedImage;
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 175
    return-object v0
.end method


# virtual methods
.method protected onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .locals 4
    .param p1, "newResult"    # Lcom/facebook/imagepipeline/image/EncodedImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "status"    # I

    .line 136
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mIsCancelled:Z

    if-eqz v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->isLast(I)Z

    move-result v0

    .line 140
    .local v0, "isLast":Z
    if-nez p1, :cond_2

    .line 141
    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    .line 144
    :cond_1
    return-void

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 147
    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->this$0:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->access$500(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;)Z

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->access$600(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;Z)Lcom/facebook/common/util/TriState;

    move-result-object v1

    .line 149
    .local v1, "shouldTransform":Lcom/facebook/common/util/TriState;
    if-nez v0, :cond_3

    sget-object v2, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    if-ne v1, v2, :cond_3

    .line 150
    return-void

    .line 153
    :cond_3
    sget-object v2, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-eq v1, v2, :cond_5

    .line 154
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/common/RotationOptions;->canDeferUntilRendered()Z

    move-result v2

    if-nez v2, :cond_4

    .line 155
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result v2

    if-eqz v2, :cond_4

    .line 156
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 157
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->moveImage(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object p1

    .line 158
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/facebook/imagepipeline/image/EncodedImage;->setRotationAngle(I)V

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    .line 161
    return-void

    .line 164
    :cond_5
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v2, p1, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->updateJob(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 165
    return-void

    .line 167
    :cond_6
    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isIntermediateResultExpected()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 168
    :cond_7
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->scheduleJob()Z

    .line 170
    :cond_8
    return-void
.end method

.method protected bridge synthetic onNewResultImpl(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 94
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V

    return-void
.end method
