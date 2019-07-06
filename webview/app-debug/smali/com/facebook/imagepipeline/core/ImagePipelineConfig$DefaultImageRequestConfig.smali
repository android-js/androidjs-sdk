.class public Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImageRequestConfig"
.end annotation


# instance fields
.field private mProgressiveRenderingEnabled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;->mProgressiveRenderingEnabled:Z

    .line 338
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;

    .line 333
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public isProgressiveRenderingEnabled()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;->mProgressiveRenderingEnabled:Z

    return v0
.end method

.method public setProgressiveRenderingEnabled(Z)V
    .locals 0
    .param p1, "progressiveRenderingEnabled"    # Z

    .line 341
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;->mProgressiveRenderingEnabled:Z

    .line 342
    return-void
.end method
