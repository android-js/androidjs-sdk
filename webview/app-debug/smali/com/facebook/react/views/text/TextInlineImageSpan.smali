.class public abstract Lcom/facebook/react/views/text/TextInlineImageSpan;
.super Landroid/text/style/ReplacementSpan;
.source "TextInlineImageSpan.java"

# interfaces
.implements Lcom/facebook/react/views/text/ReactSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    return-void
.end method

.method public static possiblyUpdateInlineImageSpans(Landroid/text/Spannable;Landroid/widget/TextView;)V
    .locals 4
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "view"    # Landroid/widget/TextView;

    .line 31
    nop

    .line 32
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 33
    .local v0, "spans":[Lcom/facebook/react/views/text/TextInlineImageSpan;
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 34
    .local v3, "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    invoke-virtual {v3}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onAttachedToWindow()V

    .line 35
    invoke-virtual {v3, p1}, Lcom/facebook/react/views/text/TextInlineImageSpan;->setTextView(Landroid/widget/TextView;)V

    .line 33
    .end local v3    # "span":Lcom/facebook/react/views/text/TextInlineImageSpan;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract getDrawable()Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract onAttachedToWindow()V
.end method

.method public abstract onDetachedFromWindow()V
.end method

.method public abstract onFinishTemporaryDetach()V
.end method

.method public abstract onStartTemporaryDetach()V
.end method

.method public abstract setTextView(Landroid/widget/TextView;)V
.end method
