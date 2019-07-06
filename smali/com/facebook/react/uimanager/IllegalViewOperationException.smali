.class public Lcom/facebook/react/uimanager/IllegalViewOperationException;
.super Lcom/facebook/react/bridge/JSApplicationCausedNativeException;
.source "IllegalViewOperationException.java"


# instance fields
.field private mView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/View;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 26
    invoke-direct {p0, p1, p3}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    iput-object p2, p0, Lcom/facebook/react/uimanager/IllegalViewOperationException;->mView:Landroid/view/View;

    .line 28
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/facebook/react/uimanager/IllegalViewOperationException;->mView:Landroid/view/View;

    return-object v0
.end method
