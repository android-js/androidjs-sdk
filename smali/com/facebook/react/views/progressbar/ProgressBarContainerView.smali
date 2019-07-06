.class Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
.super Landroid/widget/FrameLayout;
.source "ProgressBarContainerView.java"


# static fields
.field private static final MAX_PROGRESS:I = 0x3e8


# instance fields
.field private mAnimating:Z

.field private mColor:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIndeterminate:Z

.field private mProgress:D

.field private mProgressBar:Landroid/widget/ProgressBar;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mIndeterminate:Z

    .line 29
    iput-boolean v0, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mAnimating:Z

    .line 35
    return-void
.end method

.method private setColor(Landroid/widget/ProgressBar;)V
    .locals 3
    .param p1, "progressBar"    # Landroid/widget/ProgressBar;

    .line 82
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 85
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 88
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-nez v0, :cond_1

    .line 89
    return-void

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mColor:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 97
    :goto_1
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 70
    iget-boolean v1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mIndeterminate:Z

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 71
    iget-object v0, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->setColor(Landroid/widget/ProgressBar;)V

    .line 72
    iget-object v0, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mProgressBar:Landroid/widget/ProgressBar;

    iget-wide v1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mProgress:D

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 73
    iget-boolean v0, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 78
    :goto_0
    return-void

    .line 67
    :cond_1
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v1, "setStyle() not called"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnimating(Z)V
    .locals 0
    .param p1, "animating"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mAnimating:Z

    .line 63
    return-void
.end method

.method public setColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    iput-object p1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mColor:Ljava/lang/Integer;

    .line 51
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 0
    .param p1, "indeterminate"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mIndeterminate:Z

    .line 55
    return-void
.end method

.method public setProgress(D)V
    .locals 0
    .param p1, "progress"    # D

    .line 58
    iput-wide p1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mProgress:D

    .line 59
    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 4
    .param p1, "styleName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-static {p1}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->getStyleFromString(Ljava/lang/String;)I

    move-result v0

    .line 39
    .local v0, "style":I
    invoke-virtual {p0}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->createProgressBar(Landroid/content/Context;I)Landroid/widget/ProgressBar;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 40
    iget-object v1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 41
    invoke-virtual {p0}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->removeAllViews()V

    .line 42
    iget-object v1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->mProgressBar:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
.end method
