.class Lcom/facebook/react/modules/location/LocationModule$LocationOptions;
.super Ljava/lang/Object;
.source "LocationModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/location/LocationModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationOptions"
.end annotation


# instance fields
.field private final distanceFilter:F

.field private final highAccuracy:Z

.field private final maximumAge:D

.field private final timeout:J


# direct methods
.method private constructor <init>(JDZF)V
    .locals 0
    .param p1, "timeout"    # J
    .param p3, "maximumAge"    # D
    .param p5, "highAccuracy"    # Z
    .param p6, "distanceFilter"    # F

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-wide p1, p0, Lcom/facebook/react/modules/location/LocationModule$LocationOptions;->timeout:J

    .line 90
    iput-wide p3, p0, Lcom/facebook/react/modules/location/LocationModule$LocationOptions;->maximumAge:D

    .line 91
    iput-boolean p5, p0, Lcom/facebook/react/modules/location/LocationModule$LocationOptions;->highAccuracy:Z

    .line 92
    iput p6, p0, Lcom/facebook/react/modules/location/LocationModule$LocationOptions;->distanceFilter:F

    .line 93
    return-void
.end method

.method static synthetic access$300(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/modules/location/LocationModule$LocationOptions;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 78
    invoke-static {p0}, Lcom/facebook/react/modules/location/LocationModule$LocationOptions;->fromReactMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/modules/location/LocationModule$LocationOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/react/modules/location/LocationModule$LocationOptions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/modules/location/LocationModule$LocationOptions;

    .line 78
    iget-boolean v0, p0, Lcom/facebook/react/modules/location/LocationModule$LocationOptions;->highAccuracy:Z

    return v0
.end method

.method static synthetic access$500(Lcom/facebook/react/modules/location/LocationModule$LocationOptions;)D
    .locals 2
    .param p0, "x0"    # Lcom/facebook/react/modules/location/LocationModule$LocationOptions;

    .line 78
    iget-wide v0, p0, Lcom/facebook/react/modules/location/LocationModule$LocationOptions;->maximumAge:D

    return-wide v0
.end method

.method static synthetic access$600(Lcom/facebook/react/modules/location/LocationModule$LocationOptions;)J
    .locals 2
    .param p0, "x0"    # Lcom/facebook/react/modules/location/LocationModule$LocationOptions;

    .line 78
    iget-wide v0, p0, Lcom/facebook/react/modules/location/LocationModule$LocationOptions;->timeout:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/facebook/react/modules/location/LocationModule$LocationOptions;)F
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/modules/location/LocationModule$LocationOptions;

    .line 78
    iget v0, p0, Lcom/facebook/react/modules/location/LocationModule$LocationOptions;->distanceFilter:F

    return v0
.end method

.method private static fromReactMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/modules/location/LocationModule$LocationOptions;
    .locals 9
    .param p0, "map"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 97
    nop

    .line 98
    const-string v0, "timeout"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    move-wide v3, v0

    .line 99
    .local v3, "timeout":J
    nop

    .line 100
    const-string v0, "maximumAge"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_1
    move-wide v5, v0

    .line 101
    .local v5, "maximumAge":D
    nop

    .line 102
    const-string v0, "enableHighAccuracy"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 103
    .local v7, "highAccuracy":Z
    :goto_2
    const-string v0, "distanceFilter"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    move v8, v0

    goto :goto_3

    :cond_3
    const/high16 v0, 0x42c80000    # 100.0f

    const/high16 v8, 0x42c80000    # 100.0f

    .line 107
    .local v8, "distanceFilter":F
    :goto_3
    new-instance v0, Lcom/facebook/react/modules/location/LocationModule$LocationOptions;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/facebook/react/modules/location/LocationModule$LocationOptions;-><init>(JDZF)V

    return-object v0
.end method
