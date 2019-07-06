.class public Lcom/facebook/react/views/text/TextLayoutManager;
.super Ljava/lang/Object;
.source "TextLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;
    }
.end annotation


# static fields
.field private static sSpannableCache:Landroid/util/LruCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSpannableCacheLock:Ljava/lang/Object;

.field private static final sTextPaintInstance:Landroid/text/TextPaint;

.field private static final spannableCacheSize:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Landroid/text/TextPaint;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCacheLock:Ljava/lang/Object;

    .line 48
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildSpannableFromFragment(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableArray;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragments"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "sb"    # Landroid/text/SpannableStringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p3, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_b

    .line 57
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 58
    .local v2, "fragment":Lcom/facebook/react/bridge/ReadableMap;
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 61
    .local v3, "start":I
    new-instance v4, Lcom/facebook/react/views/text/TextAttributeProps;

    new-instance v5, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    const-string v6, "textAttributes"

    invoke-interface {v2, v6}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-direct {v4, v5}, Lcom/facebook/react/views/text/TextAttributeProps;-><init>(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 63
    .local v4, "textAttributes":Lcom/facebook/react/views/text/TextAttributeProps;
    nop

    .line 64
    const-string v5, "string"

    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    .line 63
    invoke-static {v5, v6}, Lcom/facebook/react/views/text/TextTransform;->apply(Ljava/lang/String;Lcom/facebook/react/views/text/TextTransform;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 86
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 87
    .local v5, "end":I
    if-lt v5, v3, :cond_a

    .line 88
    iget-boolean v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    if-eqz v6, :cond_0

    .line 89
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/ReactForegroundColorSpan;

    iget v8, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mColor:I

    invoke-direct {v7, v8}, Lcom/facebook/react/views/text/ReactForegroundColorSpan;-><init>(I)V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    iget-boolean v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    if-eqz v6, :cond_1

    .line 92
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/ReactBackgroundColorSpan;

    iget v8, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mBackgroundColor:I

    invoke-direct {v7, v8}, Lcom/facebook/react/views/text/ReactBackgroundColorSpan;-><init>(I)V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_2

    .line 97
    iget v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacing:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_2

    .line 98
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/CustomLetterSpacingSpan;

    iget v8, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacing:F

    invoke-direct {v7, v8}, Lcom/facebook/react/views/text/CustomLetterSpacingSpan;-><init>(F)V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_2
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/ReactAbsoluteSizeSpan;

    iget v8, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    invoke-direct {v7, v8}, Lcom/facebook/react/views/text/ReactAbsoluteSizeSpan;-><init>(I)V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    iget v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    if-ne v6, v7, :cond_3

    iget-object v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 110
    :cond_3
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/CustomStyleSpan;

    iget v8, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    iget v9, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    iget-object v10, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/facebook/react/views/text/CustomStyleSpan;-><init>(IILjava/lang/String;Landroid/content/res/AssetManager;)V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    .line 110
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_4
    iget-boolean v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    if-eqz v6, :cond_5

    .line 121
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/ReactUnderlineSpan;

    invoke-direct {v7}, Lcom/facebook/react/views/text/ReactUnderlineSpan;-><init>()V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_5
    iget-boolean v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    if-eqz v6, :cond_6

    .line 124
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/ReactStrikethroughSpan;

    invoke-direct {v7}, Lcom/facebook/react/views/text/ReactStrikethroughSpan;-><init>()V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_6
    iget v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    iget v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_8

    .line 127
    :cond_7
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/ShadowStyleSpan;

    iget v8, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    iget v9, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    iget v10, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    iget v11, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/facebook/react/views/text/ShadowStyleSpan;-><init>(FFFI)V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_8
    invoke-virtual {v4}, Lcom/facebook/react/views/text/TextAttributeProps;->getEffectiveLineHeight()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_9

    .line 138
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/CustomLineHeightSpan;

    .line 140
    invoke-virtual {v4}, Lcom/facebook/react/views/text/TextAttributeProps;->getEffectiveLineHeight()F

    move-result v8

    invoke-direct {v7, v8}, Lcom/facebook/react/views/text/CustomLineHeightSpan;-><init>(F)V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    .line 138
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_9
    const-string v6, "reactTag"

    invoke-interface {v2, v6}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 144
    .local v6, "reactTag":I
    new-instance v7, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v8, Lcom/facebook/react/views/text/ReactTagSpan;

    invoke-direct {v8, v6}, Lcom/facebook/react/views/text/ReactTagSpan;-><init>(I)V

    invoke-direct {v7, v3, v5, v8}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v2    # "fragment":Lcom/facebook/react/bridge/ReadableMap;
    .end local v3    # "start":I
    .end local v4    # "textAttributes":Lcom/facebook/react/views/text/TextAttributeProps;
    .end local v5    # "end":I
    .end local v6    # "reactTag":I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 147
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_b
    return-void
.end method

.method private static createSpannableFromAttributedString(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;)Landroid/text/Spannable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributedString"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 174
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 179
    .local v0, "sb":Landroid/text/SpannableStringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;>;"
    const-string v2, "fragments"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    invoke-static {p0, v2, v0, v1}, Lcom/facebook/react/views/text/TextLayoutManager;->buildSpannableFromFragment(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableArray;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, "priority":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    .line 202
    .local v4, "op":Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;
    invoke-virtual {v4, v0, v2}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;->execute(Landroid/text/SpannableStringBuilder;I)V

    .line 203
    nop

    .end local v4    # "op":Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;
    add-int/lit8 v2, v2, 0x1

    .line 204
    goto :goto_0

    .line 206
    :cond_0
    return-object v0
.end method

.method protected static getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;)Landroid/text/Spannable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributedString"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "attributedStringPayload":Ljava/lang/String;
    sget-object v1, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    sget-object v2, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 158
    .local v2, "preparedSpannableText":Landroid/text/Spannable;
    if-eqz v2, :cond_0

    .line 159
    monitor-exit v1

    return-object v2

    .line 161
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    invoke-static {p0, p1}, Lcom/facebook/react/views/text/TextLayoutManager;->createSpannableFromAttributedString(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;)Landroid/text/Spannable;

    move-result-object v2

    .line 164
    sget-object v3, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 165
    :try_start_1
    sget-object v1, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    monitor-exit v3

    .line 167
    return-object v2

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 161
    .end local v2    # "preparedSpannableText":Landroid/text/Spannable;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public static measureText(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/ReadableNativeMap;Lcom/facebook/react/bridge/ReadableNativeMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J
    .locals 20
    .param p0, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p1, "attributedString"    # Lcom/facebook/react/bridge/ReadableNativeMap;
    .param p2, "paragraphAttributes"    # Lcom/facebook/react/bridge/ReadableNativeMap;
    .param p3, "width"    # F
    .param p4, "widthYogaMeasureMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p5, "height"    # F
    .param p6, "heightYogaMeasureMode"    # Lcom/facebook/yoga/YogaMeasureMode;

    .line 219
    move-object/from16 v0, p2

    move/from16 v1, p3

    sget-object v10, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Landroid/text/TextPaint;

    .line 220
    .local v10, "textPaint":Landroid/text/TextPaint;
    invoke-static/range {p0 .. p1}, Lcom/facebook/react/views/text/TextLayoutManager;->getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;)Landroid/text/Spannable;

    move-result-object v11

    .line 223
    .local v11, "preparedSpannableText":Landroid/text/Spannable;
    const/4 v12, 0x1

    .line 224
    .local v12, "textBreakStrategy":I
    const/4 v13, 0x1

    .line 226
    .local v13, "includeFontPadding":Z
    if-eqz v11, :cond_c

    .line 229
    move-object v14, v11

    .line 230
    .local v14, "text":Landroid/text/Spanned;
    invoke-static {v14, v10}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v15

    .line 231
    .local v15, "boring":Landroid/text/BoringLayout$Metrics;
    if-nez v15, :cond_0

    .line 232
    invoke-static {v14, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x7fc00000    # Float.NaN

    :goto_0
    move v9, v2

    .line 235
    .local v9, "desiredWidth":F
    sget-object v2, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v8, p4

    if-eq v8, v2, :cond_2

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

    .line 238
    .local v16, "unconstrainedWidth":Z
    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v6, 0x17

    if-nez v15, :cond_6

    if-nez v16, :cond_4

    .line 240
    invoke-static {v9}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_3

    cmpg-float v7, v9, v1

    if-gtz v7, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v18, v9

    goto :goto_5

    .line 244
    :cond_4
    :goto_3
    float-to-double v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v5, v4

    .line 245
    .local v5, "hintWidth":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v6, :cond_5

    .line 246
    new-instance v17, Landroid/text/StaticLayout;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    move-object/from16 v2, v17

    move-object v3, v14

    move-object v4, v10

    move/from16 v19, v5

    .end local v5    # "hintWidth":I
    .local v19, "hintWidth":I
    move/from16 v8, v18

    move/from16 v18, v9

    .end local v9    # "desiredWidth":F
    .local v18, "desiredWidth":F
    move v9, v13

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .local v2, "layout":Landroid/text/Layout;
    goto :goto_4

    .line 255
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v18    # "desiredWidth":F
    .end local v19    # "hintWidth":I
    .restart local v5    # "hintWidth":I
    .restart local v9    # "desiredWidth":F
    :cond_5
    move/from16 v19, v5

    move/from16 v18, v9

    .end local v5    # "hintWidth":I
    .end local v9    # "desiredWidth":F
    .restart local v18    # "desiredWidth":F
    .restart local v19    # "hintWidth":I
    invoke-interface {v14}, Landroid/text/Spanned;->length()I

    move-result v4

    .end local v19    # "hintWidth":I
    .restart local v5    # "hintWidth":I
    invoke-static {v14, v3, v4, v10, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 256
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 257
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 258
    invoke-virtual {v2, v13}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 259
    invoke-virtual {v2, v12}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 260
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 261
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    .line 264
    .end local v5    # "hintWidth":I
    .restart local v2    # "layout":Landroid/text/Layout;
    :goto_4
    goto :goto_6

    .line 238
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v18    # "desiredWidth":F
    .restart local v9    # "desiredWidth":F
    :cond_6
    move/from16 v18, v9

    .line 264
    .end local v9    # "desiredWidth":F
    .restart local v18    # "desiredWidth":F
    :goto_5
    if-eqz v15, :cond_8

    if-nez v16, :cond_7

    iget v4, v15, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v4, v4

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_8

    .line 267
    :cond_7
    iget v4, v15, Landroid/text/BoringLayout$Metrics;->width:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v2, v14

    move-object v3, v10

    move-object v8, v15

    move v9, v13

    invoke-static/range {v2 .. v9}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    .restart local v2    # "layout":Landroid/text/Layout;
    goto :goto_6

    .line 279
    .end local v2    # "layout":Landroid/text/Layout;
    :cond_8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v6, :cond_9

    .line 280
    new-instance v17, Landroid/text/StaticLayout;

    float-to-int v5, v1

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object/from16 v2, v17

    move-object v3, v14

    move-object v4, v10

    move v9, v13

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .restart local v2    # "layout":Landroid/text/Layout;
    goto :goto_6

    .line 289
    .end local v2    # "layout":Landroid/text/Layout;
    :cond_9
    invoke-interface {v14}, Landroid/text/Spanned;->length()I

    move-result v4

    float-to-int v5, v1

    invoke-static {v14, v3, v4, v10, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 290
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 291
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 292
    invoke-virtual {v2, v13}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 293
    invoke-virtual {v2, v12}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 294
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 295
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    .line 299
    .restart local v2    # "layout":Landroid/text/Layout;
    :goto_6
    nop

    .line 300
    const-string v3, "maximumNumberOfLines"

    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/ReadableNativeMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_a

    .line 301
    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/ReadableNativeMap;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_7

    :cond_a
    const/4 v3, -0x1

    .line 304
    .local v3, "maximumNumberOfLines":I
    :goto_7
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v1, v4

    .line 305
    .end local p3    # "width":F
    .local v1, "width":F
    if-eq v3, v5, :cond_b

    if-eqz v3, :cond_b

    .line 307
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 308
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    int-to-float v4, v4

    .end local p5    # "height":F
    .local v4, "height":F
    goto :goto_8

    .line 310
    .end local v4    # "height":F
    .restart local p5    # "height":F
    :cond_b
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 313
    .end local p5    # "height":F
    .restart local v4    # "height":F
    :goto_8
    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toSPFromPixel(F)F

    move-result v5

    invoke-static {v4}, Lcom/facebook/react/uimanager/PixelUtil;->toSPFromPixel(F)F

    move-result v6

    invoke-static {v5, v6}, Lcom/facebook/yoga/YogaMeasureOutput;->make(FF)J

    move-result-wide v5

    return-wide v5

    .line 227
    .end local v1    # "width":F
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "maximumNumberOfLines":I
    .end local v4    # "height":F
    .end local v14    # "text":Landroid/text/Spanned;
    .end local v15    # "boring":Landroid/text/BoringLayout$Metrics;
    .end local v16    # "unconstrainedWidth":Z
    .end local v18    # "desiredWidth":F
    .restart local p3    # "width":F
    .restart local p5    # "height":F
    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Spannable element has not been prepared in onBeforeLayout"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
