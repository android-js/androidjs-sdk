.class public Lcom/facebook/react/animated/DecayAnimation;
.super Lcom/facebook/react/animated/AnimationDriver;
.source "DecayAnimation.java"


# instance fields
.field private mCurrentLoop:I

.field private mDeceleration:D

.field private mFromValue:D

.field private mIterations:I

.field private mLastValue:D

.field private mStartFrameTimeMillis:J

.field private final mVelocity:D


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 27
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimationDriver;-><init>()V

    .line 28
    const-string v0, "velocity"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/DecayAnimation;->mVelocity:D

    .line 29
    invoke-virtual {p0, p1}, Lcom/facebook/react/animated/DecayAnimation;->resetConfig(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 30
    return-void
.end method


# virtual methods
.method public resetConfig(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 34
    const-string v0, "deceleration"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/DecayAnimation;->mDeceleration:D

    .line 35
    const-string v0, "iterations"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/facebook/react/animated/DecayAnimation;->mIterations:I

    .line 36
    iput v2, p0, Lcom/facebook/react/animated/DecayAnimation;->mCurrentLoop:I

    .line 37
    iget v0, p0, Lcom/facebook/react/animated/DecayAnimation;->mIterations:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/facebook/react/animated/DecayAnimation;->mHasFinished:Z

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/react/animated/DecayAnimation;->mStartFrameTimeMillis:J

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/react/animated/DecayAnimation;->mFromValue:D

    .line 40
    iput-wide v0, p0, Lcom/facebook/react/animated/DecayAnimation;->mLastValue:D

    .line 41
    return-void
.end method

.method public runAnimationStep(J)V
    .locals 15
    .param p1, "frameTimeNanos"    # J

    .line 45
    move-object v0, p0

    const-wide/32 v1, 0xf4240

    div-long v1, p1, v1

    .line 46
    .local v1, "frameTimeMillis":J
    iget-wide v3, v0, Lcom/facebook/react/animated/DecayAnimation;->mStartFrameTimeMillis:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 48
    const-wide/16 v3, 0x10

    sub-long v3, v1, v3

    iput-wide v3, v0, Lcom/facebook/react/animated/DecayAnimation;->mStartFrameTimeMillis:J

    .line 49
    iget-wide v3, v0, Lcom/facebook/react/animated/DecayAnimation;->mFromValue:D

    iget-wide v7, v0, Lcom/facebook/react/animated/DecayAnimation;->mLastValue:D

    cmpl-double v9, v3, v7

    if-nez v9, :cond_0

    .line 50
    iget-object v3, v0, Lcom/facebook/react/animated/DecayAnimation;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-wide v3, v3, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    iput-wide v3, v0, Lcom/facebook/react/animated/DecayAnimation;->mFromValue:D

    goto :goto_0

    .line 52
    :cond_0
    iget-object v3, v0, Lcom/facebook/react/animated/DecayAnimation;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-wide v7, v0, Lcom/facebook/react/animated/DecayAnimation;->mFromValue:D

    iput-wide v7, v3, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    .line 54
    :goto_0
    iget-object v3, v0, Lcom/facebook/react/animated/DecayAnimation;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-wide v3, v3, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    iput-wide v3, v0, Lcom/facebook/react/animated/DecayAnimation;->mLastValue:D

    .line 57
    :cond_1
    iget-wide v3, v0, Lcom/facebook/react/animated/DecayAnimation;->mFromValue:D

    iget-wide v7, v0, Lcom/facebook/react/animated/DecayAnimation;->mVelocity:D

    iget-wide v9, v0, Lcom/facebook/react/animated/DecayAnimation;->mDeceleration:D

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v13, v11, v9

    div-double/2addr v7, v13

    sub-double v9, v11, v9

    neg-double v9, v9

    iget-wide v13, v0, Lcom/facebook/react/animated/DecayAnimation;->mStartFrameTimeMillis:J

    sub-long v13, v1, v13

    long-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v13

    .line 59
    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    sub-double/2addr v11, v9

    mul-double v7, v7, v11

    add-double/2addr v3, v7

    .line 61
    .local v3, "value":D
    iget-wide v7, v0, Lcom/facebook/react/animated/DecayAnimation;->mLastValue:D

    sub-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3fb999999999999aL    # 0.1

    cmpg-double v11, v7, v9

    if-gez v11, :cond_4

    .line 63
    iget v7, v0, Lcom/facebook/react/animated/DecayAnimation;->mIterations:I

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eq v7, v8, :cond_3

    iget v8, v0, Lcom/facebook/react/animated/DecayAnimation;->mCurrentLoop:I

    if-ge v8, v7, :cond_2

    goto :goto_1

    .line 68
    :cond_2
    iput-boolean v9, v0, Lcom/facebook/react/animated/DecayAnimation;->mHasFinished:Z

    .line 69
    return-void

    .line 65
    :cond_3
    :goto_1
    iput-wide v5, v0, Lcom/facebook/react/animated/DecayAnimation;->mStartFrameTimeMillis:J

    .line 66
    iget v5, v0, Lcom/facebook/react/animated/DecayAnimation;->mCurrentLoop:I

    add-int/2addr v5, v9

    iput v5, v0, Lcom/facebook/react/animated/DecayAnimation;->mCurrentLoop:I

    .line 73
    :cond_4
    iput-wide v3, v0, Lcom/facebook/react/animated/DecayAnimation;->mLastValue:D

    .line 74
    iget-object v5, v0, Lcom/facebook/react/animated/DecayAnimation;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iput-wide v3, v5, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    .line 75
    return-void
.end method
