.class public Lcom/facebook/react/views/text/ReactTextViewManager;
.super Lcom/facebook/react/views/text/ReactTextAnchorViewManager;
.source "ReactTextViewManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RCTText"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<",
        "Lcom/facebook/react/views/text/ReactTextView;",
        "Lcom/facebook/react/views/text/ReactTextShadowNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "RCTText"
    .annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/facebook/react/views/text/ReactTextAnchorViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewManager;->createShadowNodeInstance()Lcom/facebook/react/views/text/ReactTextShadowNode;

    move-result-object v0

    return-object v0
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/views/text/ReactTextShadowNode;
    .locals 1

    .line 58
    new-instance v0, Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-direct {v0}, Lcom/facebook/react/views/text/ReactTextShadowNode;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/text/ReactTextViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/text/ReactTextView;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/text/ReactTextView;
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 43
    new-instance v0, Lcom/facebook/react/views/text/ReactTextView;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/text/ReactTextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 104
    const-string v0, "registrationName"

    const-string v1, "onTextLayout"

    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "topTextLayout"

    invoke-static {v1, v0}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "RCTText"

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/react/views/text/ReactTextShadowNode;",
            ">;"
        }
    .end annotation

    .line 63
    const-class v0, Lcom/facebook/react/views/text/ReactTextShadowNode;

    return-object v0
.end method

.method public measure(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/ReadableNativeMap;Lcom/facebook/react/bridge/ReadableNativeMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "localData"    # Lcom/facebook/react/bridge/ReadableNativeMap;
    .param p3, "props"    # Lcom/facebook/react/bridge/ReadableNativeMap;
    .param p4, "width"    # F
    .param p5, "widthMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p6, "height"    # F
    .param p7, "heightMode"    # Lcom/facebook/yoga/YogaMeasureMode;

    .line 116
    invoke-static/range {p1 .. p7}, Lcom/facebook/react/views/text/TextLayoutManager;->measureText(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/ReadableNativeMap;Lcom/facebook/react/bridge/ReadableNativeMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/facebook/react/views/text/ReactTextView;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/text/ReactTextViewManager;->onAfterUpdateTransaction(Lcom/facebook/react/views/text/ReactTextView;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/facebook/react/views/text/ReactTextView;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;

    .line 68
    invoke-super {p0, p1}, Lcom/facebook/react/views/text/ReactTextAnchorViewManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 69
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextView;->updateView()V

    .line 70
    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/facebook/react/views/text/ReactTextView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/text/ReactTextViewManager;->updateExtraData(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/Object;)V

    return-void
.end method

.method public updateExtraData(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/Object;)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "extraData"    # Ljava/lang/Object;

    .line 48
    move-object v0, p2

    check-cast v0, Lcom/facebook/react/views/text/ReactTextUpdate;

    .line 49
    .local v0, "update":Lcom/facebook/react/views/text/ReactTextUpdate;
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextUpdate;->containsImages()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v1

    .line 51
    .local v1, "spannable":Landroid/text/Spannable;
    invoke-static {v1, p1}, Lcom/facebook/react/views/text/TextInlineImageSpan;->possiblyUpdateInlineImageSpans(Landroid/text/Spannable;Landroid/widget/TextView;)V

    .line 53
    .end local v1    # "spannable":Landroid/text/Spannable;
    :cond_0
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setText(Lcom/facebook/react/views/text/ReactTextUpdate;)V

    .line 54
    return-void
.end method

.method public bridge synthetic updateLocalData(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lcom/facebook/react/views/text/ReactTextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/text/ReactTextViewManager;->updateLocalData(Lcom/facebook/react/views/text/ReactTextView;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateLocalData(Lcom/facebook/react/views/text/ReactTextView;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)Ljava/lang/Object;
    .locals 20
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .param p3, "localData"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 74
    const-string v0, "attributedString"

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    .line 76
    .local v0, "attributedString":Lcom/facebook/react/bridge/ReadableMap;
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/views/text/ReactTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/facebook/react/views/text/TextLayoutManager;->getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;)Landroid/text/Spannable;

    move-result-object v2

    .line 78
    .local v2, "spanned":Landroid/text/Spannable;
    move-object/from16 v14, p1

    invoke-virtual {v14, v2}, Lcom/facebook/react/views/text/ReactTextView;->setSpanned(Landroid/text/Spannable;)V

    .line 80
    new-instance v3, Lcom/facebook/react/views/text/TextAttributeProps;

    move-object/from16 v15, p2

    invoke-direct {v3, v15}, Lcom/facebook/react/views/text/TextAttributeProps;-><init>(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    move-object/from16 v16, v3

    .line 83
    .local v16, "textViewProps":Lcom/facebook/react/views/text/TextAttributeProps;
    const/16 v17, 0x1

    .line 86
    .local v17, "textBreakStrategy":I
    const/16 v18, 0x0

    .line 88
    .local v18, "justificationMode":I
    new-instance v19, Lcom/facebook/react/views/text/ReactTextUpdate;

    .line 92
    invoke-virtual/range {v16 .. v16}, Lcom/facebook/react/views/text/TextAttributeProps;->getStartPadding()F

    move-result v7

    .line 93
    invoke-virtual/range {v16 .. v16}, Lcom/facebook/react/views/text/TextAttributeProps;->getTopPadding()F

    move-result v8

    .line 94
    invoke-virtual/range {v16 .. v16}, Lcom/facebook/react/views/text/TextAttributeProps;->getEndPadding()F

    move-result v9

    .line 95
    invoke-virtual/range {v16 .. v16}, Lcom/facebook/react/views/text/TextAttributeProps;->getBottomPadding()F

    move-result v10

    .line 96
    invoke-virtual/range {v16 .. v16}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextAlign()I

    move-result v11

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v3, v19

    move-object v4, v2

    move/from16 v12, v17

    move/from16 v13, v18

    invoke-direct/range {v3 .. v13}, Lcom/facebook/react/views/text/ReactTextUpdate;-><init>(Landroid/text/Spannable;IZFFFFIII)V

    .line 88
    return-object v19
.end method
