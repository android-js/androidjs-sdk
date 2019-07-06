.class Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;
.super Ljava/lang/Object;
.source "Timing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/core/Timing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleCallbackRunnable"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field private final mFrameStartTime:J

.field final synthetic this$0:Lcom/facebook/react/modules/core/Timing;


# direct methods
.method public constructor <init>(Lcom/facebook/react/modules/core/Timing;J)V
    .locals 0
    .param p2, "frameStartTime"    # J

    .line 132
    iput-object p1, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->mCancelled:Z

    .line 133
    iput-wide p2, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->mFrameStartTime:J

    .line 134
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->mCancelled:Z

    .line 167
    return-void
.end method

.method public run()V
    .locals 14

    .line 138
    iget-boolean v0, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 139
    return-void

    .line 142
    :cond_0
    iget-wide v0, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->mFrameStartTime:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 143
    .local v0, "frameTimeMillis":J
    invoke-static {}, Lcom/facebook/react/common/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 144
    .local v2, "timeSinceBoot":J
    sub-long v4, v2, v0

    .line 145
    .local v4, "frameTimeElapsed":J
    invoke-static {}, Lcom/facebook/react/common/SystemClock;->currentTimeMillis()J

    move-result-wide v6

    .line 146
    .local v6, "time":J
    sub-long v8, v6, v4

    .line 148
    .local v8, "absoluteFrameStartTime":J
    const v10, 0x41855555

    long-to-float v11, v4

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 149
    return-void

    .line 153
    :cond_1
    iget-object v10, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-static {v10}, Lcom/facebook/react/modules/core/Timing;->access$1300(Lcom/facebook/react/modules/core/Timing;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 154
    :try_start_0
    iget-object v11, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-static {v11}, Lcom/facebook/react/modules/core/Timing;->access$1400(Lcom/facebook/react/modules/core/Timing;)Z

    move-result v11

    .line 155
    .local v11, "sendIdleEvents":Z
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    if-eqz v11, :cond_2

    .line 158
    iget-object v10, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-static {v10}, Lcom/facebook/react/modules/core/Timing;->access$1500(Lcom/facebook/react/modules/core/Timing;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v10

    const-class v12, Lcom/facebook/react/modules/core/JSTimers;

    invoke-virtual {v10, v12}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v10

    check-cast v10, Lcom/facebook/react/modules/core/JSTimers;

    long-to-double v12, v8

    .line 159
    invoke-interface {v10, v12, v13}, Lcom/facebook/react/modules/core/JSTimers;->callIdleCallbacks(D)V

    .line 162
    :cond_2
    iget-object v10, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->this$0:Lcom/facebook/react/modules/core/Timing;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/facebook/react/modules/core/Timing;->access$1102(Lcom/facebook/react/modules/core/Timing;Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;)Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;

    .line 163
    return-void

    .line 155
    .end local v11    # "sendIdleEvents":Z
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11
.end method
