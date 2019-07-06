.class public Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;
.super Ljava/lang/Object;
.source "MessageQueueThreadImpl.java"

# interfaces
.implements Lcom/facebook/react/bridge/queue/MessageQueueThread;


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# instance fields
.field private final mAssertionErrorMessage:Ljava/lang/String;

.field private final mHandler:Lcom/facebook/react/bridge/queue/MessageQueueThreadHandler;

.field private volatile mIsFinished:Z

.field private final mLooper:Landroid/os/Looper;

.field private final mName:Ljava/lang/String;

.field private mPerfStats:Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/os/Looper;Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "exceptionHandler"    # Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;-><init>(Ljava/lang/String;Landroid/os/Looper;Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/os/Looper;Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "exceptionHandler"    # Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;
    .param p4, "stats"    # Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mIsFinished:Z

    .line 50
    iput-object p1, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mLooper:Landroid/os/Looper;

    .line 52
    new-instance v0, Lcom/facebook/react/bridge/queue/MessageQueueThreadHandler;

    invoke-direct {v0, p2, p3}, Lcom/facebook/react/bridge/queue/MessageQueueThreadHandler;-><init>(Landroid/os/Looper;Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;)V

    iput-object v0, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mHandler:Lcom/facebook/react/bridge/queue/MessageQueueThreadHandler;

    .line 53
    iput-object p4, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mPerfStats:Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected to be called from the \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' thread!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mAssertionErrorMessage:Ljava/lang/String;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;)Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;

    .line 29
    iget-object v0, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mPerfStats:Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 29
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->assignToPerfStats(Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;JJ)V

    return-void
.end method

.method private static assignToPerfStats(Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;JJ)V
    .locals 0
    .param p0, "stats"    # Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;
    .param p1, "wall"    # J
    .param p3, "cpu"    # J

    .line 161
    iput-wide p1, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;->wallTime:J

    .line 162
    iput-wide p3, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;->cpuTime:J

    .line 163
    return-void
.end method

.method public static create(Lcom/facebook/react/bridge/queue/MessageQueueThreadSpec;Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;)Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;
    .locals 3
    .param p0, "spec"    # Lcom/facebook/react/bridge/queue/MessageQueueThreadSpec;
    .param p1, "exceptionHandler"    # Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;

    .line 176
    sget-object v0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl$5;->$SwitchMap$com$facebook$react$bridge$queue$MessageQueueThreadSpec$ThreadType:[I

    invoke-virtual {p0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadSpec;->getThreadType()Lcom/facebook/react/bridge/queue/MessageQueueThreadSpec$ThreadType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/queue/MessageQueueThreadSpec$ThreadType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadSpec;->getStackSize()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->startNewBackgroundThread(Ljava/lang/String;JLcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;)Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown thread type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadSpec;->getThreadType()Lcom/facebook/react/bridge/queue/MessageQueueThreadSpec$ThreadType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->createForMainThread(Ljava/lang/String;Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;)Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;

    move-result-object v0

    return-object v0
.end method

.method private static createForMainThread(Ljava/lang/String;Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;)Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "exceptionHandler"    # Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;

    .line 192
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 193
    .local v0, "mainLooper":Landroid/os/Looper;
    new-instance v1, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;

    invoke-direct {v1, p0, v0, p1}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;-><init>(Ljava/lang/String;Landroid/os/Looper;Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;)V

    .line 196
    .local v1, "mqt":Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    const/4 v2, -0x4

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 199
    :cond_0
    new-instance v2, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl$3;

    invoke-direct {v2}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl$3;-><init>()V

    invoke-static {v2}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 207
    :goto_0
    return-object v1
.end method

.method private static startNewBackgroundThread(Ljava/lang/String;JLcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;)Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "stackSize"    # J
    .param p3, "exceptionHandler"    # Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;

    .line 219
    new-instance v0, Lcom/facebook/react/common/futures/SimpleSettableFuture;

    invoke-direct {v0}, Lcom/facebook/react/common/futures/SimpleSettableFuture;-><init>()V

    .line 221
    .local v0, "dataFuture":Lcom/facebook/react/common/futures/SimpleSettableFuture;, "Lcom/facebook/react/common/futures/SimpleSettableFuture<Landroid/util/Pair<Landroid/os/Looper;Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;>;>;"
    new-instance v7, Ljava/lang/Thread;

    new-instance v3, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl$4;

    invoke-direct {v3, v0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl$4;-><init>(Lcom/facebook/react/common/futures/SimpleSettableFuture;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqt_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    move-object v1, v7

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 235
    .local v1, "bgThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 237
    invoke-virtual {v0}, Lcom/facebook/react/common/futures/SimpleSettableFuture;->getOrThrow()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 238
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/Looper;Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;>;"
    new-instance v3, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/os/Looper;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;

    invoke-direct {v3, p0, v4, p3, v5}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;-><init>(Ljava/lang/String;Landroid/os/Looper;Lcom/facebook/react/bridge/queue/QueueThreadExceptionHandler;Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;)V

    return-object v3
.end method


# virtual methods
.method public assertIsOnThread()V
    .locals 2
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->isOnThread()Z

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mAssertionErrorMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/SoftAssertions;->assertCondition(ZLjava/lang/String;)V

    .line 108
    return-void
.end method

.method public assertIsOnThread(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 117
    nop

    .line 118
    invoke-virtual {p0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->isOnThread()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mAssertionErrorMessage:Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Lcom/facebook/react/bridge/SoftAssertions;->assertCondition(ZLjava/lang/String;)V

    .line 120
    return-void
.end method

.method public callOnQueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 76
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Lcom/facebook/react/common/futures/SimpleSettableFuture;

    invoke-direct {v0}, Lcom/facebook/react/common/futures/SimpleSettableFuture;-><init>()V

    .line 77
    .local v0, "future":Lcom/facebook/react/common/futures/SimpleSettableFuture;, "Lcom/facebook/react/common/futures/SimpleSettableFuture<TT;>;"
    new-instance v1, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl$1;-><init>(Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;Lcom/facebook/react/common/futures/SimpleSettableFuture;Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v1}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->runOnQueue(Ljava/lang/Runnable;)V

    .line 88
    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPerfStats()Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mPerfStats:Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;

    return-object v0
.end method

.method public isOnThread()Z
    .locals 2
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public quitSynchronous()V
    .locals 4
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mIsFinished:Z

    .line 130
    iget-object v0, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 131
    iget-object v0, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got interrupted waiting to join thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void
.end method

.method public resetPerfStats()V
    .locals 3
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mPerfStats:Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2, v1, v2}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->assignToPerfStats(Lcom/facebook/react/bridge/queue/MessageQueueThreadPerfStats;JJ)V

    .line 150
    new-instance v0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl$2;-><init>(Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;)V

    invoke-virtual {p0, v0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->runOnQueue(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public runOnQueue(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 64
    iget-boolean v0, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mIsFinished:Z

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to enqueue runnable on already finished thread: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0}, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "... dropping Runnable."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/bridge/queue/MessageQueueThreadImpl;->mHandler:Lcom/facebook/react/bridge/queue/MessageQueueThreadHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/queue/MessageQueueThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method
