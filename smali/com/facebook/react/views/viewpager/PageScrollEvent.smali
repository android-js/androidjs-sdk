.class Lcom/facebook/react/views/viewpager/PageScrollEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "PageScrollEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/viewpager/PageScrollEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topPageScroll"


# instance fields
.field private final mOffset:F

.field private final mPosition:I


# direct methods
.method protected constructor <init>(IIF)V
    .locals 1
    .param p1, "viewTag"    # I
    .param p2, "position"    # I
    .param p3, "offset"    # F

    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 34
    iput p2, p0, Lcom/facebook/react/views/viewpager/PageScrollEvent;->mPosition:I

    .line 37
    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/facebook/react/views/viewpager/PageScrollEvent;->mOffset:F

    .line 39
    return-void
.end method

.method private serializeEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 52
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 53
    .local v0, "eventData":Lcom/facebook/react/bridge/WritableMap;
    iget v1, p0, Lcom/facebook/react/views/viewpager/PageScrollEvent;->mPosition:I

    const-string v2, "position"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 54
    iget v1, p0, Lcom/facebook/react/views/viewpager/PageScrollEvent;->mOffset:F

    float-to-double v1, v1

    const-string v3, "offset"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 55
    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 48
    invoke-virtual {p0}, Lcom/facebook/react/views/viewpager/PageScrollEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/viewpager/PageScrollEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/react/views/viewpager/PageScrollEvent;->serializeEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 49
    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "topPageScroll"

    return-object v0
.end method
