.class public Lcom/facebook/react/uimanager/events/ContentSizeChangeEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ContentSizeChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/uimanager/events/ContentSizeChangeEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topContentSizeChange"


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "viewTag"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 24
    iput p2, p0, Lcom/facebook/react/uimanager/events/ContentSizeChangeEvent;->mWidth:I

    .line 25
    iput p3, p0, Lcom/facebook/react/uimanager/events/ContentSizeChangeEvent;->mHeight:I

    .line 26
    return-void
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 4
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 35
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 36
    .local v0, "data":Lcom/facebook/react/bridge/WritableMap;
    iget v1, p0, Lcom/facebook/react/uimanager/events/ContentSizeChangeEvent;->mWidth:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "width"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 37
    iget v1, p0, Lcom/facebook/react/uimanager/events/ContentSizeChangeEvent;->mHeight:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "height"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 38
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/ContentSizeChangeEvent;->getViewTag()I

    move-result v1

    const-string v2, "topContentSizeChange"

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 39
    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "topContentSizeChange"

    return-object v0
.end method
