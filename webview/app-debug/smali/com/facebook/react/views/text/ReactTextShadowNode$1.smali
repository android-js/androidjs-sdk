.class Lcom/facebook/react/views/text/ReactTextShadowNode$1;
.super Ljava/lang/Object;
.source "ReactTextShadowNode.java"

# interfaces
.implements Lcom/facebook/yoga/YogaMeasureFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/text/ReactTextShadowNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/text/ReactTextShadowNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/views/text/ReactTextShadowNode;

    .line 54
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public measure(Lcom/facebook/yoga/YogaNode;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J
    .locals 20
    .param p1, "node"    # Lcom/facebook/yoga/YogaNode;
    .param p2, "width"    # F
    .param p3, "widthMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p4, "height"    # F
    .param p5, "heightMode"    # Lcom/facebook/yoga/YogaMeasureMode;

    .line 64
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {}, Lcom/facebook/react/views/text/ReactTextShadowNode;->access$000()Landroid/text/TextPaint;

    move-result-object v10

    .line 65
    .local v10, "textPaint":Landroid/text/TextPaint;
    iget-object v2, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget-object v2, v2, Lcom/facebook/react/views/text/ReactTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveFontSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 67
    iget-object v2, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    .line 69
    invoke-static {v2}, Lcom/facebook/react/views/text/ReactTextShadowNode;->access$100(Lcom/facebook/react/views/text/ReactTextShadowNode;)Landroid/text/Spannable;

    move-result-object v2

    .line 68
    const-string v3, "Spannable element has not been prepared in onBeforeLayout"

    invoke-static {v2, v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/text/Spanned;

    .line 71
    .local v11, "text":Landroid/text/Spanned;
    invoke-static {v11, v10}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v12

    .line 72
    .local v12, "boring":Landroid/text/BoringLayout$Metrics;
    if-nez v12, :cond_0

    invoke-static {v11, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x7fc00000    # Float.NaN

    :goto_0
    move v13, v2

    .line 75
    .local v13, "desiredWidth":F
    sget-object v2, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v14, 0x1

    move-object/from16 v15, p3

    if-eq v15, v2, :cond_2

    cmpg-float v2, v1, v4

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    move/from16 v16, v2

    .line 77
    .local v16, "unconstrainedWidth":Z
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 78
    .local v2, "alignment":Landroid/text/Layout$Alignment;
    iget-object v5, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-static {v5}, Lcom/facebook/react/views/text/ReactTextShadowNode;->access$200(Lcom/facebook/react/views/text/ReactTextShadowNode;)I

    move-result v5

    if-eq v5, v14, :cond_5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    const/4 v6, 0x5

    if-eq v5, v6, :cond_3

    move-object v9, v2

    goto :goto_3

    .line 83
    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 84
    move-object v9, v2

    goto :goto_3

    .line 80
    :cond_4
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 81
    move-object v9, v2

    goto :goto_3

    .line 86
    :cond_5
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object v9, v2

    .line 90
    .end local v2    # "alignment":Landroid/text/Layout$Alignment;
    .local v9, "alignment":Landroid/text/Layout$Alignment;
    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v5, 0x17

    if-nez v12, :cond_a

    if-nez v16, :cond_7

    .line 92
    invoke-static {v13}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v6

    if-nez v6, :cond_6

    cmpg-float v6, v13, v1

    if-gtz v6, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v18, v13

    move-object v13, v9

    goto/16 :goto_6

    .line 96
    :cond_7
    :goto_4
    float-to-double v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v8, v6

    .line 97
    .local v8, "hintWidth":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v5, :cond_8

    .line 98
    new-instance v17, Landroid/text/StaticLayout;

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    iget-object v2, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget-boolean v6, v2, Lcom/facebook/react/views/text/ReactTextShadowNode;->mIncludeFontPadding:Z

    move-object/from16 v2, v17

    move-object v3, v11

    move-object v4, v10

    move v5, v8

    move/from16 v19, v6

    move-object v6, v9

    move v14, v8

    .end local v8    # "hintWidth":I
    .local v14, "hintWidth":I
    move/from16 v8, v18

    move/from16 v18, v13

    move-object v13, v9

    .end local v9    # "alignment":Landroid/text/Layout$Alignment;
    .local v13, "alignment":Landroid/text/Layout$Alignment;
    .local v18, "desiredWidth":F
    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .local v2, "layout":Landroid/text/Layout;
    goto :goto_5

    .line 102
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v14    # "hintWidth":I
    .end local v18    # "desiredWidth":F
    .restart local v8    # "hintWidth":I
    .restart local v9    # "alignment":Landroid/text/Layout$Alignment;
    .local v13, "desiredWidth":F
    :cond_8
    move v14, v8

    move/from16 v18, v13

    move-object v13, v9

    .line 103
    .end local v8    # "hintWidth":I
    .end local v9    # "alignment":Landroid/text/Layout$Alignment;
    .local v13, "alignment":Landroid/text/Layout$Alignment;
    .restart local v14    # "hintWidth":I
    .restart local v18    # "desiredWidth":F
    invoke-interface {v11}, Landroid/text/Spanned;->length()I

    move-result v5

    invoke-static {v11, v3, v5, v10, v14}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 104
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 105
    invoke-virtual {v3, v4, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget-boolean v3, v3, Lcom/facebook/react/views/text/ReactTextShadowNode;->mIncludeFontPadding:Z

    .line 106
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget v3, v3, Lcom/facebook/react/views/text/ReactTextShadowNode;->mTextBreakStrategy:I

    .line 107
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 108
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 110
    .local v2, "builder":Landroid/text/StaticLayout$Builder;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_9

    .line 111
    iget-object v3, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget v3, v3, Lcom/facebook/react/views/text/ReactTextShadowNode;->mJustificationMode:I

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    .line 113
    :cond_9
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    .line 116
    .end local v14    # "hintWidth":I
    .local v2, "layout":Landroid/text/Layout;
    :goto_5
    goto :goto_7

    .line 90
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v18    # "desiredWidth":F
    .restart local v9    # "alignment":Landroid/text/Layout$Alignment;
    .local v13, "desiredWidth":F
    :cond_a
    move/from16 v18, v13

    move-object v13, v9

    .line 116
    .end local v9    # "alignment":Landroid/text/Layout$Alignment;
    .local v13, "alignment":Landroid/text/Layout$Alignment;
    .restart local v18    # "desiredWidth":F
    :goto_6
    if-eqz v12, :cond_c

    if-nez v16, :cond_b

    iget v6, v12, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v6, v6

    cmpg-float v6, v6, v1

    if-gtz v6, :cond_c

    .line 119
    :cond_b
    iget v4, v12, Landroid/text/BoringLayout$Metrics;->width:I

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    iget-object v2, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget-boolean v9, v2, Lcom/facebook/react/views/text/ReactTextShadowNode;->mIncludeFontPadding:Z

    .line 120
    move-object v2, v11

    move-object v3, v10

    move-object v5, v13

    move-object v8, v12

    invoke-static/range {v2 .. v9}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    .restart local v2    # "layout":Landroid/text/Layout;
    goto :goto_7

    .line 132
    .end local v2    # "layout":Landroid/text/Layout;
    :cond_c
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v5, :cond_d

    .line 133
    new-instance v14, Landroid/text/StaticLayout;

    float-to-int v5, v1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    iget-object v2, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget-boolean v9, v2, Lcom/facebook/react/views/text/ReactTextShadowNode;->mIncludeFontPadding:Z

    move-object v2, v14

    move-object v3, v11

    move-object v4, v10

    move-object v6, v13

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .restart local v2    # "layout":Landroid/text/Layout;
    goto :goto_7

    .line 137
    .end local v2    # "layout":Landroid/text/Layout;
    :cond_d
    nop

    .line 138
    invoke-interface {v11}, Landroid/text/Spanned;->length()I

    move-result v5

    float-to-int v6, v1

    invoke-static {v11, v3, v5, v10, v6}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 139
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 140
    invoke-virtual {v3, v4, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget-boolean v3, v3, Lcom/facebook/react/views/text/ReactTextShadowNode;->mIncludeFontPadding:Z

    .line 141
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget v3, v3, Lcom/facebook/react/views/text/ReactTextShadowNode;->mTextBreakStrategy:I

    .line 142
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 143
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    .line 148
    .restart local v2    # "layout":Landroid/text/Layout;
    :goto_7
    iget-object v3, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-static {v3}, Lcom/facebook/react/views/text/ReactTextShadowNode;->access$300(Lcom/facebook/react/views/text/ReactTextShadowNode;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 149
    nop

    .line 151
    invoke-static {}, Lcom/facebook/react/views/text/ReactTextShadowNode;->access$000()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-virtual {v4}, Lcom/facebook/react/views/text/ReactTextShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v4

    .line 150
    invoke-static {v11, v2, v3, v4}, Lcom/facebook/react/views/text/FontMetricsUtil;->getFontMetrics(Ljava/lang/CharSequence;Landroid/text/Layout;Landroid/text/TextPaint;Landroid/content/Context;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    .line 152
    .local v3, "lines":Lcom/facebook/react/bridge/WritableArray;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 153
    .local v4, "event":Lcom/facebook/react/bridge/WritableMap;
    const-string v5, "lines"

    invoke-interface {v4, v5, v3}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 154
    iget-object v5, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-virtual {v5}, Lcom/facebook/react/views/text/ReactTextShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v5

    const-class v6, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 155
    invoke-virtual {v5, v6}, Lcom/facebook/react/uimanager/ThemedReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iget-object v6, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    .line 156
    invoke-virtual {v6}, Lcom/facebook/react/views/text/ReactTextShadowNode;->getReactTag()I

    move-result v6

    const-string v7, "topTextLayout"

    invoke-interface {v5, v6, v7, v4}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 159
    .end local v3    # "lines":Lcom/facebook/react/bridge/WritableArray;
    .end local v4    # "event":Lcom/facebook/react/bridge/WritableMap;
    :cond_e
    iget-object v3, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget v3, v3, Lcom/facebook/react/views/text/ReactTextShadowNode;->mNumberOfLines:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_f

    iget-object v3, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget v3, v3, Lcom/facebook/react/views/text/ReactTextShadowNode;->mNumberOfLines:I

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 160
    nop

    .line 161
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v3

    iget-object v4, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget v4, v4, Lcom/facebook/react/views/text/ReactTextShadowNode;->mNumberOfLines:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    .line 160
    invoke-static {v3, v4}, Lcom/facebook/yoga/YogaMeasureOutput;->make(II)J

    move-result-wide v3

    return-wide v3

    .line 163
    :cond_f
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/facebook/yoga/YogaMeasureOutput;->make(II)J

    move-result-wide v3

    return-wide v3
.end method
