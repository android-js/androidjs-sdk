.class public Lcom/facebook/react/uimanager/common/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUIManagerType(I)I
    .locals 1
    .param p0, "reactTag"    # I

    .line 24
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 25
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isRootTag(I)Z
    .locals 2
    .param p0, "reactTag"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    rem-int/lit8 v0, p0, 0xa

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
