.class public abstract Landroid/support/constraint/motion/TransitionAdapter;
.super Ljava/lang/Object;
.source "TransitionAdapter.java"

# interfaces
.implements Landroid/support/constraint/motion/MotionLayout$TransitionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionChange(Landroid/support/constraint/motion/MotionLayout;IIF)V
    .locals 0
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;
    .param p2, "startId"    # I
    .param p3, "endId"    # I
    .param p4, "progress"    # F

    .line 12
    return-void
.end method

.method public onTransitionCompleted(Landroid/support/constraint/motion/MotionLayout;I)V
    .locals 0
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;
    .param p2, "currentId"    # I

    .line 17
    return-void
.end method

.method public onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V
    .locals 0
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;
    .param p2, "startId"    # I
    .param p3, "endId"    # I

    .line 7
    return-void
.end method

.method public onTransitionTrigger(Landroid/support/constraint/motion/MotionLayout;IZF)V
    .locals 0
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;
    .param p2, "triggerId"    # I
    .param p3, "positive"    # Z
    .param p4, "progress"    # F

    .line 22
    return-void
.end method
