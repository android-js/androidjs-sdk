.class public abstract Lcom/facebook/react/HeadlessJsTaskService;
.super Landroid/app/Service;
.source "HeadlessJsTaskService.java"

# interfaces
.implements Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;


# static fields
.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation runtime Ljavax/annotation/Nullable;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/HeadlessJsTaskService;->mActiveTasks:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/HeadlessJsTaskService;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/HeadlessJsTaskService;
    .param p1, "x1"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "x2"    # Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/HeadlessJsTaskService;->invokeStartTask(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/HeadlessJsTaskService;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/HeadlessJsTaskService;

    .line 43
    iget-object v0, p0, Lcom/facebook/react/HeadlessJsTaskService;->mActiveTasks:Ljava/util/Set;

    return-object v0
.end method

.method public static acquireWakeLockNow(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WakelockTimeout"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/facebook/react/HeadlessJsTaskService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    nop

    .line 75
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 76
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-class v2, Lcom/facebook/react/HeadlessJsTaskService;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/facebook/react/HeadlessJsTaskService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 79
    sget-object v1, Lcom/facebook/react/HeadlessJsTaskService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 80
    sget-object v1, Lcom/facebook/react/HeadlessJsTaskService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 82
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_1
    return-void
.end method

.method private invokeStartTask(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "taskConfig"    # Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    .line 120
    invoke-static {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    move-result-object v0

    .line 121
    .local v0, "headlessJsTaskContext":Lcom/facebook/react/jstasks/HeadlessJsTaskContext;
    invoke-virtual {v0, p0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->addTaskEventListener(Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;)V

    .line 123
    new-instance v1, Lcom/facebook/react/HeadlessJsTaskService$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/facebook/react/HeadlessJsTaskService$2;-><init>(Lcom/facebook/react/HeadlessJsTaskService;Lcom/facebook/react/jstasks/HeadlessJsTaskContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method


# virtual methods
.method protected getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/facebook/react/HeadlessJsTaskService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactApplication;

    invoke-interface {v0}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    return-object v0
.end method

.method protected getTaskConfig(Landroid/content/Intent;)Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .line 136
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 138
    invoke-virtual {p0}, Lcom/facebook/react/HeadlessJsTaskService;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/facebook/react/HeadlessJsTaskService;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 140
    .local v0, "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    .line 141
    .local v1, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    if-eqz v1, :cond_0

    .line 142
    nop

    .line 143
    invoke-static {v1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    move-result-object v2

    .line 144
    .local v2, "headlessJsTaskContext":Lcom/facebook/react/jstasks/HeadlessJsTaskContext;
    invoke-virtual {v2, p0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->removeTaskEventListener(Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;)V

    .line 147
    .end local v0    # "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    .end local v1    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    .end local v2    # "headlessJsTaskContext":Lcom/facebook/react/jstasks/HeadlessJsTaskContext;
    :cond_0
    sget-object v0, Lcom/facebook/react/HeadlessJsTaskService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 150
    :cond_1
    return-void
.end method

.method public onHeadlessJsTaskFinish(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 157
    iget-object v0, p0, Lcom/facebook/react/HeadlessJsTaskService;->mActiveTasks:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/facebook/react/HeadlessJsTaskService;->mActiveTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/facebook/react/HeadlessJsTaskService;->stopSelf()V

    .line 161
    :cond_0
    return-void
.end method

.method public onHeadlessJsTaskStart(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 153
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 50
    invoke-virtual {p0, p1}, Lcom/facebook/react/HeadlessJsTaskService;->getTaskConfig(Landroid/content/Intent;)Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    move-result-object v0

    .line 51
    .local v0, "taskConfig":Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lcom/facebook/react/HeadlessJsTaskService;->startTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    .line 53
    const/4 v1, 0x3

    return v1

    .line 55
    :cond_0
    const/4 v1, 0x2

    return v1
.end method

.method protected startTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 3
    .param p1, "taskConfig"    # Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    .line 97
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 98
    invoke-static {p0}, Lcom/facebook/react/HeadlessJsTaskService;->acquireWakeLockNow(Landroid/content/Context;)V

    .line 99
    nop

    .line 100
    invoke-virtual {p0}, Lcom/facebook/react/HeadlessJsTaskService;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 101
    .local v0, "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    .line 102
    .local v1, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    if-nez v1, :cond_0

    .line 103
    new-instance v2, Lcom/facebook/react/HeadlessJsTaskService$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/facebook/react/HeadlessJsTaskService$1;-><init>(Lcom/facebook/react/HeadlessJsTaskService;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;Lcom/facebook/react/ReactInstanceManager;)V

    .line 104
    invoke-virtual {v0, v2}, Lcom/facebook/react/ReactInstanceManager;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;)V

    .line 111
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->hasStartedCreatingInitialContext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->createReactContextInBackground()V

    goto :goto_0

    .line 115
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/facebook/react/HeadlessJsTaskService;->invokeStartTask(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    .line 117
    :cond_1
    :goto_0
    return-void
.end method
