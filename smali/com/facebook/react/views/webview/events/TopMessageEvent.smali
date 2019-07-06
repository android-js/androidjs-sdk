.class public Lcom/facebook/react/views/webview/events/TopMessageEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "TopMessageEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/webview/events/TopMessageEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topMessage"


# instance fields
.field private final mData:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "viewId"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 25
    iput-object p2, p0, Lcom/facebook/react/views/webview/events/TopMessageEvent;->mData:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 46
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 47
    .local v0, "data":Lcom/facebook/react/bridge/WritableMap;
    iget-object v1, p0, Lcom/facebook/react/views/webview/events/TopMessageEvent;->mData:Ljava/lang/String;

    const-string v2, "data"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/facebook/react/views/webview/events/TopMessageEvent;->getViewTag()I

    move-result v1

    const-string v2, "topMessage"

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 49
    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "topMessage"

    return-object v0
.end method
