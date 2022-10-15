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
    .param p0, "scene"    # Landroid/support/constraint/motion/MotionScene;
    .param p1, "transitionId"    # I
    .param p2, "startConstraintSetId"    # I
    .param p3, "startConstraintSet"    # Landroid/support/constraint/ConstraintSet;
    .param p4, "endConstraintSetId"    # I
    .param p5, "endConstraintSet"    # Landroid/support/constraint/ConstraintSet;

    .line 62
    new-instance v0, Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-direct {v0, p1, p0, p2, p4}, Landroid/support/constraint/motion/MotionScene$Transition;-><init>(ILandroid/support/constraint/motion/MotionScene;II)V

    .line 68
    .local v0, "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-static {p0, v0, p3, p5}, Landroid/support/constraint/motion/TransitionBuilder;->updateConstraintSetInMotionScene(Landroid/support/constraint/motion/MotionScene;Landroid/support/constraint/motion/MotionScene$Transition;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 69
    return-object v0
.end method

.method private static updateConstraintSetInMotionScene(Landroid/support/constraint/motion/MotionScene;Landroid/support/constraint/motion/MotionScene$Transition;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V
    .locals 2
    .param p0, "scene"    # Landroid/support/constraint/motion/MotionScene;
    .param p1, "transition"    # Landroid/support/constraint/motion/MotionScene$Transition;
    .param p2, "startConstraintSet"    # Landroid/support/constraint/ConstraintSet;
    .param p3, "endConstraintSet"    # Landroid/support/constraint/ConstraintSet;

    .line 80
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v0

    .line 81
    .local v0, "startId":I
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v1

    .line 83
    .local v1, "endId":I
    invoke-virtual {p0, v0, p2}, Landroid/support/constraint/motion/MotionScene;->setConstraintSet(ILandroid/support/constraint/ConstraintSet;)V

    .line 84
    invoke-virtual {p0, v1, p3}, Landroid/support/constraint/motion/MotionScene;->setConstraintSet(ILandroid/support/constraint/ConstraintSet;)V

    .line 85
    return-void
.end method

.method public static validate(Landroid/support/constraint/motion/MotionLayout;)V
    .locals 3
    .param p0, "layout"    # Landroid/support/constraint/motion/MotionLayout;

    .line 35
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 40
    .local v0, "scene":Landroid/support/constraint/motion/MotionScene;
    invoke-virtual {v0, p0}, Landroid/support/constraint/motion/MotionScene;->validateLayout(Landroid/support/constraint/motion/MotionLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    return-void

    .line 45
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid motion layout. Motion Scene doesn\'t have any transition."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MotionLayout doesn\'t have the right motion scene."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    .end local v0    # "scene":Landroid/support/constraint/motion/MotionScene;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid motion layout. Layout missing Motion Scene."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
