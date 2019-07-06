.class public Lcom/facebook/react/uimanager/events/TouchesHelper;
.super Ljava/lang/Object;
.source "TouchesHelper.java"


# static fields
.field public static final CHANGED_TOUCHES_KEY:Ljava/lang/String; = "changedTouches"

.field private static final LOCATION_X_KEY:Ljava/lang/String; = "locationX"

.field private static final LOCATION_Y_KEY:Ljava/lang/String; = "locationY"

.field private static final PAGE_X_KEY:Ljava/lang/String; = "pageX"

.field private static final PAGE_Y_KEY:Ljava/lang/String; = "pageY"

.field private static final POINTER_IDENTIFIER_KEY:Ljava/lang/String; = "identifier"

.field public static final TARGET_KEY:Ljava/lang/String; = "target"

.field private static final TIMESTAMP_KEY:Ljava/lang/String; = "timestamp"

.field public static final TOP_TOUCH_CANCEL_KEY:Ljava/lang/String; = "topTouchCancel"

.field public static final TOP_TOUCH_END_KEY:Ljava/lang/String; = "topTouchEnd"

.field public static final TOUCHES_KEY:Ljava/lang/String; = "touches"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createsPointersArray(ILcom/facebook/react/uimanager/events/TouchEvent;)Lcom/facebook/react/bridge/WritableArray;
    .locals 11
    .param p0, "reactTarget"    # I
    .param p1, "event"    # Lcom/facebook/react/uimanager/events/TouchEvent;

    .line 40
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 41
    .local v0, "touches":Lcom/facebook/react/bridge/WritableArray;
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    .line 50
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getViewX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 51
    .local v2, "targetViewCoordinateX":F
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getViewY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 53
    .local v3, "targetViewCoordinateY":F
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 54
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    .line 57
    .local v5, "touch":Lcom/facebook/react/bridge/WritableMap;
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    float-to-double v6, v6

    const-string v8, "pageX"

    invoke-interface {v5, v8, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 58
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    float-to-double v6, v6

    const-string v8, "pageY"

    invoke-interface {v5, v8, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 61
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v6, v2

    .line 62
    .local v6, "locationX":F
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v7, v3

    .line 63
    .local v7, "locationY":F
    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v8

    float-to-double v8, v8

    const-string v10, "locationX"

    invoke-interface {v5, v10, v8, v9}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 64
    invoke-static {v7}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v8

    float-to-double v8, v8

    const-string v10, "locationY"

    invoke-interface {v5, v10, v8, v9}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 65
    const-string v8, "target"

    invoke-interface {v5, v8, p0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getTimestampMs()J

    move-result-wide v8

    long-to-double v8, v8

    const-string v10, "timestamp"

    invoke-interface {v5, v10, v8, v9}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 67
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    int-to-double v8, v8

    const-string v10, "identifier"

    invoke-interface {v5, v10, v8, v9}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 68
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 53
    .end local v5    # "touch":Lcom/facebook/react/bridge/WritableMap;
    .end local v6    # "locationX":F
    .end local v7    # "locationY":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    .end local v4    # "index":I
    :cond_0
    return-object v0
.end method

.method public static sendTouchEvent(Lcom/facebook/react/uimanager/events/RCTEventEmitter;Lcom/facebook/react/uimanager/events/TouchEventType;ILcom/facebook/react/uimanager/events/TouchEvent;)V
    .locals 6
    .param p0, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;
    .param p1, "type"    # Lcom/facebook/react/uimanager/events/TouchEventType;
    .param p2, "reactTarget"    # I
    .param p3, "touchEvent"    # Lcom/facebook/react/uimanager/events/TouchEvent;

    .line 89
    invoke-static {p2, p3}, Lcom/facebook/react/uimanager/events/TouchesHelper;->createsPointersArray(ILcom/facebook/react/uimanager/events/TouchEvent;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 90
    .local v0, "pointers":Lcom/facebook/react/bridge/WritableArray;
    invoke-virtual {p3}, Lcom/facebook/react/uimanager/events/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    .line 94
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    .line 95
    .local v2, "changedIndices":Lcom/facebook/react/bridge/WritableArray;
    sget-object v3, Lcom/facebook/react/uimanager/events/TouchEventType;->MOVE:Lcom/facebook/react/uimanager/events/TouchEventType;

    if-eq p1, v3, :cond_3

    sget-object v3, Lcom/facebook/react/uimanager/events/TouchEventType;->CANCEL:Lcom/facebook/react/uimanager/events/TouchEventType;

    if-ne p1, v3, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    sget-object v3, Lcom/facebook/react/uimanager/events/TouchEventType;->START:Lcom/facebook/react/uimanager/events/TouchEventType;

    if-eq p1, v3, :cond_2

    sget-object v3, Lcom/facebook/react/uimanager/events/TouchEventType;->END:Lcom/facebook/react/uimanager/events/TouchEventType;

    if-ne p1, v3, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown touch type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto :goto_3

    .line 96
    :cond_3
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 97
    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 105
    .end local v3    # "i":I
    :cond_4
    :goto_3
    nop

    .line 106
    invoke-static {p1}, Lcom/facebook/react/uimanager/events/TouchEventType;->getJSEventName(Lcom/facebook/react/uimanager/events/TouchEventType;)Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-interface {p0, v3, v0, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveTouches(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)V

    .line 109
    return-void
.end method
