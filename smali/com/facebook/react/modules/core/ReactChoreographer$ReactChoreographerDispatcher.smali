.class Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;
.super Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;
.source "ReactChoreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/core/ReactChoreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReactChoreographerDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/core/ReactChoreographer;


# direct methods
.method private constructor <init>(Lcom/facebook/react/modules/core/ReactChoreographer;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;->this$0:Lcom/facebook/react/modules/core/ReactChoreographer;

    invoke-direct {p0}, Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/modules/core/ReactChoreographer;Lcom/facebook/react/modules/core/ReactChoreographer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/react/modules/core/ReactChoreographer;
    .param p2, "x1"    # Lcom/facebook/react/modules/core/ReactChoreographer$1;

    .line 157
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;-><init>(Lcom/facebook/react/modules/core/ReactChoreographer;)V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 5
    .param p1, "frameTimeNanos"    # J

    .line 161
    iget-object v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;->this$0:Lcom/facebook/react/modules/core/ReactChoreographer;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;->this$0:Lcom/facebook/react/modules/core/ReactChoreographer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->access$202(Lcom/facebook/react/modules/core/ReactChoreographer;Z)Z

    .line 163
    move v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;->this$0:Lcom/facebook/react/modules/core/ReactChoreographer;

    invoke-static {v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->access$300(Lcom/facebook/react/modules/core/ReactChoreographer;)[Ljava/util/ArrayDeque;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;->this$0:Lcom/facebook/react/modules/core/ReactChoreographer;

    invoke-static {v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->access$300(Lcom/facebook/react/modules/core/ReactChoreographer;)[Ljava/util/ArrayDeque;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    .line 165
    .local v2, "initialLength":I
    const/4 v3, 0x0

    .local v3, "callback":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 166
    iget-object v4, p0, Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;->this$0:Lcom/facebook/react/modules/core/ReactChoreographer;

    invoke-static {v4}, Lcom/facebook/react/modules/core/ReactChoreographer;->access$300(Lcom/facebook/react/modules/core/ReactChoreographer;)[Ljava/util/ArrayDeque;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;

    invoke-virtual {v4, p1, p2}, Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;->doFrame(J)V

    .line 167
    iget-object v4, p0, Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;->this$0:Lcom/facebook/react/modules/core/ReactChoreographer;

    invoke-static {v4}, Lcom/facebook/react/modules/core/ReactChoreographer;->access$410(Lcom/facebook/react/modules/core/ReactChoreographer;)I

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 163
    .end local v2    # "initialLength":I
    .end local v3    # "callback":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;->this$0:Lcom/facebook/react/modules/core/ReactChoreographer;

    invoke-static {v1}, Lcom/facebook/react/modules/core/ReactChoreographer;->access$500(Lcom/facebook/react/modules/core/ReactChoreographer;)V

    .line 171
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method
