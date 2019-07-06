.class public Lcom/facebook/react/uimanager/MeasureSpecAssertions;
.super Ljava/lang/Object;
.source "MeasureSpecAssertions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final assertExplicitMeasureSpec(II)V
    .locals 4
    .param p0, "widthMeasureSpec"    # I
    .param p1, "heightMeasureSpec"    # I

    .line 18
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 19
    .local v0, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 21
    .local v1, "heightMode":I
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 26
    return-void

    .line 22
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "A catalyst view must have an explicit width and height given to it. This should normally happen as part of the standard catalyst UI framework."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
