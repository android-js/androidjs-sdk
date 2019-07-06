.class public Lcom/facebook/react/views/image/ImageLoadEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ImageLoadEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/image/ImageLoadEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final ON_ERROR:I = 0x1

.field public static final ON_LOAD:I = 0x2

.field public static final ON_LOAD_END:I = 0x3

.field public static final ON_LOAD_START:I = 0x4

.field public static final ON_PROGRESS:I = 0x5


# instance fields
.field private final mEventType:I

.field private final mHeight:I

.field private final mImageError:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImageUri:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "eventType"    # I

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/react/views/image/ImageLoadEvent;-><init>(IILjava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "eventType"    # I
    .param p3, "imageUri"    # Ljava/lang/String;

    .line 47
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/views/image/ImageLoadEvent;-><init>(IILjava/lang/String;IILjava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;II)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "eventType"    # I
    .param p3, "imageUri"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 56
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/views/image/ImageLoadEvent;-><init>(IILjava/lang/String;IILjava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "viewId"    # I
    .param p2, "eventType"    # I
    .param p3, "imageUri"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 67
    iput p2, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mEventType:I

    .line 68
    iput-object p3, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mImageUri:Ljava/lang/String;

    .line 69
    iput p4, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mWidth:I

    .line 70
    iput p5, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mHeight:I

    .line 71
    iput-object p6, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mImageError:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(IIZLjava/lang/String;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "eventType"    # I
    .param p3, "error"    # Z
    .param p4, "message"    # Ljava/lang/String;

    .line 43
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/views/image/ImageLoadEvent;-><init>(IILjava/lang/String;IILjava/lang/String;)V

    .line 44
    return-void
.end method

.method public static eventNameForType(I)Ljava/lang/String;
    .locals 3
    .param p0, "eventType"    # I

    .line 75
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 85
    const-string v0, "topProgress"

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid image event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    const-string v0, "topLoadStart"

    return-object v0

    .line 81
    :cond_2
    const-string v0, "topLoadEnd"

    return-object v0

    .line 79
    :cond_3
    const-string v0, "topLoad"

    return-object v0

    .line 77
    :cond_4
    const-string v0, "topError"

    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 5
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "eventData":Lcom/facebook/react/bridge/WritableMap;
    iget-object v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mImageUri:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mEventType:I

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_5

    .line 108
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mImageUri:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 111
    const-string v4, "uri"

    invoke-interface {v0, v4, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1
    iget v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mEventType:I

    if-ne v1, v3, :cond_3

    .line 115
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 116
    .local v1, "source":Lcom/facebook/react/bridge/WritableMap;
    iget v2, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mWidth:I

    int-to-double v2, v2

    const-string v4, "width"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 117
    iget v2, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mHeight:I

    int-to-double v2, v2

    const-string v4, "height"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 118
    iget-object v2, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mImageUri:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 119
    const-string v3, "url"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_2
    const-string v2, "source"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .end local v1    # "source":Lcom/facebook/react/bridge/WritableMap;
    goto :goto_0

    .line 122
    :cond_3
    if-ne v1, v2, :cond_4

    .line 123
    iget-object v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mImageError:Ljava/lang/String;

    const-string v2, "error"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_4
    :goto_0
    nop

    .line 127
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ImageLoadEvent;->getViewTag()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ImageLoadEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 128
    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    .line 100
    iget v0, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mEventType:I

    int-to-short v0, v0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 93
    iget v0, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mEventType:I

    invoke-static {v0}, Lcom/facebook/react/views/image/ImageLoadEvent;->eventNameForType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
