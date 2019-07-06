.class public Lcom/facebook/react/modules/fresco/SystraceRequestListener;
.super Lcom/facebook/imagepipeline/listener/BaseRequestListener;
.source "SystraceRequestListener.java"


# instance fields
.field mCurrentID:I

.field mProducerID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mRequestsID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/facebook/imagepipeline/listener/BaseRequestListener;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mCurrentID:I

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mProducerID:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mRequestsID:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onProducerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "producerName"    # Ljava/lang/String;
    .param p3, "producerEventName"    # Ljava/lang/String;

    .line 103
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v2, "entryName":Ljava/lang/StringBuilder;
    const-string v3, "FRESCO_PRODUCER_EVENT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const/16 v3, 0x5f

    const/16 v4, 0x3a

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    nop

    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/systrace/Systrace$EventScope;->THREAD:Lcom/facebook/systrace/Systrace$EventScope;

    .line 114
    invoke-static {v0, v1, v3, v4}, Lcom/facebook/systrace/Systrace;->traceInstant(JLjava/lang/String;Lcom/facebook/systrace/Systrace$EventScope;)V

    .line 118
    return-void
.end method

.method public onProducerFinishWithCancellation(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "producerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p3, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    return-void

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mProducerID:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mProducerID:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 93
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 96
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 93
    invoke-static {v0, v1, v3, v4}, Lcom/facebook/systrace/Systrace;->endAsyncSection(JLjava/lang/String;I)V

    .line 97
    iget-object v0, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mProducerID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public onProducerFinishWithFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 5
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "producerName"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p4, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    return-void

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mProducerID:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mProducerID:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 76
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 79
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 76
    invoke-static {v0, v1, v3, v4}, Lcom/facebook/systrace/Systrace;->endAsyncSection(JLjava/lang/String;I)V

    .line 80
    iget-object v0, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mProducerID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "producerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p3, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    return-void

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mProducerID:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mProducerID:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 56
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 59
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 56
    invoke-static {v0, v1, v3, v4}, Lcom/facebook/systrace/Systrace;->endAsyncSection(JLjava/lang/String;I)V

    .line 60
    iget-object v0, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mProducerID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public onProducerStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "producerName"    # Ljava/lang/String;

    .line 28
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    return-void

    .line 32
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v2, "entryName":Ljava/lang/StringBuilder;
    const-string v3, "FRESCO_PRODUCER_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const/16 v3, 0x3a

    const/16 v4, 0x5f

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v3, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mCurrentID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 37
    .local v3, "requestPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mCurrentID:I

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/systrace/Systrace;->beginAsyncSection(JLjava/lang/String;I)V

    .line 41
    iget-object v0, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mProducerID:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget v0, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mCurrentID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mCurrentID:I

    .line 43
    return-void
.end method

.method public onRequestCancellation(Ljava/lang/String;)V
    .locals 5
    .param p1, "requestId"    # Ljava/lang/String;

    .line 181
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    return-void

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mRequestsID:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mRequestsID:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 187
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 190
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 187
    invoke-static {v0, v1, v3, v4}, Lcom/facebook/systrace/Systrace;->endAsyncSection(JLjava/lang/String;I)V

    .line 191
    iget-object v0, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mRequestsID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public onRequestFailure(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 5
    .param p1, "request"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "isPrefetch"    # Z

    .line 165
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    return-void

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mRequestsID:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mRequestsID:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 171
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 174
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 171
    invoke-static {v0, v1, v3, v4}, Lcom/facebook/systrace/Systrace;->endAsyncSection(JLjava/lang/String;I)V

    .line 175
    iget-object v0, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mRequestsID:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public onRequestStart(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "request"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .param p3, "requestId"    # Ljava/lang/String;
    .param p4, "isPrefetch"    # Z

    .line 126
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v2, "entryName":Ljava/lang/StringBuilder;
    const-string v3, "FRESCO_REQUEST_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    const/16 v5, 0x5f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget v3, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mCurrentID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 135
    .local v3, "requestPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mCurrentID:I

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/systrace/Systrace;->beginAsyncSection(JLjava/lang/String;I)V

    .line 139
    iget-object v0, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mRequestsID:Ljava/util/Map;

    invoke-interface {v0, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget v0, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mCurrentID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mCurrentID:I

    .line 141
    return-void
.end method

.method public onRequestSuccess(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "request"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "isPrefetch"    # Z

    .line 145
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    return-void

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mRequestsID:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mRequestsID:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 151
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 154
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 151
    invoke-static {v0, v1, v3, v4}, Lcom/facebook/systrace/Systrace;->endAsyncSection(JLjava/lang/String;I)V

    .line 155
    iget-object v0, p0, Lcom/facebook/react/modules/fresco/SystraceRequestListener;->mRequestsID:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public requiresExtraMap(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 197
    const/4 v0, 0x0

    return v0
.end method
