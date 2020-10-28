.class Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;
.super Ljava/lang/Object;
.source "MotionScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionScene$Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionOnClick"
.end annotation


# static fields
.field public static final ANIM_TOGGLE:I = 0x11

.field public static final ANIM_TO_END:I = 0x1

.field public static final ANIM_TO_START:I = 0x10

.field public static final JUMP_TO_END:I = 0x100

.field public static final JUMP_TO_START:I = 0x1000


# instance fields
.field mMode:I

.field mTargetId:I

.field private final mTransition:Landroid/support/constraint/motion/MotionScene$Transition;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionScene$Transition;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 640
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    const/16 v0, 0x11

    .line 641
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    .line 649
    iput-object p2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 650
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Landroid/support/constraint/R$styleable;->OnClick:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 651
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    .line 653
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 654
    sget v1, Landroid/support/constraint/R$styleable;->OnClick_targetId:I

    if-ne v0, v1, :cond_0

    .line 655
    iget v1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    goto :goto_1

    .line 656
    :cond_0
    sget v1, Landroid/support/constraint/R$styleable;->OnClick_clickAction:I

    if-ne v0, v1, :cond_1

    .line 657
    iget v1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 660
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addOnClickListeners(Landroid/support/constraint/motion/MotionLayout;ILandroid/support/constraint/motion/MotionScene$Transition;)V
    .locals 5

    .line 664
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 666
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "OnClick could not find id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 669
    :cond_1
    invoke-static {p3}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    .line 670
    invoke-static {p3}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result p3

    if-ne v0, v1, :cond_2

    .line 672
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 676
    :cond_2
    iget v1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-ne p2, v0, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 677
    :goto_1
    iget v4, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_4

    if-ne p2, v0, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    or-int/2addr v1, v4

    .line 678
    iget v4, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_5

    if-ne p2, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    or-int/2addr v0, v1

    .line 679
    iget v1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    if-ne p2, p3, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    or-int/2addr v0, v1

    .line 680
    iget v1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_7

    if-ne p2, p3, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    or-int p2, v0, v2

    if-eqz p2, :cond_8

    .line 683
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-void
.end method

.method isTransitionViable(Landroid/support/constraint/motion/MotionScene$Transition;Landroid/support/constraint/motion/MotionLayout;)Z
    .locals 4

    .line 700
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 703
    :cond_0
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result p1

    .line 704
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 706
    iget p2, p2, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 708
    :cond_2
    iget v2, p2, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq v2, v0, :cond_4

    iget p2, p2, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-ne p2, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 714
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;

    move-result-object p1

    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene;->access$800(Landroid/support/constraint/motion/MotionScene;)Landroid/support/constraint/motion/MotionLayout;

    move-result-object p1

    .line 715
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->isInteractionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 719
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 721
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->transitionToState(I)V

    return-void

    .line 724
    :cond_1
    new-instance v1, Landroid/support/constraint/motion/MotionScene$Transition;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-direct {v1, v2, v3}, Landroid/support/constraint/motion/MotionScene$Transition;-><init>(Landroid/support/constraint/motion/MotionScene;Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 725
    invoke-static {v1, v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$102(Landroid/support/constraint/motion/MotionScene$Transition;I)I

    .line 726
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    invoke-static {v1, v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$002(Landroid/support/constraint/motion/MotionScene$Transition;I)I

    .line 727
    invoke-virtual {p1, v1}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 728
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->transitionToEnd()V

    return-void

    .line 731
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;

    move-result-object v0

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 732
    iget v1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 733
    :goto_1
    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_6

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_b

    .line 736
    iget-object v5, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v5}, Landroid/support/constraint/motion/MotionScene$Transition;->access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;

    move-result-object v5

    iget-object v5, v5, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    iget-object v6, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eq v5, v6, :cond_8

    .line 737
    invoke-virtual {p1, v6}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 739
    :cond_8
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->getCurrentState()I

    move-result v5

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->getEndState()I

    move-result v6

    if-eq v5, v6, :cond_a

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v1, 0x0

    .line 745
    :cond_b
    :goto_6
    invoke-virtual {p0, v0, p1}, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->isTransitionViable(Landroid/support/constraint/motion/MotionScene$Transition;Landroid/support/constraint/motion/MotionLayout;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v1, :cond_c

    .line 746
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_c

    .line 747
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 748
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->transitionToEnd()V

    goto :goto_7

    :cond_c
    if-eqz v2, :cond_d

    .line 749
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_d

    .line 750
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 751
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->transitionToStart()V

    goto :goto_7

    :cond_d
    if-eqz v1, :cond_e

    .line 752
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_e

    .line 753
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 754
    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    goto :goto_7

    :cond_e
    if-eqz v2, :cond_f

    .line 755
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_f

    .line 756
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    const/4 v0, 0x0

    .line 757
    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    :cond_f
    :goto_7
    return-void
.end method

.method public removeOnClickListeners(Landroid/support/constraint/motion/MotionLayout;)V
    .locals 2

    .line 688
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 691
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 693
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " (*)  could not find id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionScene"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 696
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
