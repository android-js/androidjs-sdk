.class public Lcom/facebook/react/views/text/ReactBackgroundColorSpan;
.super Landroid/text/style/BackgroundColorSpan;
.source "ReactBackgroundColorSpan.java"

# interfaces
.implements Lcom/facebook/react/views/text/ReactSpan;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "color"    # I

    .line 17
    invoke-direct {p0, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 18
    return-void
.end method
