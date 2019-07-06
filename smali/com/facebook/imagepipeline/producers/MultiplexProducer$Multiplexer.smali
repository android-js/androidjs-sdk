.class Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;
.super Ljava/lang/Object;
.source "MultiplexProducer.java"


# annotations
.annotation build Lcom/facebook/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/MultiplexProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Multiplexer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;
    }
.end annotation


# instance fields
.field private final mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroid/util/Pair<",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ">;>;"
        }
    .end annotation
.end field

.field private mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer.ForwardingConsumer;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Multiplexer.this"
    .end annotation
.end field

.field private final mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private mLastIntermediateResult:Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Multiplexer.this"
    .end annotation
.end field

.field private mLastProgress:F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Multiplexer.this"
    .end annotation
.end field

.field private mLastStatus:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Multiplexer.this"
    .end annotation
.end field

.field private mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Multiplexer.this"
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/MultiplexProducer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lcom/facebook/imagepipeline/producers/MultiplexProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-static {}, Lcom/facebook/common/internal/Sets;->newCopyOnWriteArraySet()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 174
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mKey:Ljava/lang/Object;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    .line 120
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->startInputProducerIfHasAttachedConsumers()V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    .line 120
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    .line 120
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    .line 120
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updateIsPrefetch()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    .line 120
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updatePriority()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    .line 120
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updateIsIntermediateResultExpected()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addCallbacks(Landroid/util/Pair;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 1
    .param p2, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 248
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    .local p1, "consumerContextPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    new-instance v0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;-><init>(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 300
    return-void
.end method

.method private closeSafely(Ljava/io/Closeable;)V
    .locals 2
    .param p1, "obj"    # Ljava/io/Closeable;

    .line 485
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    if-eqz p1, :cond_0

    .line 486
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 490
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 491
    return-void
.end method

.method private declared-synchronized computeIsIntermediateResultExpected()Z
    .locals 3

    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    monitor-enter p0

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 368
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isIntermediateResultExpected()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 369
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 371
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    :cond_0
    goto :goto_0

    .line 372
    .end local p0    # "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method private declared-synchronized computeIsPrefetch()Z
    .locals 3

    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    monitor-enter p0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 350
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isPrefetch()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 351
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 353
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    :cond_0
    goto :goto_0

    .line 354
    .end local p0    # "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method private declared-synchronized computePriority()Lcom/facebook/imagepipeline/common/Priority;
    .locals 4

    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    monitor-enter p0

    .line 384
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->LOW:Lcom/facebook/imagepipeline/common/Priority;

    .line 385
    .local v0, "priority":Lcom/facebook/imagepipeline/common/Priority;
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 386
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/imagepipeline/common/Priority;->getHigherPriority(Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 387
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    goto :goto_0

    .line 388
    .end local p0    # "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    :cond_0
    monitor-exit p0

    return-object v0

    .line 383
    .end local v0    # "priority":Lcom/facebook/imagepipeline/common/Priority;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method private startInputProducerIfHasAttachedConsumers()V
    .locals 11

    .line 310
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 312
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 315
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mKey:Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->access$700(Lcom/facebook/imagepipeline/producers/MultiplexProducer;Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)V

    .line 317
    monitor-exit p0

    return-void

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 321
    .local v0, "producerContext":Lcom/facebook/imagepipeline/producers/ProducerContext;
    new-instance v10, Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    .line 322
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    .line 323
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v4

    .line 325
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getCallerContext()Ljava/lang/Object;

    move-result-object v5

    .line 326
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    .line 327
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computeIsPrefetch()Z

    move-result v7

    .line 328
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computeIsIntermediateResultExpected()Z

    move-result v8

    .line 329
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computePriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    iput-object v10, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    .line 331
    new-instance v1, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;Lcom/facebook/imagepipeline/producers/MultiplexProducer$1;)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    .line 332
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    .line 333
    .local v1, "multiplexProducerContext":Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    move-object v0, v2

    .line 334
    .local v0, "forwardingConsumer":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer.ForwardingConsumer;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->access$900(Lcom/facebook/imagepipeline/producers/MultiplexProducer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 338
    return-void

    .line 334
    .end local v0    # "forwardingConsumer":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer.ForwardingConsumer;"
    .end local v1    # "multiplexProducerContext":Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized updateIsIntermediateResultExpected()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 362
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    .line 363
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computeIsIntermediateResultExpected()Z

    move-result v1

    .line 362
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->setIsIntermediateResultExpectedNoCallbacks(Z)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 358
    .end local p0    # "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateIsPrefetch()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    monitor-enter p0

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 345
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computeIsPrefetch()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->setIsPrefetchNoCallbacks(Z)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 341
    .end local p0    # "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updatePriority()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    monitor-enter p0

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 380
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computePriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->setPriorityNoCallbacks(Lcom/facebook/imagepipeline/common/Priority;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 376
    .end local p0    # "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addNewConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z
    .locals 8
    .param p2, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")Z"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    .local p1, "consumer":Lcom/facebook/imagepipeline/producers/Consumer;, "Lcom/facebook/imagepipeline/producers/Consumer<TT;>;"
    nop

    .line 190
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 201
    .local v0, "consumerContextPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->access$100(Lcom/facebook/imagepipeline/producers/MultiplexProducer;Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 203
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updateIsPrefetch()Ljava/util/List;

    move-result-object v1

    .line 207
    .local v1, "prefetchCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updatePriority()Ljava/util/List;

    move-result-object v2

    .line 208
    .local v2, "priorityCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updateIsIntermediateResultExpected()Ljava/util/List;

    move-result-object v3

    .line 209
    .local v3, "intermediateResultsCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    .line 210
    .local v4, "lastIntermediateResult":Ljava/io/Closeable;, "TT;"
    iget v5, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastProgress:F

    .line 211
    .local v5, "lastProgress":F
    iget v6, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastStatus:I

    .line 212
    .local v6, "lastStatus":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 214
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnIsPrefetchChanged(Ljava/util/List;)V

    .line 215
    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnPriorityChanged(Ljava/util/List;)V

    .line 216
    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnIsIntermediateResultExpectedChanged(Ljava/util/List;)V

    .line 218
    monitor-enter v0

    .line 220
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 221
    :try_start_2
    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    if-eq v4, v7, :cond_1

    .line 222
    const/4 v4, 0x0

    goto :goto_0

    .line 223
    :cond_1
    if-eqz v4, :cond_2

    .line 224
    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-virtual {v7, v4}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->cloneOrNull(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v7

    move-object v4, v7

    .line 226
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    if-eqz v4, :cond_4

    .line 229
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-lez v7, :cond_3

    .line 230
    :try_start_3
    invoke-interface {p1, v5}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 232
    :cond_3
    invoke-interface {p1, v4, v6}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    .line 233
    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->closeSafely(Ljava/io/Closeable;)V

    .line 235
    :cond_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 237
    invoke-direct {p0, v0, p2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->addCallbacks(Landroid/util/Pair;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 238
    const/4 v7, 0x1

    return v7

    .line 226
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "consumerContextPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    .end local v1    # "prefetchCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .end local v2    # "priorityCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .end local v3    # "intermediateResultsCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .end local v4    # "lastIntermediateResult":Ljava/io/Closeable;, "TT;"
    .end local v5    # "lastProgress":F
    .end local v6    # "lastStatus":I
    .end local p1    # "consumer":Lcom/facebook/imagepipeline/producers/Consumer;, "Lcom/facebook/imagepipeline/producers/Consumer<TT;>;"
    .end local p2    # "producerContext":Lcom/facebook/imagepipeline/producers/ProducerContext;
    :try_start_5
    throw v7

    .line 235
    .restart local v0    # "consumerContextPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    .restart local v1    # "prefetchCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .restart local v2    # "priorityCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .restart local v3    # "intermediateResultsCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .restart local v4    # "lastIntermediateResult":Ljava/io/Closeable;, "TT;"
    .restart local v5    # "lastProgress":F
    .restart local v6    # "lastStatus":I
    .restart local p1    # "consumer":Lcom/facebook/imagepipeline/producers/Consumer;, "Lcom/facebook/imagepipeline/producers/Consumer<TT;>;"
    .restart local p2    # "producerContext":Lcom/facebook/imagepipeline/producers/ProducerContext;
    :catchall_1
    move-exception v7

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    .line 212
    .end local v1    # "prefetchCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .end local v2    # "priorityCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .end local v3    # "intermediateResultsCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;>;"
    .end local v4    # "lastIntermediateResult":Ljava/io/Closeable;, "TT;"
    .end local v5    # "lastProgress":F
    .end local v6    # "lastStatus":I
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method public onCancelled(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer.ForwardingConsumer;)V"
        }
    .end annotation

    .line 448
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    .local p1, "forwardingConsumer":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer.ForwardingConsumer;"
    monitor-enter p0

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    if-eq v0, p1, :cond_0

    .line 451
    monitor-exit p0

    return-void

    .line 454
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    .line 455
    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    .line 456
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->closeSafely(Ljava/io/Closeable;)V

    .line 457
    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    .line 458
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->startInputProducerIfHasAttachedConsumers()V

    .line 461
    return-void

    .line 458
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onFailure(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;Ljava/lang/Throwable;)V
    .locals 3
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer.ForwardingConsumer;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 393
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    .local p1, "consumer":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer.ForwardingConsumer;"
    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    if-eq v0, p1, :cond_0

    .line 396
    monitor-exit p0

    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 401
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;>;"
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 402
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mKey:Ljava/lang/Object;

    invoke-static {v1, v2, p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->access$700(Lcom/facebook/imagepipeline/producers/MultiplexProducer;Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)V

    .line 403
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->closeSafely(Ljava/io/Closeable;)V

    .line 404
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    .line 405
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 407
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 409
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    monitor-enter v1

    .line 410
    :try_start_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v2, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    .line 411
    monitor-exit v1

    .line 412
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    goto :goto_0

    .line 411
    .restart local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 413
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    :cond_1
    return-void

    .line 405
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;>;"
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    return-void
.end method

.method public onNextResult(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;Ljava/io/Closeable;I)V
    .locals 3
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer.ForwardingConsumer;TT;I)V"
        }
    .end annotation

    .line 420
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    .local p1, "consumer":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer.ForwardingConsumer;"
    .local p2, "closeableObject":Ljava/io/Closeable;, "TT;"
    monitor-enter p0

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    if-eq v0, p1, :cond_0

    .line 423
    monitor-exit p0

    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->closeSafely(Ljava/io/Closeable;)V

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    .line 429
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 430
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;>;"
    invoke-static {p3}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->isNotLast(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-virtual {v1, p2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->cloneOrNull(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    .line 432
    iput p3, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastStatus:I

    goto :goto_0

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 435
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mKey:Ljava/lang/Object;

    invoke-static {v1, v2, p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->access$700(Lcom/facebook/imagepipeline/producers/MultiplexProducer;Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)V

    .line 437
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 439
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 441
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    monitor-enter v1

    .line 442
    :try_start_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v2, p2, p3}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    .line 443
    monitor-exit v1

    .line 444
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    goto :goto_1

    .line 443
    .restart local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 445
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    :cond_2
    return-void

    .line 437
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;>;"
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    return-void
.end method

.method public onProgressUpdate(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;F)V
    .locals 3
    .param p2, "progress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer.ForwardingConsumer;F)V"
        }
    .end annotation

    .line 465
    .local p0, "this":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer;"
    .local p1, "forwardingConsumer":Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;, "Lcom/facebook/imagepipeline/producers/MultiplexProducer<TK;TT;>.Multiplexer.ForwardingConsumer;"
    monitor-enter p0

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    if-eq v0, p1, :cond_0

    .line 468
    monitor-exit p0

    return-void

    .line 471
    :cond_0
    iput p2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastProgress:F

    .line 472
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 473
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 475
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 477
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    monitor-enter v1

    .line 478
    :try_start_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v2, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 479
    monitor-exit v1

    .line 480
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    goto :goto_0

    .line 479
    .restart local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 481
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;"
    :cond_1
    return-void

    .line 473
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/facebook/imagepipeline/producers/Consumer<TT;>;Lcom/facebook/imagepipeline/producers/ProducerContext;>;>;"
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    return-void
.end method
