.class public abstract Lcom/facebook/react/fabric/GuardedFrameCallback;
.super Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;
.source "GuardedFrameCallback.java"


# instance fields
.field private final mReactContext:Lcom/facebook/react/bridge/ReactContext;


# direct methods
.method protected constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 16
    invoke-direct {p0}, Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/react/fabric/GuardedFrameCallback;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 18
    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .line 23
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/fabric/GuardedFrameCallback;->doFrameGuarded(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/facebook/react/fabric/GuardedFrameCallback;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v1, v0}, Lcom/facebook/react/bridge/ReactContext;->handleException(Ljava/lang/Exception;)V

    .line 27
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method protected abstract doFrameGuarded(J)V
.end method
