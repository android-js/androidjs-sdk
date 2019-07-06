.class public Lcom/facebook/drawee/controller/ForwardingControllerListener;
.super Ljava/lang/Object;
.source "ForwardingControllerListener.java"

# interfaces
.implements Lcom/facebook/drawee/controller/ControllerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/controller/ControllerListener<",
        "TINFO;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FdingControllerListener"


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    .local p0, "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    .line 28
    return-void
.end method

.method public static create()Lcom/facebook/drawee/controller/ForwardingControllerListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/drawee/controller/ForwardingControllerListener<",
            "TINFO;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/facebook/drawee/controller/ForwardingControllerListener;

    invoke-direct {v0}, Lcom/facebook/drawee/controller/ForwardingControllerListener;-><init>()V

    return-object v0
.end method

.method public static of(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/ForwardingControllerListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;)",
            "Lcom/facebook/drawee/controller/ForwardingControllerListener<",
            "TINFO;>;"
        }
    .end annotation

    .line 36
    .local p0, "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    invoke-static {}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->create()Lcom/facebook/drawee/controller/ForwardingControllerListener;

    move-result-object v0

    .line 37
    .local v0, "forwarder":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    invoke-virtual {v0, p0}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->addListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 38
    return-object v0
.end method

.method public static of(Lcom/facebook/drawee/controller/ControllerListener;Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/ForwardingControllerListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;)",
            "Lcom/facebook/drawee/controller/ForwardingControllerListener<",
            "TINFO;>;"
        }
    .end annotation

    .line 43
    .local p0, "listener1":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    .local p1, "listener2":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    invoke-static {}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->create()Lcom/facebook/drawee/controller/ForwardingControllerListener;

    move-result-object v0

    .line 44
    .local v0, "forwarder":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    invoke-virtual {v0, p0}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->addListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 45
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->addListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 46
    return-object v0
.end method

.method private declared-synchronized onException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .local p0, "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    monitor-enter p0

    .line 65
    :try_start_0
    const-string v0, "FdingControllerListener"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 64
    .end local p0    # "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    .end local p1    # "message":Ljava/lang/String;
    .end local p2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/facebook/drawee/controller/ControllerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;)V"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    .local p1, "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 49
    .end local p0    # "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    .end local p1    # "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearListeners()V
    .locals 1

    .local p0, "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 60
    .end local p0    # "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .local p0, "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .local v0, "numberOfListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 140
    :try_start_1
    iget-object v2, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/controller/ControllerListener;

    .line 141
    .local v2, "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    if-eqz v2, :cond_0

    .line 142
    invoke-interface {v2, p1, p2}, Lcom/facebook/drawee/controller/ControllerListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v2    # "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    .end local p0    # "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    :cond_0
    goto :goto_1

    .line 144
    :catch_0
    move-exception v2

    .line 146
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "InternalListener exception in onFailure"

    invoke-direct {p0, v3, v2}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    return-void

    .line 136
    .end local v0    # "numberOfListeners":I
    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "animatable"    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;",
            "Landroid/graphics/drawable/Animatable;",
            ")V"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    .local p2, "imageInfo":Ljava/lang/Object;, "TINFO;"
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .local v0, "numberOfListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 92
    :try_start_1
    iget-object v2, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/controller/ControllerListener;

    .line 93
    .local v2, "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    if-eqz v2, :cond_0

    .line 94
    invoke-interface {v2, p1, p2, p3}, Lcom/facebook/drawee/controller/ControllerListener;->onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .end local v2    # "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    .end local p0    # "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    :cond_0
    goto :goto_1

    .line 96
    :catch_0
    move-exception v2

    .line 98
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "InternalListener exception in onFinalImageSet"

    invoke-direct {p0, v3, v2}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    return-void

    .line 88
    .end local v0    # "numberOfListeners":I
    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "imageInfo":Ljava/lang/Object;, "TINFO;"
    .end local p3    # "animatable":Landroid/graphics/drawable/Animatable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public onIntermediateImageFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 121
    .local p0, "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 122
    .local v0, "numberOfListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/controller/ControllerListener;

    .line 125
    .local v2, "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    if-eqz v2, :cond_0

    .line 126
    invoke-interface {v2, p1, p2}, Lcom/facebook/drawee/controller/ControllerListener;->onIntermediateImageFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v2    # "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    :cond_0
    goto :goto_1

    .line 128
    :catch_0
    move-exception v2

    .line 130
    .local v2, "exception":Ljava/lang/Exception;
    const-string v3, "InternalListener exception in onIntermediateImageFailed"

    invoke-direct {p0, v3, v2}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    .local p2, "imageInfo":Ljava/lang/Object;, "TINFO;"
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 106
    .local v0, "numberOfListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/controller/ControllerListener;

    .line 109
    .local v2, "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    if-eqz v2, :cond_0

    .line 110
    invoke-interface {v2, p1, p2}, Lcom/facebook/drawee/controller/ControllerListener;->onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v2    # "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    :cond_0
    goto :goto_1

    .line 112
    :catch_0
    move-exception v2

    .line 114
    .local v2, "exception":Ljava/lang/Exception;
    const-string v3, "InternalListener exception in onIntermediateImageSet"

    invoke-direct {p0, v3, v2}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public declared-synchronized onRelease(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .local p0, "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .local v0, "numberOfListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 156
    :try_start_1
    iget-object v2, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/controller/ControllerListener;

    .line 157
    .local v2, "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    if-eqz v2, :cond_0

    .line 158
    invoke-interface {v2, p1}, Lcom/facebook/drawee/controller/ControllerListener;->onRelease(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v2    # "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    .end local p0    # "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    :cond_0
    goto :goto_1

    .line 160
    :catch_0
    move-exception v2

    .line 162
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "InternalListener exception in onRelease"

    invoke-direct {p0, v3, v2}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    return-void

    .line 152
    .end local v0    # "numberOfListeners":I
    .end local p1    # "id":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized onSubmit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callerContext"    # Ljava/lang/Object;

    .local p0, "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .local v0, "numberOfListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 73
    :try_start_1
    iget-object v2, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/controller/ControllerListener;

    .line 74
    .local v2, "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    if-eqz v2, :cond_0

    .line 75
    invoke-interface {v2, p1, p2}, Lcom/facebook/drawee/controller/ControllerListener;->onSubmit(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v2    # "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    .end local p0    # "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    :cond_0
    goto :goto_1

    .line 77
    :catch_0
    move-exception v2

    .line 79
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "InternalListener exception in onSubmit"

    invoke-direct {p0, v3, v2}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    return-void

    .line 69
    .end local v0    # "numberOfListeners":I
    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "callerContext":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized removeListener(Lcom/facebook/drawee/controller/ControllerListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;)V"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    .local p1, "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 55
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->mListeners:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local p0    # "this":Lcom/facebook/drawee/controller/ForwardingControllerListener;, "Lcom/facebook/drawee/controller/ForwardingControllerListener<TINFO;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 53
    .end local v0    # "index":I
    .end local p1    # "listener":Lcom/facebook/drawee/controller/ControllerListener;, "Lcom/facebook/drawee/controller/ControllerListener<-TINFO;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
