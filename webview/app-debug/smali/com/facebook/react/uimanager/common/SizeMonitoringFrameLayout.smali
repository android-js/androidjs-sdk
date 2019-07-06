.class public Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SizeMonitoringFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout$OnSizeChangedListener;
    }
.end annotation


# instance fields
.field private mOnSizeChangedListener:Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout$OnSizeChangedListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 49
    iget-object v0, p0, Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;->mOnSizeChangedListener:Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout$OnSizeChangedListener;->onSizeChanged(IIII)V

    .line 52
    :cond_0
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout$OnSizeChangedListener;)V
    .locals 0
    .param p1, "onSizeChangedListener"    # Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout$OnSizeChangedListener;

    .line 42
    iput-object p1, p0, Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout;->mOnSizeChangedListener:Lcom/facebook/react/uimanager/common/SizeMonitoringFrameLayout$OnSizeChangedListener;

    .line 43
    return-void
.end method
