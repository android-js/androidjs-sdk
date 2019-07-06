.class public Lcom/facebook/yoga/YogaConfig;
.super Ljava/lang/Object;
.source "YogaConfig.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# static fields
.field public static SPACING_TYPE:I


# instance fields
.field private mLogger:Lcom/facebook/yoga/YogaLogger;

.field mNativePointer:J

.field private mYogaNodeCloneFunction:Lcom/facebook/yoga/YogaNodeCloneFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x1

    sput v0, Lcom/facebook/yoga/YogaConfig;->SPACING_TYPE:I

    .line 19
    const-string v0, "yoga"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0}, Lcom/facebook/yoga/YogaConfig;->jni_YGConfigNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    .line 29
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 32
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to allocate native memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final cloneNode(Lcom/facebook/yoga/YogaNode;Lcom/facebook/yoga/YogaNode;I)Lcom/facebook/yoga/YogaNode;
    .locals 1
    .param p1, "oldNode"    # Lcom/facebook/yoga/YogaNode;
    .param p2, "parent"    # Lcom/facebook/yoga/YogaNode;
    .param p3, "childIndex"    # I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/facebook/yoga/YogaConfig;->mYogaNodeCloneFunction:Lcom/facebook/yoga/YogaNodeCloneFunction;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/yoga/YogaNodeCloneFunction;->cloneNode(Lcom/facebook/yoga/YogaNode;Lcom/facebook/yoga/YogaNode;I)Lcom/facebook/yoga/YogaNode;

    move-result-object v0

    return-object v0
.end method

.method private native jni_YGConfigFree(J)V
.end method

.method private native jni_YGConfigNew()J
.end method

.method private native jni_YGConfigSetExperimentalFeatureEnabled(JIZ)V
.end method

.method private native jni_YGConfigSetHasCloneNodeFunc(JZ)V
.end method

.method private native jni_YGConfigSetLogger(JLjava/lang/Object;)V
.end method

.method private native jni_YGConfigSetPointScaleFactor(JF)V
.end method

.method private native jni_YGConfigSetPrintTreeFlag(JZ)V
.end method

.method private native jni_YGConfigSetShouldDiffLayoutWithoutLegacyStretchBehaviour(JZ)V
.end method

.method private native jni_YGConfigSetUseLegacyStretchBehaviour(JZ)V
.end method

.method private native jni_YGConfigSetUseWebDefaults(JZ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/yoga/YogaConfig;->jni_YGConfigFree(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 41
    nop

    .line 42
    return-void

    .line 40
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 41
    throw v0
.end method

.method public getLogger()Lcom/facebook/yoga/YogaLogger;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/facebook/yoga/YogaConfig;->mLogger:Lcom/facebook/yoga/YogaLogger;

    return-object v0
.end method

.method public setExperimentalFeatureEnabled(Lcom/facebook/yoga/YogaExperimentalFeature;Z)V
    .locals 3
    .param p1, "feature"    # Lcom/facebook/yoga/YogaExperimentalFeature;
    .param p2, "enabled"    # Z

    .line 49
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaExperimentalFeature;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/facebook/yoga/YogaConfig;->jni_YGConfigSetExperimentalFeatureEnabled(JIZ)V

    .line 50
    return-void
.end method

.method public setLogger(Lcom/facebook/yoga/YogaLogger;)V
    .locals 2
    .param p1, "logger"    # Lcom/facebook/yoga/YogaLogger;

    .line 93
    iput-object p1, p0, Lcom/facebook/yoga/YogaConfig;->mLogger:Lcom/facebook/yoga/YogaLogger;

    .line 94
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/yoga/YogaConfig;->jni_YGConfigSetLogger(JLjava/lang/Object;)V

    .line 95
    return-void
.end method

.method public setOnCloneNode(Lcom/facebook/yoga/YogaNodeCloneFunction;)V
    .locals 3
    .param p1, "cloneYogaNodeFunction"    # Lcom/facebook/yoga/YogaNodeCloneFunction;

    .line 104
    iput-object p1, p0, Lcom/facebook/yoga/YogaConfig;->mYogaNodeCloneFunction:Lcom/facebook/yoga/YogaNodeCloneFunction;

    .line 105
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/yoga/YogaConfig;->jni_YGConfigSetHasCloneNodeFunc(JZ)V

    .line 106
    return-void
.end method

.method public setPointScaleFactor(F)V
    .locals 2
    .param p1, "pixelsInPoint"    # F

    .line 64
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/yoga/YogaConfig;->jni_YGConfigSetPointScaleFactor(JF)V

    .line 65
    return-void
.end method

.method public setPrintTreeFlag(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 59
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/yoga/YogaConfig;->jni_YGConfigSetPrintTreeFlag(JZ)V

    .line 60
    return-void
.end method

.method public setShouldDiffLayoutWithoutLegacyStretchBehaviour(Z)V
    .locals 2
    .param p1, "shouldDiffLayoutWithoutLegacyStretchBehaviour"    # Z

    .line 87
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/yoga/YogaConfig;->jni_YGConfigSetShouldDiffLayoutWithoutLegacyStretchBehaviour(JZ)V

    .line 89
    return-void
.end method

.method public setUseLegacyStretchBehaviour(Z)V
    .locals 2
    .param p1, "useLegacyStretchBehaviour"    # Z

    .line 75
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/yoga/YogaConfig;->jni_YGConfigSetUseLegacyStretchBehaviour(JZ)V

    .line 76
    return-void
.end method

.method public setUseWebDefaults(Z)V
    .locals 2
    .param p1, "useWebDefaults"    # Z

    .line 54
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/yoga/YogaConfig;->jni_YGConfigSetUseWebDefaults(JZ)V

    .line 55
    return-void
.end method
