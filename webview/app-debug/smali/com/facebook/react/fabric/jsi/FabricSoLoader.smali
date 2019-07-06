.class public Lcom/facebook/react/fabric/jsi/FabricSoLoader;
.super Ljava/lang/Object;
.source "FabricSoLoader.java"


# static fields
.field private static sDidInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/react/fabric/jsi/FabricSoLoader;->sDidInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static staticInit()V
    .locals 3

    .line 20
    sget-boolean v0, Lcom/facebook/react/fabric/jsi/FabricSoLoader;->sDidInit:Z

    if-eqz v0, :cond_0

    .line 21
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/react/fabric/jsi/FabricSoLoader;->sDidInit:Z

    .line 25
    const-wide/16 v0, 0x0

    const-string v2, "FabricSoLoader.staticInit::load:fabricjni"

    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 27
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->LOAD_REACT_NATIVE_SO_FILE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 28
    const-string v2, "fabricjni"

    invoke-static {v2}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 29
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->LOAD_REACT_NATIVE_SO_FILE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 30
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 31
    return-void
.end method
