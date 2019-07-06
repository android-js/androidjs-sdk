.class public Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;
.super Ljava/lang/Object;
.source "ForwardingImageOriginListener.java"

# interfaces
.implements Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ForwardingImageOriginListener"


# instance fields
.field private final mImageOriginListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;",
            ">;)V"
        }
    .end annotation

    .line 21
    .local p1, "imageOriginListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;->mImageOriginListeners:Ljava/util/List;

    .line 23
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;)V
    .locals 2
    .param p1, "imageOriginListeners"    # [Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;->mImageOriginListeners:Ljava/util/List;

    .line 27
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;->mImageOriginListeners:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 28
    return-void
.end method


# virtual methods
.method public declared-synchronized addImageOriginListener(Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;->mImageOriginListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 30
    .end local p0    # "this":Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;
    .end local p1    # "listener":Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onImageLoaded(Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "controllerId"    # Ljava/lang/String;
    .param p2, "imageOrigin"    # I
    .param p3, "successful"    # Z

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;->mImageOriginListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 41
    .local v0, "numberOfListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 42
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;->mImageOriginListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .local v2, "listener":Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;
    :try_start_1
    invoke-interface {v2, p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;->onImageLoaded(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    goto :goto_1

    .line 45
    .end local p0    # "this":Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;
    :catch_0
    move-exception v3

    .line 46
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ForwardingImageOriginListener"

    const-string v5, "InternalListener exception in onImageLoaded"

    invoke-static {v4, v5, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .end local v2    # "listener":Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "i":I
    :cond_0
    monitor-exit p0

    return-void

    .line 39
    .end local v0    # "numberOfListeners":I
    .end local p1    # "controllerId":Ljava/lang/String;
    .end local p2    # "imageOrigin":I
    .end local p3    # "successful":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized removeImageOriginListener(Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;->mImageOriginListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 34
    .end local p0    # "this":Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;
    .end local p1    # "listener":Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
