.class Landroid/support/constraint/motion/TouchResponse$2;
.super Ljava/lang/Object;
.source "TouchResponse.java"

# interfaces
.implements Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/constraint/motion/TouchResponse;->setupTouch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/constraint/motion/TouchResponse;


# direct methods
.method constructor <init>(Landroid/support/constraint/motion/TouchResponse;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/constraint/motion/TouchResponse;

    .line 416
    iput-object p1, p0, Landroid/support/constraint/motion/TouchResponse$2;->this$0:Landroid/support/constraint/motion/TouchResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V
    .locals 0
    .param p1, "v"    # Landroid/support/v4/widget/NestedScrollView;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    .line 421
    return-void
.end method
