.class Landroid/support/constraint/motion/MotionScene$1;
.super Ljava/lang/Object;
.source "MotionScene.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/constraint/motion/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/constraint/motion/MotionScene;

.field final synthetic val$easing:Landroid/support/constraint/motion/utils/Easing;


# direct methods
.method constructor <init>(Landroid/support/constraint/motion/MotionScene;Landroid/support/constraint/motion/utils/Easing;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/constraint/motion/MotionScene;

    .line 1398
    iput-object p1, p0, Landroid/support/constraint/motion/MotionScene$1;->this$0:Landroid/support/constraint/motion/MotionScene;

    iput-object p2, p0, Landroid/support/constraint/motion/MotionScene$1;->val$easing:Landroid/support/constraint/motion/utils/Easing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "v"    # F

    .line 1401
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$1;->val$easing:Landroid/support/constraint/motion/utils/Easing;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/motion/utils/Easing;->get(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
