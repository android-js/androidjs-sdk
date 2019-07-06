.class public Lcom/facebook/react/modules/debug/AnimationsDebugModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "AnimationsDebugModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "AnimationsDebugModule"
.end annotation


# static fields
.field protected static final NAME:Ljava/lang/String; = "AnimationsDebugModule"


# instance fields
.field private final mCatalystSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "catalystSettings"    # Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 42
    iput-object p2, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mCatalystSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    .line 43
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "AnimationsDebugModule"

    return-object v0
.end method

.method public onCatalystInstanceDestroy()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->stop()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    .line 112
    :cond_0
    return-void
.end method

.method public startRecordingFps()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mCatalystSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    if-eqz v0, :cond_2

    .line 53
    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isAnimationFpsDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    .line 62
    invoke-virtual {p0}, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v0, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    .line 63
    iget-object v0, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    invoke-virtual {v0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->startAndRecordFpsAtEachFrame()V

    .line 64
    return-void

    .line 58
    :cond_1
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    const-string v1, "Already recording FPS!"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    :goto_0
    return-void
.end method

.method public stopRecordingFps(D)V
    .locals 10
    .param p1, "animationStopTimeMs"    # D
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    if-nez v0, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->stop()V

    .line 80
    iget-object v0, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    double-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->getFpsInfo(J)Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;

    move-result-object v0

    .line 82
    .local v0, "fpsInfo":Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    const-string v3, "Unable to get FPS info"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 85
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    iget-wide v5, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;->fps:D

    .line 88
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;->totalFrames:I

    .line 89
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget v5, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;->totalExpectedFrames:I

    .line 90
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 85
    const-string v5, "FPS: %.2f, %d frames (%d expected)"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "fpsString":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v8, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;->jsFps:D

    .line 94
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v6

    iget v5, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;->totalJsFrames:I

    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    iget v5, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;->totalExpectedFrames:I

    .line 96
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    .line 91
    const-string v5, "JS FPS: %.2f, %d frames (%d expected)"

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "jsFpsString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nTotal Time MS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v1, [Ljava/lang/Object;

    iget v8, v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;->totalTimeMs:I

    .line 98
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v6, "%d"

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "debugString":Ljava/lang/String;
    const-string v5, "ReactNative"

    invoke-static {v5, v4}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v5

    invoke-static {v5, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 103
    .end local v2    # "fpsString":Ljava/lang/String;
    .end local v3    # "jsFpsString":Ljava/lang/String;
    .end local v4    # "debugString":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    .line 104
    return-void
.end method
