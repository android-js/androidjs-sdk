.class public Lcom/facebook/react/modules/core/ReactChoreographer;
.super Ljava/lang/Object;
.source "ReactChoreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;,
        Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/facebook/react/modules/core/ReactChoreographer;


# instance fields
.field private final mCallbackQueues:[Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mChoreographer:Lcom/facebook/react/modules/core/ChoreographerCompat;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mHasPostedCallback:Z

.field private final mReactChoreographerDispatcher:Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;

.field private mTotalCallbacks:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mTotalCallbacks:I

    .line 84
    iput-boolean v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mHasPostedCallback:Z

    .line 87
    new-instance v0, Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;-><init>(Lcom/facebook/react/modules/core/ReactChoreographer;Lcom/facebook/react/modules/core/ReactChoreographer$1;)V

    iput-object v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mReactChoreographerDispatcher:Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;

    .line 88
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->values()[Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mCallbackQueues:[Ljava/util/ArrayDeque;

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mCallbackQueues:[Ljava/util/ArrayDeque;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 90
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    aput-object v3, v2, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/facebook/react/modules/core/ReactChoreographer;->initializeChoreographer(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/modules/core/ReactChoreographer;)Lcom/facebook/react/modules/core/ChoreographerCompat;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/modules/core/ReactChoreographer;

    .line 23
    iget-object v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mChoreographer:Lcom/facebook/react/modules/core/ChoreographerCompat;

    return-object v0
.end method

.method static synthetic access$102(Lcom/facebook/react/modules/core/ReactChoreographer;Lcom/facebook/react/modules/core/ChoreographerCompat;)Lcom/facebook/react/modules/core/ChoreographerCompat;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/modules/core/ReactChoreographer;
    .param p1, "x1"    # Lcom/facebook/react/modules/core/ChoreographerCompat;

    .line 23
    iput-object p1, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mChoreographer:Lcom/facebook/react/modules/core/ChoreographerCompat;

    return-object p1
.end method

.method static synthetic access$202(Lcom/facebook/react/modules/core/ReactChoreographer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/modules/core/ReactChoreographer;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mHasPostedCallback:Z

    return p1
.end method

.method static synthetic access$300(Lcom/facebook/react/modules/core/ReactChoreographer;)[Ljava/util/ArrayDeque;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/modules/core/ReactChoreographer;

    .line 23
    iget-object v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mCallbackQueues:[Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$410(Lcom/facebook/react/modules/core/ReactChoreographer;)I
    .locals 2
    .param p0, "x0"    # Lcom/facebook/react/modules/core/ReactChoreographer;

    .line 23
    iget v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mTotalCallbacks:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mTotalCallbacks:I

    return v0
.end method

.method static synthetic access$500(Lcom/facebook/react/modules/core/ReactChoreographer;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/modules/core/ReactChoreographer;

    .line 23
    invoke-direct {p0}, Lcom/facebook/react/modules/core/ReactChoreographer;->maybeRemoveFrameCallback()V

    return-void
.end method

.method public static getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;
    .locals 2

    .line 74
    sget-object v0, Lcom/facebook/react/modules/core/ReactChoreographer;->sInstance:Lcom/facebook/react/modules/core/ReactChoreographer;

    const-string v1, "ReactChoreographer needs to be initialized."

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/facebook/react/modules/core/ReactChoreographer;->sInstance:Lcom/facebook/react/modules/core/ReactChoreographer;

    return-object v0
.end method

.method public static initialize()V
    .locals 1

    .line 68
    sget-object v0, Lcom/facebook/react/modules/core/ReactChoreographer;->sInstance:Lcom/facebook/react/modules/core/ReactChoreographer;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/facebook/react/modules/core/ReactChoreographer;

    invoke-direct {v0}, Lcom/facebook/react/modules/core/ReactChoreographer;-><init>()V

    sput-object v0, Lcom/facebook/react/modules/core/ReactChoreographer;->sInstance:Lcom/facebook/react/modules/core/ReactChoreographer;

    .line 71
    :cond_0
    return-void
.end method

.method private maybeRemoveFrameCallback()V
    .locals 3

    .line 148
    iget v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mTotalCallbacks:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 149
    iget v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mTotalCallbacks:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mHasPostedCallback:Z

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mChoreographer:Lcom/facebook/react/modules/core/ChoreographerCompat;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mChoreographer:Lcom/facebook/react/modules/core/ChoreographerCompat;

    iget-object v2, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mReactChoreographerDispatcher:Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;

    invoke-virtual {v0, v2}, Lcom/facebook/react/modules/core/ChoreographerCompat;->removeFrameCallback(Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    .line 153
    :cond_1
    iput-boolean v1, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mHasPostedCallback:Z

    .line 155
    :cond_2
    return-void
.end method


# virtual methods
.method public initializeChoreographer(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 121
    new-instance v0, Lcom/facebook/react/modules/core/ReactChoreographer$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/modules/core/ReactChoreographer$2;-><init>(Lcom/facebook/react/modules/core/ReactChoreographer;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public declared-synchronized postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V
    .locals 2
    .param p1, "type"    # Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;
    .param p2, "frameCallback"    # Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mCallbackQueues:[Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->getOrder()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 99
    iget v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mTotalCallbacks:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mTotalCallbacks:I

    .line 100
    iget v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mTotalCallbacks:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 101
    iget-boolean v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mHasPostedCallback:Z

    if-nez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mChoreographer:Lcom/facebook/react/modules/core/ChoreographerCompat;

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Lcom/facebook/react/modules/core/ReactChoreographer$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/modules/core/ReactChoreographer$1;-><init>(Lcom/facebook/react/modules/core/ReactChoreographer;)V

    invoke-virtual {p0, v0}, Lcom/facebook/react/modules/core/ReactChoreographer;->initializeChoreographer(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 110
    .end local p0    # "this":Lcom/facebook/react/modules/core/ReactChoreographer;
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallbackOnChoreographer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 97
    .end local p1    # "type":Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;
    .end local p2    # "frameCallback":Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public postFrameCallbackOnChoreographer()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mChoreographer:Lcom/facebook/react/modules/core/ChoreographerCompat;

    iget-object v1, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mReactChoreographerDispatcher:Lcom/facebook/react/modules/core/ReactChoreographer$ReactChoreographerDispatcher;

    invoke-virtual {v0, v1}, Lcom/facebook/react/modules/core/ChoreographerCompat;->postFrameCallback(Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mHasPostedCallback:Z

    .line 118
    return-void
.end method

.method public declared-synchronized removeFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V
    .locals 2
    .param p1, "type"    # Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;
    .param p2, "frameCallback"    # Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mCallbackQueues:[Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->getOrder()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mTotalCallbacks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer;->mTotalCallbacks:I

    .line 141
    invoke-direct {p0}, Lcom/facebook/react/modules/core/ReactChoreographer;->maybeRemoveFrameCallback()V

    goto :goto_0

    .line 143
    .end local p0    # "this":Lcom/facebook/react/modules/core/ReactChoreographer;
    :cond_0
    const-string v0, "ReactNative"

    const-string v1, "Tried to remove non-existent frame callback"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    .end local p1    # "type":Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;
    .end local p2    # "frameCallback":Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
