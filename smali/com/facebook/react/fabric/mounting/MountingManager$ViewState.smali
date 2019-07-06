.class Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
.super Ljava/lang/Object;
.source "MountingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/fabric/mounting/MountingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewState"
.end annotation


# instance fields
.field public mCurrentLocalData:Lcom/facebook/react/bridge/ReadableMap;

.field public mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

.field public mEventEmitter:Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;

.field final mIsRoot:Z

.field final mReactTag:I

.field final mView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final mViewManager:Lcom/facebook/react/uimanager/ViewManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;)V
    .locals 1
    .param p1, "reactTag"    # I
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "viewManager"    # Lcom/facebook/react/uimanager/ViewManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;Z)V

    .line 325
    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;Lcom/facebook/react/fabric/mounting/MountingManager$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/facebook/react/uimanager/ViewManager;
    .param p4, "x3"    # Lcom/facebook/react/fabric/mounting/MountingManager$1;

    .line 314
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;)V

    return-void
.end method

.method private constructor <init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;Z)V
    .locals 0
    .param p1, "reactTag"    # I
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "viewManager"    # Lcom/facebook/react/uimanager/ViewManager;
    .param p4, "isRoot"    # Z

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mReactTag:I

    .line 329
    iput-object p2, p0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    .line 330
    iput-boolean p4, p0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mIsRoot:Z

    .line 331
    iput-object p3, p0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    .line 332
    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;ZLcom/facebook/react/fabric/mounting/MountingManager$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/facebook/react/uimanager/ViewManager;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/facebook/react/fabric/mounting/MountingManager$1;

    .line 314
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;Z)V

    return-void
.end method
