.class public Lcom/facebook/react/views/imagehelper/MultiSourceHelper;
.super Ljava/lang/Object;
.source "MultiSourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBestSourceForSize(IILjava/util/List;)Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/facebook/react/views/imagehelper/ImageSource;",
            ">;)",
            "Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;"
        }
    .end annotation

    .line 56
    .local p2, "sources":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/views/imagehelper/ImageSource;>;"
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/react/views/imagehelper/MultiSourceHelper;->getBestSourceForSize(IILjava/util/List;D)Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;

    move-result-object v0

    return-object v0
.end method

.method public static getBestSourceForSize(IILjava/util/List;D)Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;
    .locals 17
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p3, "multiplier"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/facebook/react/views/imagehelper/ImageSource;",
            ">;D)",
            "Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;"
        }
    .end annotation

    .line 75
    .local p2, "sources":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/views/imagehelper/ImageSource;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;

    invoke-direct {v0, v1, v1, v1}, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;-><init>(Lcom/facebook/react/views/imagehelper/ImageSource;Lcom/facebook/react/views/imagehelper/ImageSource;Lcom/facebook/react/views/imagehelper/MultiSourceHelper$1;)V

    return-object v0

    .line 80
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 81
    new-instance v0, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;

    const/4 v2, 0x0

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/views/imagehelper/ImageSource;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;-><init>(Lcom/facebook/react/views/imagehelper/ImageSource;Lcom/facebook/react/views/imagehelper/ImageSource;Lcom/facebook/react/views/imagehelper/MultiSourceHelper$1;)V

    return-object v0

    .line 86
    :cond_1
    move-object/from16 v3, p2

    if-lez p0, :cond_8

    if-gtz p1, :cond_2

    goto/16 :goto_1

    .line 90
    :cond_2
    invoke-static {}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->getInstance()Lcom/facebook/imagepipeline/core/ImagePipelineFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    .line 91
    .local v0, "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    const/4 v2, 0x0

    .line 92
    .local v2, "best":Lcom/facebook/react/views/imagehelper/ImageSource;
    const/4 v4, 0x0

    .line 93
    .local v4, "bestCached":Lcom/facebook/react/views/imagehelper/ImageSource;
    mul-int v5, p0, p1

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, p3

    .line 94
    .local v5, "viewArea":D
    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 95
    .local v7, "bestPrecision":D
    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 96
    .local v9, "bestCachePrecision":D
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/react/views/imagehelper/ImageSource;

    .line 97
    .local v12, "source":Lcom/facebook/react/views/imagehelper/ImageSource;
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v12}, Lcom/facebook/react/views/imagehelper/ImageSource;->getSize()D

    move-result-wide v15

    div-double/2addr v15, v5

    sub-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    .line 98
    .local v13, "precision":D
    cmpg-double v15, v13, v7

    if-gez v15, :cond_3

    .line 99
    move-wide v7, v13

    .line 100
    move-object v2, v12

    .line 102
    :cond_3
    cmpg-double v15, v13, v9

    if-gez v15, :cond_5

    .line 103
    invoke-virtual {v12}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInBitmapMemoryCache(Landroid/net/Uri;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 104
    invoke-virtual {v12}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCacheSync(Landroid/net/Uri;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 105
    :cond_4
    move-wide v9, v13

    .line 106
    move-object v4, v12

    .line 108
    .end local v12    # "source":Lcom/facebook/react/views/imagehelper/ImageSource;
    .end local v13    # "precision":D
    :cond_5
    goto :goto_0

    .line 109
    :cond_6
    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v4}, Lcom/facebook/react/views/imagehelper/ImageSource;->getSource()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/facebook/react/views/imagehelper/ImageSource;->getSource()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 110
    const/4 v4, 0x0

    .line 112
    :cond_7
    new-instance v11, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;

    invoke-direct {v11, v2, v4, v1}, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;-><init>(Lcom/facebook/react/views/imagehelper/ImageSource;Lcom/facebook/react/views/imagehelper/ImageSource;Lcom/facebook/react/views/imagehelper/MultiSourceHelper$1;)V

    return-object v11

    .line 87
    .end local v0    # "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    .end local v2    # "best":Lcom/facebook/react/views/imagehelper/ImageSource;
    .end local v4    # "bestCached":Lcom/facebook/react/views/imagehelper/ImageSource;
    .end local v5    # "viewArea":D
    .end local v7    # "bestPrecision":D
    .end local v9    # "bestCachePrecision":D
    :cond_8
    :goto_1
    new-instance v0, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;

    invoke-direct {v0, v1, v1, v1}, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;-><init>(Lcom/facebook/react/views/imagehelper/ImageSource;Lcom/facebook/react/views/imagehelper/ImageSource;Lcom/facebook/react/views/imagehelper/MultiSourceHelper$1;)V

    return-object v0
.end method
