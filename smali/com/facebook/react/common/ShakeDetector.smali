.class public Lcom/facebook/react/common/ShakeDetector;
.super Ljava/lang/Object;
.source "ShakeDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/common/ShakeDetector$ShakeListener;
    }
.end annotation


# static fields
.field private static final MIN_TIME_BETWEEN_SAMPLES_NS:J

.field private static final REQUIRED_FORCE:F = 13.042845f

.field private static final SHAKING_WINDOW_NS:F


# instance fields
.field private mAccelerationX:F

.field private mAccelerationY:F

.field private mAccelerationZ:F

.field private mLastShakeTimestamp:J

.field private mLastTimestamp:J

.field private mMinNumShakes:I

.field private mNumShakes:I

.field private mSensorManager:Landroid/hardware/SensorManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mShakeListener:Lcom/facebook/react/common/ShakeDetector$ShakeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/react/common/ShakeDetector;->MIN_TIME_BETWEEN_SAMPLES_NS:J

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-float v0, v0

    sput v0, Lcom/facebook/react/common/ShakeDetector;->SHAKING_WINDOW_NS:F

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/common/ShakeDetector$ShakeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/common/ShakeDetector$ShakeListener;

    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/common/ShakeDetector;-><init>(Lcom/facebook/react/common/ShakeDetector$ShakeListener;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/common/ShakeDetector$ShakeListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/facebook/react/common/ShakeDetector$ShakeListener;
    .param p2, "minNumShakes"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/facebook/react/common/ShakeDetector;->mShakeListener:Lcom/facebook/react/common/ShakeDetector$ShakeListener;

    .line 56
    iput p2, p0, Lcom/facebook/react/common/ShakeDetector;->mMinNumShakes:I

    .line 57
    return-void
.end method

.method private atLeastRequiredForce(F)Z
    .locals 2
    .param p1, "a"    # F

    .line 102
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x4150af7e

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeDispatchShake(J)V
    .locals 2
    .param p1, "currentTimestamp"    # J

    .line 145
    iget v0, p0, Lcom/facebook/react/common/ShakeDetector;->mNumShakes:I

    iget v1, p0, Lcom/facebook/react/common/ShakeDetector;->mMinNumShakes:I

    mul-int/lit8 v1, v1, 0x8

    if-lt v0, v1, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/facebook/react/common/ShakeDetector;->reset()V

    .line 147
    iget-object v0, p0, Lcom/facebook/react/common/ShakeDetector;->mShakeListener:Lcom/facebook/react/common/ShakeDetector$ShakeListener;

    invoke-interface {v0}, Lcom/facebook/react/common/ShakeDetector$ShakeListener;->onShake()V

    .line 150
    :cond_0
    iget-wide v0, p0, Lcom/facebook/react/common/ShakeDetector;->mLastShakeTimestamp:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    sget v1, Lcom/facebook/react/common/ShakeDetector;->SHAKING_WINDOW_NS:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/facebook/react/common/ShakeDetector;->reset()V

    .line 153
    :cond_1
    return-void
.end method

.method private recordShake(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .line 110
    iput-wide p1, p0, Lcom/facebook/react/common/ShakeDetector;->mLastShakeTimestamp:J

    .line 111
    iget v0, p0, Lcom/facebook/react/common/ShakeDetector;->mNumShakes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/react/common/ShakeDetector;->mNumShakes:I

    .line 112
    return-void
.end method

.method private reset()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/common/ShakeDetector;->mNumShakes:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/common/ShakeDetector;->mAccelerationX:F

    .line 90
    iput v0, p0, Lcom/facebook/react/common/ShakeDetector;->mAccelerationY:F

    .line 91
    iput v0, p0, Lcom/facebook/react/common/ShakeDetector;->mAccelerationZ:F

    .line 92
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .line 142
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 116
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v2, p0, Lcom/facebook/react/common/ShakeDetector;->mLastTimestamp:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/react/common/ShakeDetector;->MIN_TIME_BETWEEN_SAMPLES_NS:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 121
    .local v0, "ax":F
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 122
    .local v1, "ay":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    const v3, 0x411ce80a

    sub-float/2addr v2, v3

    .line 124
    .local v2, "az":F
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v3, p0, Lcom/facebook/react/common/ShakeDetector;->mLastTimestamp:J

    .line 126
    invoke-direct {p0, v0}, Lcom/facebook/react/common/ShakeDetector;->atLeastRequiredForce(F)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/facebook/react/common/ShakeDetector;->mAccelerationX:F

    mul-float v3, v3, v0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 127
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v3, v4}, Lcom/facebook/react/common/ShakeDetector;->recordShake(J)V

    .line 128
    iput v0, p0, Lcom/facebook/react/common/ShakeDetector;->mAccelerationX:F

    goto :goto_0

    .line 129
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/react/common/ShakeDetector;->atLeastRequiredForce(F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/facebook/react/common/ShakeDetector;->mAccelerationY:F

    mul-float v3, v3, v1

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 130
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v3, v4}, Lcom/facebook/react/common/ShakeDetector;->recordShake(J)V

    .line 131
    iput v1, p0, Lcom/facebook/react/common/ShakeDetector;->mAccelerationY:F

    goto :goto_0

    .line 132
    :cond_2
    invoke-direct {p0, v2}, Lcom/facebook/react/common/ShakeDetector;->atLeastRequiredForce(F)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/facebook/react/common/ShakeDetector;->mAccelerationZ:F

    mul-float v3, v3, v2

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    .line 133
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v3, v4}, Lcom/facebook/react/common/ShakeDetector;->recordShake(J)V

    .line 134
    iput v2, p0, Lcom/facebook/react/common/ShakeDetector;->mAccelerationZ:F

    .line 137
    :cond_3
    :goto_0
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v3, v4}, Lcom/facebook/react/common/ShakeDetector;->maybeDispatchShake(J)V

    .line 138
    return-void
.end method

.method public start(Landroid/hardware/SensorManager;)V
    .locals 3
    .param p1, "manager"    # Landroid/hardware/SensorManager;

    .line 63
    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 65
    .local v0, "accelerometer":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 66
    iput-object p1, p0, Lcom/facebook/react/common/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 67
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/facebook/react/common/ShakeDetector;->mLastTimestamp:J

    .line 68
    iget-object v1, p0, Lcom/facebook/react/common/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 69
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/facebook/react/common/ShakeDetector;->mLastShakeTimestamp:J

    .line 70
    invoke-direct {p0}, Lcom/facebook/react/common/ShakeDetector;->reset()V

    .line 72
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/facebook/react/common/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/common/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 82
    :cond_0
    return-void
.end method
