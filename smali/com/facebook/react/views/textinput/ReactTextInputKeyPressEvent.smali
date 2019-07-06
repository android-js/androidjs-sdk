.class public Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ReactTextInputKeyPressEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/textinput/ReactTextInputEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topKeyPress"


# instance fields
.field private mKey:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "viewId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 26
    iput-object p2, p0, Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;->mKey:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private serializeEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 46
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 47
    .local v0, "eventData":Lcom/facebook/react/bridge/WritableMap;
    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;->mKey:Ljava/lang/String;

    const-string v2, "key"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-object v0
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 42
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;->serializeEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 43
    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "topKeyPress"

    return-object v0
.end method
