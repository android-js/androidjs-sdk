.class public Lcom/facebook/react/views/text/ReactTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "ReactTextView.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactCompoundView;


# static fields
.field private static final EMPTY_LAYOUT_PARAMS:Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field private mContainsImages:Z

.field private mDefaultGravityHorizontal:I

.field private mDefaultGravityVertical:I

.field private mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

.field private mNumberOfLines:I

.field private mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

.field private mSpanned:Landroid/text/Spannable;

.field private mTextAlign:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/react/views/text/ReactTextView;->EMPTY_LAYOUT_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextAlign:I

    .line 36
    const v0, 0x7fffffff

    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    .line 37
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

    .line 44
    new-instance v0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    .line 45
    nop

    .line 46
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getGravity()I

    move-result v0

    const v1, 0x800007

    and-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mDefaultGravityHorizontal:I

    .line 47
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mDefaultGravityVertical:I

    .line 48
    return-void
.end method


# virtual methods
.method public getSpanned()Landroid/text/Spannable;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mSpanned:Landroid/text/Spannable;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 151
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 153
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 154
    .local v1, "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 155
    .local v4, "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/TextInlineImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->invalidate()V

    .line 154
    .end local v4    # "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 189
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->onAttachedToWindow()V

    .line 190
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 192
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 193
    .local v1, "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 194
    .local v4, "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onAttachedToWindow()V

    .line 193
    .end local v4    # "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .line 165
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->onDetachedFromWindow()V

    .line 166
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 168
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 169
    .local v1, "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 170
    .local v4, "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onDetachedFromWindow()V

    .line 169
    .end local v4    # "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    :cond_0
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 5

    .line 201
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->onFinishTemporaryDetach()V

    .line 202
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 204
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 205
    .local v1, "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 206
    .local v4, "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onFinishTemporaryDetach()V

    .line 205
    .end local v4    # "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    :cond_0
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 5

    .line 177
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->onStartTemporaryDetach()V

    .line 178
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 180
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 181
    .local v1, "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 182
    .local v4, "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onStartTemporaryDetach()V

    .line 181
    .end local v4    # "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    :cond_0
    return-void
.end method

.method public reactTagForTouch(FF)I
    .locals 18
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 85
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getId()I

    move-result v2

    .line 87
    .local v2, "target":I
    move/from16 v3, p1

    float-to-int v4, v3

    .line 88
    .local v4, "x":I
    move/from16 v5, p2

    float-to-int v6, v5

    .line 90
    .local v6, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 91
    .local v7, "layout":Landroid/text/Layout;
    if-nez v7, :cond_0

    .line 94
    return v2

    .line 96
    :cond_0
    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    .line 98
    .local v8, "line":I
    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    float-to-int v9, v0

    .line 99
    .local v9, "lineStartX":I
    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    float-to-int v10, v0

    .line 102
    .local v10, "lineEndX":I
    instance-of v0, v1, Landroid/text/Spanned;

    if-eqz v0, :cond_5

    if-lt v4, v9, :cond_5

    if-gt v4, v10, :cond_5

    .line 103
    move-object v11, v1

    check-cast v11, Landroid/text/Spanned;

    .line 104
    .local v11, "spannedText":Landroid/text/Spanned;
    const/4 v12, -0x1

    .line 106
    .local v12, "index":I
    int-to-float v0, v4

    :try_start_0
    invoke-virtual {v7, v8, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v12    # "index":I
    .local v0, "index":I
    nop

    .line 117
    const-class v12, Lcom/facebook/react/views/text/ReactTagSpan;

    invoke-interface {v11, v0, v0, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/facebook/react/views/text/ReactTagSpan;

    .line 119
    .local v12, "spans":[Lcom/facebook/react/views/text/ReactTagSpan;
    if-eqz v12, :cond_4

    .line 120
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    .line 121
    .local v13, "targetSpanTextLength":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v15, v12

    if-ge v14, v15, :cond_3

    .line 122
    aget-object v15, v12, v14

    invoke-interface {v11, v15}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 123
    .local v15, "spanStart":I
    move-object/from16 v16, v1

    .end local v1    # "text":Ljava/lang/CharSequence;
    .local v16, "text":Ljava/lang/CharSequence;
    aget-object v1, v12, v14

    invoke-interface {v11, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 124
    .local v1, "spanEnd":I
    if-le v1, v0, :cond_1

    move/from16 v17, v0

    .end local v0    # "index":I
    .local v17, "index":I
    sub-int v0, v1, v15

    if-gt v0, v13, :cond_2

    .line 125
    aget-object v0, v12, v14

    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTagSpan;->getReactTag()I

    move-result v2

    .line 126
    sub-int v0, v1, v15

    move v13, v0

    .end local v13    # "targetSpanTextLength":I
    .local v0, "targetSpanTextLength":I
    goto :goto_1

    .line 124
    .end local v17    # "index":I
    .local v0, "index":I
    .restart local v13    # "targetSpanTextLength":I
    :cond_1
    move/from16 v17, v0

    .line 121
    .end local v0    # "index":I
    .end local v1    # "spanEnd":I
    .end local v15    # "spanStart":I
    .restart local v17    # "index":I
    :cond_2
    :goto_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v16

    move/from16 v0, v17

    goto :goto_0

    .end local v16    # "text":Ljava/lang/CharSequence;
    .end local v17    # "index":I
    .restart local v0    # "index":I
    .local v1, "text":Ljava/lang/CharSequence;
    :cond_3
    move/from16 v17, v0

    move-object/from16 v16, v1

    .end local v0    # "index":I
    .end local v1    # "text":Ljava/lang/CharSequence;
    .restart local v16    # "text":Ljava/lang/CharSequence;
    .restart local v17    # "index":I
    goto :goto_2

    .line 119
    .end local v13    # "targetSpanTextLength":I
    .end local v14    # "i":I
    .end local v16    # "text":Ljava/lang/CharSequence;
    .end local v17    # "index":I
    .restart local v0    # "index":I
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_4
    move/from16 v17, v0

    move-object/from16 v16, v1

    .end local v0    # "index":I
    .end local v1    # "text":Ljava/lang/CharSequence;
    .restart local v16    # "text":Ljava/lang/CharSequence;
    .restart local v17    # "index":I
    goto :goto_2

    .line 107
    .end local v16    # "text":Ljava/lang/CharSequence;
    .end local v17    # "index":I
    .restart local v1    # "text":Ljava/lang/CharSequence;
    .local v12, "index":I
    :catch_0
    move-exception v0

    move-object/from16 v16, v1

    move-object v1, v0

    .end local v1    # "text":Ljava/lang/CharSequence;
    .restart local v16    # "text":Ljava/lang/CharSequence;
    move-object v0, v1

    .line 109
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Crash in HorizontalMeasurementProvider: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v13, "ReactNative"

    invoke-static {v13, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return v2

    .line 102
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v11    # "spannedText":Landroid/text/Spanned;
    .end local v12    # "index":I
    .end local v16    # "text":Ljava/lang/CharSequence;
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v16, v1

    .line 132
    .end local v1    # "text":Ljava/lang/CharSequence;
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :goto_2
    return v2
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 249
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBackgroundColor(I)V

    .line 250
    return-void
.end method

.method public setBorderColor(IFF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "color"    # F
    .param p3, "alpha"    # F

    .line 257
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderColor(IFF)V

    .line 258
    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1
    .param p1, "borderRadius"    # F

    .line 261
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(F)V

    .line 262
    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 1
    .param p1, "borderRadius"    # F
    .param p2, "position"    # I

    .line 265
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(FI)V

    .line 266
    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 269
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderStyle(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "width"    # F

    .line 253
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderWidth(IF)V

    .line 254
    return-void
.end method

.method public setEllipsizeLocation(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1, "ellipsizeLocation"    # Landroid/text/TextUtils$TruncateAt;

    .line 239
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

    .line 240
    return-void
.end method

.method setGravityHorizontal(I)V
    .locals 2
    .param p1, "gravityHorizontal"    # I

    .line 217
    if-nez p1, :cond_0

    .line 218
    iget p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mDefaultGravityHorizontal:I

    .line 220
    :cond_0
    nop

    .line 221
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, -0x8

    const v1, -0x800008

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    .line 220
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setGravity(I)V

    .line 223
    return-void
.end method

.method setGravityVertical(I)V
    .locals 1
    .param p1, "gravityVertical"    # I

    .line 226
    if-nez p1, :cond_0

    .line 227
    iget p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mDefaultGravityVertical:I

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setGravity(I)V

    .line 230
    return-void
.end method

.method public setNumberOfLines(I)V
    .locals 2
    .param p1, "numberOfLines"    # I

    .line 233
    if-nez p1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    .line 234
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setSingleLine(Z)V

    .line 235
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setMaxLines(I)V

    .line 236
    return-void
.end method

.method public setSpanned(Landroid/text/Spannable;)V
    .locals 0
    .param p1, "spanned"    # Landroid/text/Spannable;

    .line 273
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mSpanned:Landroid/text/Spannable;

    .line 274
    return-void
.end method

.method public setText(Lcom/facebook/react/views/text/ReactTextUpdate;)V
    .locals 5
    .param p1, "update"    # Lcom/facebook/react/views/text/ReactTextUpdate;

    .line 51
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->containsImages()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    .line 55
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/facebook/react/views/text/ReactTextView;->EMPTY_LAYOUT_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    nop

    .line 60
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingLeft()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 61
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingTop()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 62
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingRight()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 63
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingBottom()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 59
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/react/views/text/ReactTextView;->setPadding(IIII)V

    .line 65
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getTextAlign()I

    move-result v0

    .line 66
    .local v0, "nextTextAlign":I
    iget v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextAlign:I

    if-eq v1, v0, :cond_1

    .line 67
    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextAlign:I

    .line 69
    :cond_1
    iget v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextAlign:I

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setGravityHorizontal(I)V

    .line 70
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getBreakStrategy()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getTextBreakStrategy()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 72
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getTextBreakStrategy()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setBreakStrategy(I)V

    .line 75
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getJustificationMode()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getJustificationMode()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 77
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getJustificationMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setJustificationMode(I)V

    .line 80
    :cond_3
    return-void
.end method

.method public updateView()V
    .locals 2

    .line 243
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

    .line 244
    .local v0, "ellipsizeLocation":Landroid/text/TextUtils$TruncateAt;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 245
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 137
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 139
    .local v0, "text":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 140
    .local v1, "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 141
    .local v4, "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    invoke-virtual {v4}, Lcom/facebook/react/views/text/TextInlineImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 142
    const/4 v2, 0x1

    return v2

    .line 140
    .end local v4    # "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "text":Landroid/text/Spanned;
    .end local v1    # "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
