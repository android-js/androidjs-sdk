.class Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;
.super Lcom/facebook/react/uimanager/LayoutShadowNode;
.source "ReactSliderManager.java"

# interfaces
.implements Lcom/facebook/yoga/YogaMeasureFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/slider/ReactSliderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReactSliderShadowNode"
.end annotation


# instance fields
.field private mHeight:I

.field private mMeasured:Z

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;-><init>()V

    .line 51
    invoke-direct {p0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->initMeasureFunction()V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/views/slider/ReactSliderManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/react/views/slider/ReactSliderManager$1;

    .line 43
    invoke-direct {p0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;-><init>()V

    return-void
.end method

.method private initMeasureFunction()V
    .locals 0

    .line 55
    invoke-virtual {p0, p0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setMeasureFunction(Lcom/facebook/yoga/YogaMeasureFunction;)V

    .line 56
    return-void
.end method


# virtual methods
.method public measure(Lcom/facebook/yoga/YogaNode;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J
    .locals 4
    .param p1, "node"    # Lcom/facebook/yoga/YogaNode;
    .param p2, "width"    # F
    .param p3, "widthMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p4, "height"    # F
    .param p5, "heightMode"    # Lcom/facebook/yoga/YogaMeasureMode;

    .line 65
    iget-boolean v0, p0, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->mMeasured:Z

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/facebook/react/views/slider/ReactSlider;

    invoke-virtual {p0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x101007b

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/react/views/slider/ReactSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    .local v0, "reactSlider":Landroid/widget/SeekBar;
    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 70
    .local v1, "spec":I
    invoke-virtual {v0, v1, v1}, Landroid/widget/SeekBar;->measure(II)V

    .line 71
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->mWidth:I

    .line 72
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->mHeight:I

    .line 73
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->mMeasured:Z

    .line 76
    .end local v0    # "reactSlider":Landroid/widget/SeekBar;
    .end local v1    # "spec":I
    :cond_0
    iget v0, p0, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->mWidth:I

    iget v1, p0, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->mHeight:I

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaMeasureOutput;->make(II)J

    move-result-wide v0

    return-wide v0
.end method
