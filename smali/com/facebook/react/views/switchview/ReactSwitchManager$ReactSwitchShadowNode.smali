.class Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;
.super Lcom/facebook/react/uimanager/LayoutShadowNode;
.source "ReactSwitchManager.java"

# interfaces
.implements Lcom/facebook/yoga/YogaMeasureFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/switchview/ReactSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReactSwitchShadowNode"
.end annotation


# instance fields
.field private mHeight:I

.field private mMeasured:Z

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;-><init>()V

    .line 45
    invoke-direct {p0}, Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;->initMeasureFunction()V

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/views/switchview/ReactSwitchManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/react/views/switchview/ReactSwitchManager$1;

    .line 37
    invoke-direct {p0}, Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;-><init>()V

    return-void
.end method

.method private initMeasureFunction()V
    .locals 0

    .line 49
    invoke-virtual {p0, p0}, Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;->setMeasureFunction(Lcom/facebook/yoga/YogaMeasureFunction;)V

    .line 50
    return-void
.end method


# virtual methods
.method public measure(Lcom/facebook/yoga/YogaNode;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J
    .locals 3
    .param p1, "node"    # Lcom/facebook/yoga/YogaNode;
    .param p2, "width"    # F
    .param p3, "widthMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p4, "height"    # F
    .param p5, "heightMode"    # Lcom/facebook/yoga/YogaMeasureMode;

    .line 59
    iget-boolean v0, p0, Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;->mMeasured:Z

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/facebook/react/views/switchview/ReactSwitch;

    invoke-virtual {p0}, Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/switchview/ReactSwitch;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "reactSwitch":Lcom/facebook/react/views/switchview/ReactSwitch;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/switchview/ReactSwitch;->setShowText(Z)V

    .line 65
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 68
    .local v1, "spec":I
    invoke-virtual {v0, v1, v1}, Lcom/facebook/react/views/switchview/ReactSwitch;->measure(II)V

    .line 69
    invoke-virtual {v0}, Lcom/facebook/react/views/switchview/ReactSwitch;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;->mWidth:I

    .line 70
    invoke-virtual {v0}, Lcom/facebook/react/views/switchview/ReactSwitch;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;->mHeight:I

    .line 71
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;->mMeasured:Z

    .line 74
    .end local v0    # "reactSwitch":Lcom/facebook/react/views/switchview/ReactSwitch;
    .end local v1    # "spec":I
    :cond_0
    iget v0, p0, Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;->mWidth:I

    iget v1, p0, Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;->mHeight:I

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaMeasureOutput;->make(II)J

    move-result-wide v0

    return-wide v0
.end method
