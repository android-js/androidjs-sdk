.class public Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;
.super Ljava/lang/Object;
.source "DoubleTapReloadRecognizer.java"


# static fields
.field private static final DOUBLE_TAP_DELAY:J = 0xc8L


# instance fields
.field private mDoRefresh:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;->mDoRefresh:Z

    return-void
.end method

.method static synthetic access$002(Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;
    .param p1, "x1"    # Z

    .line 19
    iput-boolean p1, p0, Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;->mDoRefresh:Z

    return p1
.end method


# virtual methods
.method public didDoubleTapR(ILandroid/view/View;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 24
    const/4 v0, 0x0

    const/16 v1, 0x2e

    if-ne p1, v1, :cond_1

    instance-of v1, p2, Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 25
    iget-boolean v1, p0, Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;->mDoRefresh:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 26
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;->mDoRefresh:Z

    .line 27
    return v2

    .line 29
    :cond_0
    iput-boolean v2, p0, Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;->mDoRefresh:Z

    .line 30
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer$1;

    invoke-direct {v2, p0}, Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer$1;-><init>(Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    :cond_1
    return v0
.end method
