.class public Lcom/facebook/react/views/text/FontMetricsUtil;
.super Ljava/lang/Object;
.source "FontMetricsUtil.java"


# static fields
.field private static final AMPLIFICATION_FACTOR:F = 100.0f

.field private static final CAP_HEIGHT_MEASUREMENT_TEXT:Ljava/lang/String; = "T"

.field private static final X_HEIGHT_MEASUREMENT_TEXT:Ljava/lang/String; = "x"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontMetrics(Ljava/lang/CharSequence;Landroid/text/Layout;Landroid/text/TextPaint;Landroid/content/Context;)Lcom/facebook/react/bridge/WritableArray;
    .locals 17
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "context"    # Landroid/content/Context;

    .line 26
    move-object/from16 v0, p1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 27
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    .line 31
    .local v2, "lines":Lcom/facebook/react/bridge/WritableArray;
    new-instance v3, Landroid/text/TextPaint;

    move-object/from16 v4, p2

    invoke-direct {v3, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 32
    .local v3, "paintCopy":Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 33
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 34
    .local v5, "capHeightBounds":Landroid/graphics/Rect;
    const-string v7, "T"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9, v8, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 35
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v8

    float-to-double v7, v7

    .line 36
    .local v7, "capHeight":D
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 37
    .local v10, "xHeightBounds":Landroid/graphics/Rect;
    const-string v11, "x"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v3, v11, v9, v12, v10}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 38
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    iget v6, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v9, v6

    float-to-double v12, v9

    .line 39
    .local v12, "xHeight":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 40
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 41
    .local v9, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v6, v9}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 42
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v14

    .line 43
    .local v14, "line":Lcom/facebook/react/bridge/WritableMap;
    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v15

    move-object/from16 v16, v3

    .end local v3    # "paintCopy":Landroid/text/TextPaint;
    .local v16, "paintCopy":Landroid/text/TextPaint;
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v15, v3

    float-to-double v3, v15

    invoke-interface {v14, v11, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 44
    iget v3, v9, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-string v15, "y"

    invoke-interface {v14, v15, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 45
    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-string v15, "width"

    invoke-interface {v14, v15, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 46
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-string v15, "height"

    invoke-interface {v14, v15, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 47
    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-string v15, "descender"

    invoke-interface {v14, v15, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 48
    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-string v15, "ascender"

    invoke-interface {v14, v15, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 49
    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-string v15, "baseline"

    invoke-interface {v14, v15, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 50
    const-string v3, "capHeight"

    invoke-interface {v14, v3, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 51
    const-string v3, "xHeight"

    invoke-interface {v14, v3, v12, v13}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 52
    nop

    .line 53
    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    move-object/from16 v15, p0

    invoke-interface {v15, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    const-string v4, "text"

    invoke-interface {v14, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {v2, v14}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 39
    .end local v9    # "bounds":Landroid/graphics/Rect;
    .end local v14    # "line":Lcom/facebook/react/bridge/WritableMap;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, p2

    move-object/from16 v3, v16

    goto/16 :goto_0

    .end local v16    # "paintCopy":Landroid/text/TextPaint;
    .restart local v3    # "paintCopy":Landroid/text/TextPaint;
    :cond_0
    move-object/from16 v15, p0

    move-object/from16 v16, v3

    .line 56
    .end local v3    # "paintCopy":Landroid/text/TextPaint;
    .end local v6    # "i":I
    .restart local v16    # "paintCopy":Landroid/text/TextPaint;
    return-object v2
.end method
