.class public Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;
.super Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
.source "PipelineDraweeControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
        "Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mCustomDrawableFactories:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lcom/facebook/imagepipeline/drawable/DrawableFactory;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mImageOriginListener:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mImagePerfDataListener:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

.field private final mPipelineDraweeControllerFactory:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;Lcom/facebook/imagepipeline/core/ImagePipeline;Ljava/util/Set;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pipelineDraweeControllerFactory"    # Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;
    .param p3, "imagePipeline"    # Lcom/facebook/imagepipeline/core/ImagePipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;",
            "Lcom/facebook/imagepipeline/core/ImagePipeline;",
            "Ljava/util/Set<",
            "Lcom/facebook/drawee/controller/ControllerListener;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p4, "boundControllerListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/drawee/controller/ControllerListener;>;"
    invoke-direct {p0, p1, p4}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    .line 59
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 60
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->mPipelineDraweeControllerFactory:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;

    .line 61
    return-void
.end method

.method public static convertCacheLevelToRequestLevel(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .locals 3
    .param p0, "cacheLevel"    # Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    .line 179
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder$1;->$SwitchMap$com$facebook$drawee$controller$AbstractDraweeControllerBuilder$CacheLevel:[I

    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 185
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object v0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "is not supported. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->DISK_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object v0

    .line 181
    :cond_2
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object v0
.end method

.method private getCacheKey()Lcom/facebook/cache/common/CacheKey;
    .locals 4

    .line 138
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->getImageRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 139
    .local v0, "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    move-result-object v1

    .line 140
    .local v1, "cacheKeyFactory":Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
    const/4 v2, 0x0

    .line 141
    .local v2, "cacheKey":Lcom/facebook/cache/common/CacheKey;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPostprocessor()Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 143
    nop

    .line 145
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->getCallerContext()Ljava/lang/Object;

    move-result-object v3

    .line 143
    invoke-interface {v1, v0, v3}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getPostprocessedBitmapCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v2

    goto :goto_0

    .line 147
    :cond_0
    nop

    .line 149
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->getCallerContext()Ljava/lang/Object;

    move-result-object v3

    .line 147
    invoke-interface {v1, v0, v3}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getBitmapCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v2

    .line 152
    :cond_1
    :goto_0
    return-object v2
.end method


# virtual methods
.method protected getDataSourceForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/DataSource;
    .locals 3
    .param p1, "controller"    # Lcom/facebook/drawee/interfaces/DraweeController;
    .param p2, "controllerId"    # Ljava/lang/String;
    .param p3, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p4, "callerContext"    # Ljava/lang/Object;
    .param p5, "cacheLevel"    # Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/interfaces/DraweeController;",
            "Ljava/lang/String;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 165
    invoke-static {p5}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->convertCacheLevelToRequestLevel(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v1

    .line 166
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->getRequestListener(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v2

    .line 162
    invoke-virtual {v0, p3, p4, v1, v2}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getDataSourceForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/DataSource;
    .locals 6

    .line 39
    move-object v3, p3

    check-cast v3, Lcom/facebook/imagepipeline/request/ImageRequest;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->getDataSourceForRequest(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method protected getRequestListener(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/imagepipeline/listener/RequestListener;
    .locals 1
    .param p1, "controller"    # Lcom/facebook/drawee/interfaces/DraweeController;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 171
    instance-of v0, p1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    if-eqz v0, :cond_0

    .line 172
    move-object v0, p1

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->getRequestListener()Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected obtainController()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;
    .locals 10

    .line 113
    const-string v0, "obtainController"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->getOldController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v0

    .line 117
    .local v0, "oldController":Lcom/facebook/drawee/interfaces/DraweeController;
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->generateUniqueControllerId()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "controllerId":Ljava/lang/String;
    instance-of v2, v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    if-eqz v2, :cond_0

    .line 119
    move-object v2, v0

    check-cast v2, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    move-object v9, v2

    .local v2, "controller":Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;
    goto :goto_0

    .line 121
    .end local v2    # "controller":Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;
    :cond_0
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->mPipelineDraweeControllerFactory:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;

    invoke-virtual {v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;->newController()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    move-result-object v2

    move-object v9, v2

    .line 123
    .local v9, "controller":Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;
    :goto_0
    nop

    .line 124
    invoke-virtual {p0, v9, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->obtainDataSourceSupplier(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;)Lcom/facebook/common/internal/Supplier;

    move-result-object v3

    .line 126
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->getCacheKey()Lcom/facebook/cache/common/CacheKey;

    move-result-object v5

    .line 127
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->getCallerContext()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->mCustomDrawableFactories:Lcom/facebook/common/internal/ImmutableList;

    iget-object v8, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->mImageOriginListener:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    .line 123
    move-object v2, v9

    move-object v4, v1

    invoke-virtual/range {v2 .. v8}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->initialize(Lcom/facebook/common/internal/Supplier;Ljava/lang/String;Lcom/facebook/cache/common/CacheKey;Ljava/lang/Object;Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;)V

    .line 130
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->mImagePerfDataListener:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;

    invoke-virtual {v9, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->initializePerformanceMonitoring(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    nop

    .line 133
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 131
    return-object v9

    .line 133
    .end local v0    # "oldController":Lcom/facebook/drawee/interfaces/DraweeController;
    .end local v1    # "controllerId":Ljava/lang/String;
    .end local v9    # "controller":Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 134
    throw v0
.end method

.method protected bridge synthetic obtainController()Lcom/facebook/drawee/controller/AbstractDraweeController;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->obtainController()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    move-result-object v0

    return-object v0
.end method

.method public setCustomDrawableFactories(Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;
    .locals 1
    .param p1    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lcom/facebook/imagepipeline/drawable/DrawableFactory;",
            ">;)",
            "Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;"
        }
    .end annotation

    .line 84
    .local p1, "customDrawableFactories":Lcom/facebook/common/internal/ImmutableList;, "Lcom/facebook/common/internal/ImmutableList<Lcom/facebook/imagepipeline/drawable/DrawableFactory;>;"
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->mCustomDrawableFactories:Lcom/facebook/common/internal/ImmutableList;

    .line 85
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    return-object v0
.end method

.method public varargs setCustomDrawableFactories([Lcom/facebook/imagepipeline/drawable/DrawableFactory;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;
    .locals 1
    .param p1, "drawableFactories"    # [Lcom/facebook/imagepipeline/drawable/DrawableFactory;

    .line 90
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p1}, Lcom/facebook/common/internal/ImmutableList;->of([Ljava/lang/Object;)Lcom/facebook/common/internal/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setCustomDrawableFactories(Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setCustomDrawableFactory(Lcom/facebook/imagepipeline/drawable/DrawableFactory;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;
    .locals 2
    .param p1, "drawableFactory"    # Lcom/facebook/imagepipeline/drawable/DrawableFactory;

    .line 95
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/imagepipeline/drawable/DrawableFactory;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/facebook/common/internal/ImmutableList;->of([Ljava/lang/Object;)Lcom/facebook/common/internal/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setCustomDrawableFactories(Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setImageOriginListener(Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;
    .locals 1
    .param p1, "imageOriginListener"    # Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 101
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->mImageOriginListener:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    .line 102
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    return-object v0
.end method

.method public setPerfDataListener(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;
    .locals 1
    .param p1, "imagePerfDataListener"    # Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->mImagePerfDataListener:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;

    .line 108
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->getThis()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    return-object v0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    if-nez p1, :cond_0

    .line 66
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    return-object v0

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/facebook/imagepipeline/common/RotationOptions;->autoRotateAtRenderTime()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setRotationOptions(Lcom/facebook/imagepipeline/common/RotationOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 71
    .local v0, "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    invoke-super {p0, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    return-object v1
.end method

.method public setUri(Ljava/lang/String;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;
    .locals 1
    .param p1, "uriString"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    return-object v0
.end method

.method public bridge synthetic setUri(Landroid/net/Uri;)Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUri(Ljava/lang/String;)Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Ljava/lang/String;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object p1

    return-object p1
.end method
