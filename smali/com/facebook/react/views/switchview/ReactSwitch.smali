.class Lcom/facebook/react/views/switchview/ReactSwitch;
.super Landroid/support/v7/widget/SwitchCompat;
.source "ReactSwitch.java"


# instance fields
.field private mAllowChange:Z

.field private mTrackColorForFalse:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTrackColorForTrue:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mAllowChange:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForFalse:Ljava/lang/Integer;

    .line 31
    iput-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForTrue:Ljava/lang/Integer;

    .line 32
    return-void
.end method

.method private setTrackColor(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 91
    iget-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForTrue:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForFalse:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 94
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForTrue:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForFalse:Ljava/lang/Integer;

    .line 95
    .local v0, "currentTrackColor":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/switchview/ReactSwitch;->setTrackColor(Ljava/lang/Integer;)V

    .line 97
    .end local v0    # "currentTrackColor":Ljava/lang/Integer;
    :cond_2
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 36
    iget-boolean v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mAllowChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/switchview/ReactSwitch;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mAllowChange:Z

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/react/views/switchview/ReactSwitch;->setTrackColor(Z)V

    .line 41
    :cond_0
    return-void
.end method

.method setColor(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    if-nez p2, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 49
    :goto_0
    return-void
.end method

.method setOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 61
    invoke-virtual {p0}, Lcom/facebook/react/views/switchview/ReactSwitch;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 62
    invoke-super {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 63
    invoke-direct {p0, p1}, Lcom/facebook/react/views/switchview/ReactSwitch;->setTrackColor(Z)V

    .line 65
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mAllowChange:Z

    .line 66
    return-void
.end method

.method public setThumbColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-super {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/facebook/react/views/switchview/ReactSwitch;->setColor(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    .line 57
    return-void
.end method

.method public setTrackColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-super {p0}, Landroid/support/v7/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/facebook/react/views/switchview/ReactSwitch;->setColor(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    .line 53
    return-void
.end method

.method public setTrackColorForFalse(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    iget-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForFalse:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 81
    return-void

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForFalse:Ljava/lang/Integer;

    .line 85
    invoke-virtual {p0}, Lcom/facebook/react/views/switchview/ReactSwitch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForFalse:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/switchview/ReactSwitch;->setTrackColor(Ljava/lang/Integer;)V

    .line 88
    :cond_1
    return-void
.end method

.method public setTrackColorForTrue(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    iget-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForTrue:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForTrue:Ljava/lang/Integer;

    .line 74
    invoke-virtual {p0}, Lcom/facebook/react/views/switchview/ReactSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/facebook/react/views/switchview/ReactSwitch;->mTrackColorForTrue:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/switchview/ReactSwitch;->setTrackColor(Ljava/lang/Integer;)V

    .line 77
    :cond_1
    return-void
.end method
