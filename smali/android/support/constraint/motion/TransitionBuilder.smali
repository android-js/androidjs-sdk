.class public Landroid/support/constraint/motion/TransitionBuilder;
.super Ljava/lang/Object;
.source "TransitionBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionBuilder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTransition(Landroid/support/constraint/motion/MotionScene;IILandroid/support/constraint/ConstraintSet;ILandroid/support/constraint/ConstraintSet;)Landroid/support/constraint/motion/MotionScene$Transition;
    .locals 1

    .line 62
    new-instance v0, Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-direct {v0, p1, p0, p2, p4}, Landroid/support/constraint/motion/MotionScene$Transition;-><init>(ILandroid/support/constraint/motion/MotionScene;II)V

    .line 68
    invoke-static {p0, v0, p3, p5}, Landroid/support/constraint/motion/TransitionBuilder;->updateConstraintSetInMotionScene(Landroid/support/constraint/motion/MotionScene;Landroid/support/constraint/motion/MotionScene$Transition;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    return-object v0
.end method

.method private static updateConstraintSetInMotionScene(Landroid/support/constraint/motion/MotionScene;Landroid/support/constraint/motion/MotionScene$Transition;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V
    .locals 1

    .line 80
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v0

    .line 81
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getEndConstraintSetId()I

    move-result p1

    .line 83
    invoke-virtual {p0, v0, p2}, Landroid/support/constraint/motion/MotionScene;->setConstraintSet(ILandroid/support/constraint/ConstraintSet;)V

    .line 84
    invoke-virtual {p0, p1, p3}, Landroid/support/constraint/motion/MotionScene;->setConstraintSet(ILandroid/support/constraint/ConstraintSet;)V

    return-void
.end method

.method public static validate(Landroid/support/constraint/motion/MotionLayout;)V
    .locals 1

    .line 35
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 40
    invoke-virtual {v0, p0}, Landroid/support/constraint/motion/MotionScene;->validateLayout(Landroid/support/constraint/motion/MotionLayout;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 44
    iget-object p0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid motion layout. Motion Scene doesn\'t have any transition."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "MotionLayout doesn\'t have the right motion scene."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid motion layout. Layout missing Motion Scene."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
