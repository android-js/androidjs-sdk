.class public Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;
.super Lcom/facebook/react/views/text/ReactBaseTextShadowNode;
.source "ReactTextInputShadowNode.java"

# interfaces
.implements Lcom/facebook/yoga/YogaMeasureFunction;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
.end annotation


# static fields
.field public static final PROP_PLACEHOLDER:Ljava/lang/String; = "placeholder"
    .annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PROP_TEXT:Ljava/lang/String; = "text"
    .annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mDummyEditText:Landroid/widget/EditText;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLocalData:Lcom/facebook/react/views/textinput/ReactTextInputLocalData;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMostRecentEventCount:I

.field private mPlaceholder:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mText:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mMostRecentEventCount:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mText:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mPlaceholder:Ljava/lang/String;

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mTextBreakStrategy:I

    .line 57
    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->initMeasureFunction()V

    .line 58
    return-void
.end method

.method private initMeasureFunction()V
    .locals 0

    .line 61
    invoke-virtual {p0, p0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setMeasureFunction(Lcom/facebook/yoga/YogaMeasureFunction;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getPlaceholder()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mPlaceholder:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isVirtualAnchor()Z
    .locals 1

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public isYogaLeafNode()Z
    .locals 1

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public measure(Lcom/facebook/yoga/YogaNode;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J
    .locals 3
    .param p1, "node"    # Lcom/facebook/yoga/YogaNode;
    .param p2, "width"    # F
    .param p3, "widthMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p4, "height"    # F
    .param p5, "heightMode"    # Lcom/facebook/yoga/YogaMeasureMode;

    .line 102
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mDummyEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 104
    .local v0, "editText":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mLocalData:Lcom/facebook/react/views/textinput/ReactTextInputLocalData;

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputLocalData;->apply(Landroid/widget/EditText;)V

    goto :goto_0

    .line 107
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveFontSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 109
    iget v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mNumberOfLines:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 110
    iget v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mNumberOfLines:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 113
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 114
    invoke-virtual {v0}, Landroid/widget/EditText;->getBreakStrategy()I

    move-result v1

    iget v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mTextBreakStrategy:I

    if-eq v1, v2, :cond_2

    .line 115
    iget v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mTextBreakStrategy:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBreakStrategy(I)V

    .line 120
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->getPlaceholder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 121
    nop

    .line 122
    invoke-static {p2, p3}, Lcom/facebook/react/views/view/MeasureUtil;->getMeasureSpec(FLcom/facebook/yoga/YogaMeasureMode;)I

    move-result v1

    .line 123
    invoke-static {p4, p5}, Lcom/facebook/react/views/view/MeasureUtil;->getMeasureSpec(FLcom/facebook/yoga/YogaMeasureMode;)I

    move-result v2

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->measure(II)V

    .line 125
    invoke-virtual {v0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/yoga/YogaMeasureOutput;->make(II)J

    move-result-wide v1

    return-wide v1
.end method

.method public onCollectExtraUpdates(Lcom/facebook/react/uimanager/UIViewOperationQueue;)V
    .locals 13
    .param p1, "uiViewOperationQueue"    # Lcom/facebook/react/uimanager/UIViewOperationQueue;

    .line 194
    invoke-super {p0, p1}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->onCollectExtraUpdates(Lcom/facebook/react/uimanager/UIViewOperationQueue;)V

    .line 196
    iget v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mMostRecentEventCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 197
    new-instance v0, Lcom/facebook/react/views/text/ReactTextUpdate;

    .line 199
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->spannedFromShadowNode(Lcom/facebook/react/views/text/ReactBaseTextShadowNode;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    iget v4, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mMostRecentEventCount:I

    iget-boolean v5, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mContainsImages:Z

    const/4 v1, 0x0

    .line 202
    invoke-virtual {p0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->getPadding(I)F

    move-result v6

    const/4 v1, 0x1

    .line 203
    invoke-virtual {p0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->getPadding(I)F

    move-result v7

    const/4 v1, 0x2

    .line 204
    invoke-virtual {p0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->getPadding(I)F

    move-result v8

    const/4 v1, 0x3

    .line 205
    invoke-virtual {p0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->getPadding(I)F

    move-result v9

    iget v10, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mTextAlign:I

    iget v11, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mTextBreakStrategy:I

    iget v12, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mJustificationMode:I

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/facebook/react/views/text/ReactTextUpdate;-><init>(Landroid/text/Spannable;IZFFFFIII)V

    .line 209
    .local v0, "reactTextUpdate":Lcom/facebook/react/views/text/ReactTextUpdate;
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->getReactTag()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueUpdateExtraData(ILjava/lang/Object;)V

    .line 211
    .end local v0    # "reactTextUpdate":Lcom/facebook/react/views/text/ReactTextUpdate;
    :cond_0
    return-void
.end method

.method public setLocalData(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .line 140
    instance-of v0, p1, Lcom/facebook/react/views/textinput/ReactTextInputLocalData;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 141
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/textinput/ReactTextInputLocalData;

    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mLocalData:Lcom/facebook/react/views/textinput/ReactTextInputLocalData;

    .line 144
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->dirty()V

    .line 148
    return-void
.end method

.method public setMostRecentEventCount(I)V
    .locals 0
    .param p1, "mostRecentEventCount"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mostRecentEventCount"
    .end annotation

    .line 152
    iput p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mMostRecentEventCount:I

    .line 153
    return-void
.end method

.method public setPadding(IF)V
    .locals 0
    .param p1, "spacingType"    # I
    .param p2, "padding"    # F

    .line 215
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->setPadding(IF)V

    .line 216
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->markUpdated()V

    .line 217
    return-void
.end method

.method public setPlaceholder(Ljava/lang/String;)V
    .locals 0
    .param p1, "placeholder"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "placeholder"
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mPlaceholder:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->markUpdated()V

    .line 169
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "text"
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mText:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->markUpdated()V

    .line 159
    return-void
.end method

.method public setTextBreakStrategy(Ljava/lang/String;)V
    .locals 3
    .param p1, "textBreakStrategy"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 178
    return-void

    .line 181
    :cond_0
    if-eqz p1, :cond_4

    const-string v0, "simple"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    const-string v0, "highQuality"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mTextBreakStrategy:I

    goto :goto_1

    .line 185
    :cond_2
    const-string v0, "balanced"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mTextBreakStrategy:I

    goto :goto_1

    .line 188
    :cond_3
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid textBreakStrategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_4
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mTextBreakStrategy:I

    .line 190
    :goto_1
    return-void
.end method

.method public setThemedContext(Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 4
    .param p1, "themedContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 66
    invoke-super {p0, p1}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->setThemedContext(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 76
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, "editText":Landroid/widget/EditText;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setDefaultPadding(IF)V

    .line 78
    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setDefaultPadding(IF)V

    .line 79
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setDefaultPadding(IF)V

    .line 80
    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setDefaultPadding(IF)V

    .line 82
    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mDummyEditText:Landroid/widget/EditText;

    .line 85
    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mDummyEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 89
    iget-object v1, p0, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->mDummyEditText:Landroid/widget/EditText;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method
