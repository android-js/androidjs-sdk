.class public Lcom/facebook/react/jstasks/HeadlessJsTaskContext;
.super Ljava/lang/Object;
.source "HeadlessJsTaskContext.java"


# static fields
.field private static final INSTANCES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/facebook/react/bridge/ReactContext;",
            "Lcom/facebook/react/jstasks/HeadlessJsTaskContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHeadlessJsTaskEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mReactContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskTimeouts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->INSTANCES:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mHeadlessJsTaskEventListeners:Ljava/util/Set;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mLastTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mActiveTasks:Ljava/util/Set;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mTaskTimeouts:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mReactContext:Ljava/lang/ref/WeakReference;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/jstasks/HeadlessJsTaskContext;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    .line 27
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mHeadlessJsTaskEventListeners:Ljava/util/Set;

    return-object v0
.end method

.method public static getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;
    .locals 2
    .param p0, "context"    # Lcom/facebook/react/bridge/ReactContext;

    .line 40
    sget-object v0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->INSTANCES:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    .line 41
    .local v0, "helper":Lcom/facebook/react/jstasks/HeadlessJsTaskContext;
    if-nez v0, :cond_0

    .line 42
    new-instance v1, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    invoke-direct {v1, p0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    move-object v0, v1

    .line 43
    sget-object v1, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->INSTANCES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    return-object v0
.end method

.method private scheduleTaskTimeout(IJ)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "timeout"    # J

    .line 145
    new-instance v0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext$2;-><init>(Lcom/facebook/react/jstasks/HeadlessJsTaskContext;I)V

    .line 151
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mTaskTimeouts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 152
    iget-object v1, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    return-void
.end method


# virtual methods
.method public addTaskEventListener(Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;

    .line 64
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mHeadlessJsTaskEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public declared-synchronized finishTask(I)V
    .locals 3
    .param p1, "taskId"    # I

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mActiveTasks:Ljava/util/Set;

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to finish non-existent task with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mTaskTimeouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 122
    .local v0, "timeout":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    iget-object v1, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mTaskTimeouts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 126
    .end local p0    # "this":Lcom/facebook/react/jstasks/HeadlessJsTaskContext;
    :cond_0
    new-instance v1, Lcom/facebook/react/jstasks/HeadlessJsTaskContext$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext$1;-><init>(Lcom/facebook/react/jstasks/HeadlessJsTaskContext;I)V

    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 117
    .end local v0    # "timeout":Ljava/lang/Runnable;
    .end local p1    # "taskId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hasActiveTasks()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mActiveTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isTaskRunning(I)Z
    .locals 2
    .param p1, "taskId"    # I

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mActiveTasks:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/react/jstasks/HeadlessJsTaskContext;
    .end local p1    # "taskId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeTaskEventListener(Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;

    .line 71
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mHeadlessJsTaskEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public declared-synchronized startTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)I
    .locals 7
    .param p1, "taskConfig"    # Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 89
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mReactContext:Ljava/lang/ref/WeakReference;

    .line 90
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Tried to start a task on a react context that has already been destroyed"

    .line 89
    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 92
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getLifecycleState()Lcom/facebook/react/common/LifecycleState;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v1, v2, :cond_1

    .line 93
    invoke-virtual {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->isAllowedInForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to start task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->getTaskKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " while in foreground, but this is not allowed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    .end local p0    # "this":Lcom/facebook/react/jstasks/HeadlessJsTaskContext;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mLastTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 99
    .local v1, "taskId":I
    iget-object v2, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mActiveTasks:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    const-class v2, Lcom/facebook/react/modules/appregistry/AppRegistry;

    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/modules/appregistry/AppRegistry;

    .line 101
    invoke-virtual {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->getTaskKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->getData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    invoke-interface {v2, v1, v3, v4}, Lcom/facebook/react/modules/appregistry/AppRegistry;->startHeadlessTask(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 102
    invoke-virtual {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->getTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 103
    invoke-virtual {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->getTimeout()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->scheduleTaskTimeout(IJ)V

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mHeadlessJsTaskEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;

    .line 106
    .local v3, "listener":Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;
    invoke-interface {v3, v1}, Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;->onHeadlessJsTaskStart(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v3    # "listener":Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;
    goto :goto_1

    .line 108
    :cond_3
    monitor-exit p0

    return v1

    .line 87
    .end local v0    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    .end local v1    # "taskId":I
    .end local p1    # "taskConfig":Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method
