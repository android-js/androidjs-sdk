.class Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;
.super Ljava/lang/Object;
.source "PartialDiskCacheProducer.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;->onFinishDiskReads(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/cache/common/CacheKey;)Lbolts/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;

.field final synthetic val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

.field final synthetic val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

.field final synthetic val$partialImageCacheKey:Lcom/facebook/cache/common/CacheKey;

.field final synthetic val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/cache/common/CacheKey;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;

    .line 106
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->this$0:Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$requestId:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$partialImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/facebook/imagepipeline/image/EncodedImage;>;"
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;->access$000(Lbolts/Task;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PartialDiskCacheProducer"

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$requestId:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithCancellation(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    goto/16 :goto_1

    .line 113
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$requestId:Ljava/lang/String;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 115
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->this$0:Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$partialImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;->access$100(Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    goto/16 :goto_1

    .line 117
    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 118
    .local v0, "cachedReference":Lcom/facebook/imagepipeline/image/EncodedImage;
    if-eqz v0, :cond_3

    .line 119
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$requestId:Ljava/lang/String;

    .line 122
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v6, v5}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;->getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;ZI)Ljava/util/Map;

    move-result-object v5

    .line 119
    invoke-interface {v3, v4, v2, v5}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-static {v3}, Lcom/facebook/imagepipeline/common/BytesRange;->toMax(I)Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object v3

    .line 124
    .local v3, "cachedRange":Lcom/facebook/imagepipeline/common/BytesRange;
    invoke-virtual {v0, v3}, Lcom/facebook/imagepipeline/image/EncodedImage;->setBytesRange(Lcom/facebook/imagepipeline/common/BytesRange;)V

    .line 127
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v4

    .line 128
    .local v4, "cachedLength":I
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v5}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v5

    .line 130
    .local v5, "originalRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequest;->getBytesRange()Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/facebook/imagepipeline/common/BytesRange;->contains(Lcom/facebook/imagepipeline/common/BytesRange;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 131
    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v8, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$requestId:Ljava/lang/String;

    invoke-interface {v7, v8, v2, v6}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onUltimateProducerReached(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    const/16 v6, 0x9

    invoke-interface {v2, v0, v6}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    const/16 v6, 0x8

    invoke-interface {v2, v0, v6}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    .line 137
    invoke-static {v5}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->fromRequest(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    add-int/lit8 v6, v4, -0x1

    .line 138
    invoke-static {v6}, Lcom/facebook/imagepipeline/common/BytesRange;->from(I)Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setBytesRange(Lcom/facebook/imagepipeline/common/BytesRange;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    .line 140
    .local v2, "remainingRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    new-instance v6, Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-direct {v6, v2, v7}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 143
    .local v6, "contextForRemainingRequest":Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->this$0:Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;

    iget-object v8, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v9, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$partialImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-static {v7, v8, v6, v9, v0}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;->access$100(Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 149
    .end local v2    # "remainingRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .end local v3    # "cachedRange":Lcom/facebook/imagepipeline/common/BytesRange;
    .end local v4    # "cachedLength":I
    .end local v5    # "originalRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .end local v6    # "contextForRemainingRequest":Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    :goto_0
    goto :goto_1

    .line 150
    :cond_3
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$requestId:Ljava/lang/String;

    .line 153
    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v5}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;->getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;ZI)Ljava/util/Map;

    move-result-object v5

    .line 150
    invoke-interface {v3, v4, v2, v5}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 154
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->this$0:Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;->val$partialImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-static {v2, v3, v4, v5, v0}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;->access$100(Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 157
    .end local v0    # "cachedReference":Lcom/facebook/imagepipeline/image/EncodedImage;
    :goto_1
    return-object v1
.end method
