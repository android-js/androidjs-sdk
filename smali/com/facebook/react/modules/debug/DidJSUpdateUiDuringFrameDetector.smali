.class public Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;
.super Ljava/lang/Object;
.source "DidJSUpdateUiDuringFrameDetector.java"

# interfaces
.implements Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;
.implements Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;


# instance fields
.field private final mTransitionToBusyEvents:Lcom/facebook/react/common/LongArray;

.field private final mTransitionToIdleEvents:Lcom/facebook/react/common/LongArray;

.field private final mViewHierarchyUpdateEnqueuedEvents:Lcom/facebook/react/common/LongArray;

.field private final mViewHierarchyUpdateFinishedEvents:Lcom/facebook/react/common/LongArray;

.field private volatile mWasIdleAtEndOfLastFrame:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/facebook/react/common/LongArray;->createWithInitialCapacity(I)Lcom/facebook/react/common/LongArray;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mTransitionToIdleEvents:Lcom/facebook/react/common/LongArray;

    .line 28
    invoke-static {v0}, Lcom/facebook/react/common/LongArray;->createWithInitialCapacity(I)Lcom/facebook/react/common/LongArray;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mTransitionToBusyEvents:Lcom/facebook/react/common/LongArray;

    .line 29
    nop

    .line 30
    invoke-static {v0}, Lcom/facebook/react/common/LongArray;->createWithInitialCapacity(I)Lcom/facebook/react/common/LongArray;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mViewHierarchyUpdateEnqueuedEvents:Lcom/facebook/react/common/LongArray;

    .line 31
    nop

    .line 32
    invoke-static {v0}, Lcom/facebook/react/common/LongArray;->createWithInitialCapacity(I)Lcom/facebook/react/common/LongArray;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mViewHierarchyUpdateFinishedEvents:Lcom/facebook/react/common/LongArray;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mWasIdleAtEndOfLastFrame:Z

    return-void
.end method

.method private static cleanUp(Lcom/facebook/react/common/LongArray;J)V
    .locals 6
    .param p0, "eventArray"    # Lcom/facebook/react/common/LongArray;
    .param p1, "endTime"    # J

    .line 162
    invoke-virtual {p0}, Lcom/facebook/react/common/LongArray;->size()I

    move-result v0

    .line 163
    .local v0, "size":I
    const/4 v1, 0x0

    .line 164
    .local v1, "indicesToRemove":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 165
    invoke-virtual {p0, v2}, Lcom/facebook/react/common/LongArray;->get(I)J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-gez v5, :cond_0

    .line 166
    add-int/lit8 v1, v1, 0x1

    .line 164
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v2    # "i":I
    :cond_1
    if-lez v1, :cond_3

    .line 171
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    sub-int v3, v0, v1

    if-ge v2, v3, :cond_2

    .line 172
    add-int v3, v2, v1

    invoke-virtual {p0, v3}, Lcom/facebook/react/common/LongArray;->get(I)J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/facebook/react/common/LongArray;->set(IJ)V

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 174
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/facebook/react/common/LongArray;->dropTail(I)V

    .line 176
    :cond_3
    return-void
.end method

.method private didEndFrameIdle(JJ)Z
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 145
    iget-object v0, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mTransitionToIdleEvents:Lcom/facebook/react/common/LongArray;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->getLastEventBetweenTimestamps(Lcom/facebook/react/common/LongArray;JJ)J

    move-result-wide v0

    .line 149
    .local v0, "lastIdleTransition":J
    iget-object v2, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mTransitionToBusyEvents:Lcom/facebook/react/common/LongArray;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->getLastEventBetweenTimestamps(Lcom/facebook/react/common/LongArray;JJ)J

    move-result-wide v2

    .line 154
    .local v2, "lastBusyTransition":J
    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 155
    iget-boolean v4, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mWasIdleAtEndOfLastFrame:Z

    return v4

    .line 158
    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private static getLastEventBetweenTimestamps(Lcom/facebook/react/common/LongArray;JJ)J
    .locals 6
    .param p0, "eventArray"    # Lcom/facebook/react/common/LongArray;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 132
    const-wide/16 v0, -0x1

    .line 133
    .local v0, "lastEvent":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/common/LongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 134
    invoke-virtual {p0, v2}, Lcom/facebook/react/common/LongArray;->get(I)J

    move-result-wide v3

    .line 135
    .local v3, "time":J
    cmp-long v5, v3, p1

    if-ltz v5, :cond_0

    cmp-long v5, v3, p3

    if-gez v5, :cond_0

    .line 136
    move-wide v0, v3

    goto :goto_1

    .line 137
    :cond_0
    cmp-long v5, v3, p3

    if-ltz v5, :cond_1

    .line 138
    goto :goto_2

    .line 133
    .end local v3    # "time":J
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "i":I
    :cond_2
    :goto_2
    return-wide v0
.end method

.method private static hasEventBetweenTimestamps(Lcom/facebook/react/common/LongArray;JJ)Z
    .locals 4
    .param p0, "eventArray"    # Lcom/facebook/react/common/LongArray;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/common/LongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 120
    invoke-virtual {p0, v0}, Lcom/facebook/react/common/LongArray;->get(I)J

    move-result-wide v1

    .line 121
    .local v1, "time":J
    cmp-long v3, v1, p1

    if-ltz v3, :cond_0

    cmp-long v3, v1, p3

    if-gez v3, :cond_0

    .line 122
    const/4 v3, 0x1

    return v3

    .line 119
    .end local v1    # "time":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized getDidJSHitFrameAndCleanup(JJ)Z
    .locals 4
    .param p1, "frameStartTimeNanos"    # J
    .param p3, "frameEndTimeNanos"    # J

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mViewHierarchyUpdateFinishedEvents:Lcom/facebook/react/common/LongArray;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->hasEventBetweenTimestamps(Lcom/facebook/react/common/LongArray;JJ)Z

    move-result v0

    .line 92
    .local v0, "finishedUiUpdate":Z
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->didEndFrameIdle(JJ)Z

    move-result v1

    .line 95
    .local v1, "didEndFrameIdle":Z
    if-eqz v0, :cond_0

    .line 96
    const/4 v2, 0x1

    .local v2, "hitFrame":Z
    goto :goto_0

    .line 99
    .end local v2    # "hitFrame":Z
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mViewHierarchyUpdateEnqueuedEvents:Lcom/facebook/react/common/LongArray;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->hasEventBetweenTimestamps(Lcom/facebook/react/common/LongArray;JJ)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;
    :cond_1
    const/4 v2, 0x0

    .line 105
    .restart local v2    # "hitFrame":Z
    :goto_0
    iget-object v3, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mTransitionToIdleEvents:Lcom/facebook/react/common/LongArray;

    invoke-static {v3, p3, p4}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->cleanUp(Lcom/facebook/react/common/LongArray;J)V

    .line 106
    iget-object v3, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mTransitionToBusyEvents:Lcom/facebook/react/common/LongArray;

    invoke-static {v3, p3, p4}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->cleanUp(Lcom/facebook/react/common/LongArray;J)V

    .line 107
    iget-object v3, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mViewHierarchyUpdateEnqueuedEvents:Lcom/facebook/react/common/LongArray;

    invoke-static {v3, p3, p4}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->cleanUp(Lcom/facebook/react/common/LongArray;J)V

    .line 108
    iget-object v3, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mViewHierarchyUpdateFinishedEvents:Lcom/facebook/react/common/LongArray;

    invoke-static {v3, p3, p4}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->cleanUp(Lcom/facebook/react/common/LongArray;J)V

    .line 110
    iput-boolean v1, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mWasIdleAtEndOfLastFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return v2

    .line 87
    .end local v0    # "finishedUiUpdate":Z
    .end local v1    # "didEndFrameIdle":Z
    .end local v2    # "hitFrame":Z
    .end local p1    # "frameStartTimeNanos":J
    .end local p3    # "frameEndTimeNanos":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onBridgeDestroyed()V
    .locals 0

    monitor-enter p0

    .line 48
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onTransitionToBridgeBusy()V
    .locals 3

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mTransitionToBusyEvents:Lcom/facebook/react/common/LongArray;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/common/LongArray;->add(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 41
    .end local p0    # "this":Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTransitionToBridgeIdle()V
    .locals 3

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mTransitionToIdleEvents:Lcom/facebook/react/common/LongArray;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/common/LongArray;->add(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 36
    .end local p0    # "this":Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onViewHierarchyUpdateEnqueued()V
    .locals 3

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mViewHierarchyUpdateEnqueuedEvents:Lcom/facebook/react/common/LongArray;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/common/LongArray;->add(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 51
    .end local p0    # "this":Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onViewHierarchyUpdateFinished()V
    .locals 3

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;->mViewHierarchyUpdateFinishedEvents:Lcom/facebook/react/common/LongArray;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/common/LongArray;->add(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 56
    .end local p0    # "this":Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetector;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
