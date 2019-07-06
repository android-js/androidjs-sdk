.class public Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mBitmapPrepareToDrawForPrefetch:Z

.field private mBitmapPrepareToDrawMaxSizeBytes:I

.field private mBitmapPrepareToDrawMinSizeBytes:I

.field private final mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

.field private mDecodeCancellationEnabled:Z

.field public mLazyDataSource:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPartialImageCachingEnabled:Z

.field private mProducerFactoryMethod:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

.field private mUseBitmapPrepareToDraw:Z

.field private mUseDownsamplingRatioForResizing:Z

.field private mWebpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

.field private mWebpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

.field private mWebpSupportEnabled:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V
    .locals 1
    .param p1, "configBuilder"    # Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mWebpSupportEnabled:Z

    .line 124
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mDecodeCancellationEnabled:Z

    .line 126
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mUseDownsamplingRatioForResizing:Z

    .line 127
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mUseBitmapPrepareToDraw:Z

    .line 128
    iput v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapPrepareToDrawMinSizeBytes:I

    .line 129
    iput v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapPrepareToDrawMaxSizeBytes:I

    .line 130
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapPrepareToDrawForPrefetch:Z

    .line 131
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mPartialImageCachingEnabled:Z

    .line 136
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    .line 119
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mWebpSupportEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    .line 119
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mWebpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    .line 119
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mDecodeCancellationEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Lcom/facebook/common/webp/WebpBitmapFactory;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    .line 119
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mWebpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    .line 119
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mUseDownsamplingRatioForResizing:Z

    return v0
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    .line 119
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mUseBitmapPrepareToDraw:Z

    return v0
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    .line 119
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapPrepareToDrawMinSizeBytes:I

    return v0
.end method

.method static synthetic access$700(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    .line 119
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapPrepareToDrawMaxSizeBytes:I

    return v0
.end method

.method static synthetic access$800(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    .line 119
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mPartialImageCachingEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    .line 119
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mProducerFactoryMethod:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
    .locals 2

    .line 230
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$1;)V

    return-object v0
.end method

.method public isPartialImageCachingEnabled()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mPartialImageCachingEnabled:Z

    return v0
.end method

.method public setBitmapPrepareToDraw(ZIIZ)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 1
    .param p1, "useBitmapPrepareToDraw"    # Z
    .param p2, "minBitmapSizeBytes"    # I
    .param p3, "maxBitmapSizeBytes"    # I
    .param p4, "preparePrefetch"    # Z

    .line 206
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mUseBitmapPrepareToDraw:Z

    .line 207
    iput p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapPrepareToDrawMinSizeBytes:I

    .line 208
    iput p3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapPrepareToDrawMaxSizeBytes:I

    .line 209
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapPrepareToDrawForPrefetch:Z

    .line 210
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object v0
.end method

.method public setDecodeCancellationEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 1
    .param p1, "decodeCancellationEnabled"    # Z

    .line 171
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mDecodeCancellationEnabled:Z

    .line 172
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object v0
.end method

.method public setLazyDataSource(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 225
    .local p1, "lazyDataSource":Lcom/facebook/common/internal/Supplier;, "Lcom/facebook/common/internal/Supplier<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mLazyDataSource:Lcom/facebook/common/internal/Supplier;

    .line 226
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object v0
.end method

.method public setPartialImageCachingEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 1
    .param p1, "partialImageCachingEnabled"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mPartialImageCachingEnabled:Z

    .line 157
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object v0
.end method

.method public setProducerFactoryMethod(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 1
    .param p1, "producerFactoryMethod"    # Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

    .line 219
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mProducerFactoryMethod:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

    .line 220
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object v0
.end method

.method public setUseDownsampligRatioForResizing(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 1
    .param p1, "useDownsamplingRatioForResizing"    # Z

    .line 146
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mUseDownsamplingRatioForResizing:Z

    .line 147
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object v0
.end method

.method public setWebpBitmapFactory(Lcom/facebook/common/webp/WebpBitmapFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 1
    .param p1, "webpBitmapFactory"    # Lcom/facebook/common/webp/WebpBitmapFactory;

    .line 183
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mWebpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

    .line 184
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object v0
.end method

.method public setWebpErrorLogger(Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 1
    .param p1, "webpErrorLogger"    # Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    .line 177
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mWebpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    .line 178
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object v0
.end method

.method public setWebpSupportEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 1
    .param p1, "webpSupportEnabled"    # Z

    .line 140
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mWebpSupportEnabled:Z

    .line 141
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object v0
.end method
