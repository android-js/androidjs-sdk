.class Lcom/facebook/react/animated/SpringAnimation;
.super Lcom/facebook/react/animated/AnimationDriver;
.source "SpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/animated/SpringAnimation$PhysicsState;
    }
.end annotation


# static fields
.field private static final MAX_DELTA_TIME_SEC:D = 0.064

.field private static final SOLVER_TIMESTEP_SEC:D = 0.001


# instance fields
.field private mCurrentLoop:I

.field private final mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

.field private mDisplacementFromRestThreshold:D

.field private mEndValue:D

.field private mInitialVelocity:D

.field private mIterations:I

.field private mLastTime:J

.field private mOriginalValue:D

.field private mOvershootClampingEnabled:Z

.field private mRestSpeedThreshold:D

.field private mSpringDamping:D

.field private mSpringMass:D

.field private mSpringStarted:Z

.field private mSpringStiffness:D

.field private mStartValue:D

.field private mTimeAccumulator:D


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 53
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimationDriver;-><init>()V

    .line 41
    new-instance v0, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;-><init>(Lcom/facebook/react/animated/SpringAnimation$1;)V

    iput-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    .line 54
    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    const-string v1, "initialVelocity"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->velocity:D

    .line 55
    invoke-virtual {p0, p1}, Lcom/facebook/react/animated/SpringAnimation;->resetConfig(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 56
    return-void
.end method

.method private advance(D)V
    .locals 33
    .param p1, "realDeltaTime"    # D

    .line 132
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/animated/SpringAnimation;->isAtRest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    return-void

    .line 138
    :cond_0
    move-wide/from16 v1, p1

    .line 139
    .local v1, "adjustedDeltaTime":D
    const-wide v3, 0x3fb0624dd2f1a9fcL    # 0.064

    cmpl-double v5, p1, v3

    if-lez v5, :cond_1

    .line 140
    const-wide v1, 0x3fb0624dd2f1a9fcL    # 0.064

    .line 143
    :cond_1
    iget-wide v3, v0, Lcom/facebook/react/animated/SpringAnimation;->mTimeAccumulator:D

    add-double/2addr v3, v1

    iput-wide v3, v0, Lcom/facebook/react/animated/SpringAnimation;->mTimeAccumulator:D

    .line 145
    iget-wide v3, v0, Lcom/facebook/react/animated/SpringAnimation;->mSpringDamping:D

    .line 146
    .local v3, "c":D
    iget-wide v5, v0, Lcom/facebook/react/animated/SpringAnimation;->mSpringMass:D

    .line 147
    .local v5, "m":D
    iget-wide v7, v0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStiffness:D

    .line 148
    .local v7, "k":D
    iget-wide v9, v0, Lcom/facebook/react/animated/SpringAnimation;->mInitialVelocity:D

    neg-double v9, v9

    .line 150
    .local v9, "v0":D
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v13, v7, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    mul-double v13, v13, v11

    div-double v11, v3, v13

    .line 151
    .local v11, "zeta":D
    div-double v13, v7, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 152
    .local v13, "omega0":D
    mul-double v15, v11, v11

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    sub-double v15, v17, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    mul-double v15, v15, v13

    .line 153
    .local v15, "omega1":D
    move-wide/from16 v19, v1

    .end local v1    # "adjustedDeltaTime":D
    .local v19, "adjustedDeltaTime":D
    iget-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    move-wide/from16 v21, v3

    .end local v3    # "c":D
    .local v21, "c":D
    iget-wide v3, v0, Lcom/facebook/react/animated/SpringAnimation;->mStartValue:D

    sub-double/2addr v1, v3

    .line 157
    .local v1, "x0":D
    iget-wide v3, v0, Lcom/facebook/react/animated/SpringAnimation;->mTimeAccumulator:D

    .line 158
    .local v3, "t":D
    cmpg-double v23, v11, v17

    if-gez v23, :cond_2

    .line 160
    move-wide/from16 v23, v5

    .end local v5    # "m":D
    .local v23, "m":D
    neg-double v5, v11

    mul-double v5, v5, v13

    mul-double v5, v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    .line 161
    .local v5, "envelope":D
    move-wide/from16 v25, v7

    .end local v7    # "k":D
    .local v25, "k":D
    iget-wide v7, v0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    mul-double v17, v11, v13

    mul-double v17, v17, v1

    add-double v17, v9, v17

    div-double v17, v17, v15

    mul-double v27, v15, v3

    .line 164
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v17, v17, v27

    mul-double v27, v15, v3

    .line 165
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    mul-double v27, v27, v1

    add-double v17, v17, v27

    mul-double v17, v17, v5

    sub-double v7, v7, v17

    .line 168
    .local v7, "position":D
    mul-double v17, v11, v13

    mul-double v17, v17, v5

    mul-double v27, v15, v3

    .line 172
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v29, v11, v13

    mul-double v29, v29, v1

    add-double v29, v9, v29

    mul-double v27, v27, v29

    div-double v27, v27, v15

    mul-double v29, v15, v3

    .line 173
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    mul-double v29, v29, v1

    add-double v27, v27, v29

    mul-double v17, v17, v27

    mul-double v27, v15, v3

    .line 175
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    mul-double v29, v11, v13

    mul-double v29, v29, v1

    add-double v29, v9, v29

    mul-double v27, v27, v29

    mul-double v29, v15, v1

    mul-double v31, v15, v3

    .line 176
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    mul-double v29, v29, v31

    sub-double v27, v27, v29

    mul-double v27, v27, v5

    sub-double v17, v17, v27

    .line 177
    .end local v5    # "envelope":D
    .local v17, "velocity":D
    move-wide/from16 v5, v17

    goto :goto_0

    .line 179
    .end local v17    # "velocity":D
    .end local v23    # "m":D
    .end local v25    # "k":D
    .local v5, "m":D
    .local v7, "k":D
    :cond_2
    move-wide/from16 v23, v5

    move-wide/from16 v25, v7

    .end local v5    # "m":D
    .end local v7    # "k":D
    .restart local v23    # "m":D
    .restart local v25    # "k":D
    neg-double v5, v13

    mul-double v5, v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    .line 180
    .local v5, "envelope":D
    iget-wide v7, v0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    mul-double v27, v13, v1

    add-double v27, v9, v27

    mul-double v27, v27, v3

    add-double v27, v1, v27

    mul-double v27, v27, v5

    sub-double v7, v7, v27

    .line 181
    .local v7, "position":D
    mul-double v27, v3, v13

    sub-double v27, v27, v17

    mul-double v27, v27, v9

    mul-double v17, v3, v1

    mul-double v29, v13, v13

    mul-double v17, v17, v29

    add-double v27, v27, v17

    mul-double v17, v5, v27

    move-wide/from16 v5, v17

    .line 185
    .local v5, "velocity":D
    :goto_0
    move-wide/from16 v17, v1

    .end local v1    # "x0":D
    .local v17, "x0":D
    iget-object v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iput-wide v7, v1, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->position:D

    .line 186
    iput-wide v5, v1, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->velocity:D

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/animated/SpringAnimation;->isAtRest()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mOvershootClampingEnabled:Z

    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/animated/SpringAnimation;->isOvershooting()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-wide/from16 v27, v3

    goto :goto_3

    .line 193
    :cond_4
    :goto_1
    iget-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStiffness:D

    move-wide/from16 v27, v3

    .end local v3    # "t":D
    .local v27, "t":D
    const-wide/16 v3, 0x0

    cmpl-double v29, v1, v3

    if-lez v29, :cond_5

    .line 194
    iget-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    iput-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mStartValue:D

    .line 195
    iget-object v3, v0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iput-wide v1, v3, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->position:D

    goto :goto_2

    .line 197
    :cond_5
    iget-object v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iget-wide v1, v1, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->position:D

    iput-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    .line 198
    iget-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    iput-wide v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mStartValue:D

    .line 200
    :goto_2
    iget-object v1, v0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->velocity:D

    .line 202
    :goto_3
    return-void
.end method

.method private getDisplacementDistanceForState(Lcom/facebook/react/animated/SpringAnimation$PhysicsState;)D
    .locals 4
    .param p1, "state"    # Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    .line 108
    iget-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    iget-wide v2, p1, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->position:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private isAtRest()Z
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->velocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mRestSpeedThreshold:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    .line 117
    invoke-direct {p0, v0}, Lcom/facebook/react/animated/SpringAnimation;->getDisplacementDistanceForState(Lcom/facebook/react/animated/SpringAnimation$PhysicsState;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mDisplacementFromRestThreshold:D

    cmpg-double v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStiffness:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0
.end method

.method private isOvershooting()Z
    .locals 5

    .line 126
    iget-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStiffness:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    iget-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mStartValue:D

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->position:D

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mStartValue:D

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->position:D

    iget-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public resetConfig(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 60
    const-string v0, "stiffness"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStiffness:D

    .line 61
    const-string v0, "damping"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringDamping:D

    .line 62
    const-string v0, "mass"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringMass:D

    .line 63
    iget-object v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->velocity:D

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mInitialVelocity:D

    .line 64
    const-string v0, "toValue"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mEndValue:D

    .line 65
    const-string v0, "restSpeedThreshold"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mRestSpeedThreshold:D

    .line 66
    const-string v0, "restDisplacementThreshold"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mDisplacementFromRestThreshold:D

    .line 67
    const-string v0, "overshootClamping"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mOvershootClampingEnabled:Z

    .line 68
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
    iput v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mIterations:I

    .line 69
    iget v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mIterations:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mHasFinished:Z

    .line 70
    iput v1, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentLoop:I

    .line 71
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mTimeAccumulator:D

    .line 72
    iput-boolean v1, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStarted:Z

    .line 73
    return-void
.end method

.method public runAnimationStep(J)V
    .locals 8
    .param p1, "frameTimeNanos"    # J

    .line 77
    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    .line 78
    .local v0, "frameTimeMillis":J
    iget-boolean v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStarted:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 79
    iget v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentLoop:I

    if-nez v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-wide v4, v2, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    iput-wide v4, p0, Lcom/facebook/react/animated/SpringAnimation;->mOriginalValue:D

    .line 81
    iput v3, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentLoop:I

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iget-object v4, p0, Lcom/facebook/react/animated/SpringAnimation;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-wide v4, v4, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    iput-wide v4, v2, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->position:D

    iput-wide v4, p0, Lcom/facebook/react/animated/SpringAnimation;->mStartValue:D

    .line 84
    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mLastTime:J

    .line 85
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/facebook/react/animated/SpringAnimation;->mTimeAccumulator:D

    .line 86
    iput-boolean v3, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStarted:Z

    .line 88
    :cond_1
    iget-wide v4, p0, Lcom/facebook/react/animated/SpringAnimation;->mLastTime:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcom/facebook/react/animated/SpringAnimation;->advance(D)V

    .line 89
    iput-wide v0, p0, Lcom/facebook/react/animated/SpringAnimation;->mLastTime:J

    .line 90
    iget-object v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-object v4, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentState:Lcom/facebook/react/animated/SpringAnimation$PhysicsState;

    iget-wide v4, v4, Lcom/facebook/react/animated/SpringAnimation$PhysicsState;->position:D

    iput-wide v4, v2, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    .line 91
    invoke-direct {p0}, Lcom/facebook/react/animated/SpringAnimation;->isAtRest()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    iget v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mIterations:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    iget v4, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentLoop:I

    if-ge v4, v2, :cond_2

    goto :goto_0

    .line 97
    :cond_2
    iput-boolean v3, p0, Lcom/facebook/react/animated/SpringAnimation;->mHasFinished:Z

    goto :goto_1

    .line 93
    :cond_3
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mSpringStarted:Z

    .line 94
    iget-object v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-wide v4, p0, Lcom/facebook/react/animated/SpringAnimation;->mOriginalValue:D

    iput-wide v4, v2, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    .line 95
    iget v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentLoop:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/facebook/react/animated/SpringAnimation;->mCurrentLoop:I

    .line 100
    :cond_4
    :goto_1
    return-void
.end method
