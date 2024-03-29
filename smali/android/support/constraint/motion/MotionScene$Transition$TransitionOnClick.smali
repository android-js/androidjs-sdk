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
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transition"    # Landroid/support/constraint/motion/MotionScene$Transition;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    .line 641
    const/16 v0, 0x11

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    .line 649
    iput-object p2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 650
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->OnClick:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 651
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 652
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 653
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 654
    .local v3, "attr":I
    sget v4, Landroid/support/constraint/R$styleable;->OnClick_targetId:I

    if-ne v3, v4, :cond_0

    .line 655
    iget v4, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    goto :goto_1

    .line 656
    :cond_0
    sget v4, Landroid/support/constraint/R$styleable;->OnClick_clickAction:I

    if-ne v3, v4, :cond_1

    .line 657
    iget v4, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    .line 652
    .end local v3    # "attr":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 661
    return-void
.end method


# virtual methods
.method public addOnClickListeners(Landroid/support/constraint/motion/MotionLayout;ILandroid/support/constraint/motion/MotionScene$Transition;)V
    .locals 8
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;
    .param p2, "currentState"    # I
    .param p3, "transition"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 664
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 665
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_1

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnClick could not find id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionScene"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void

    .line 669
    :cond_1
    invoke-static {p3}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v2

    .line 670
    .local v2, "start":I
    invoke-static {p3}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    .line 671
    .local v3, "end":I
    if-ne v2, v1, :cond_2

    .line 672
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    return-void

    .line 676
    :cond_2
    iget v1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit8 v4, v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-ne p2, v2, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 677
    .local v4, "listen":Z
    :goto_1
    and-int/lit16 v7, v1, 0x100

    if-eqz v7, :cond_4

    if-ne p2, v2, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    or-int/2addr v4, v7

    .line 678
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_5

    if-ne p2, v2, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    or-int/2addr v4, v7

    .line 679
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_6

    if-ne p2, v3, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    or-int/2addr v4, v7

    .line 680
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_7

    if-ne p2, v3, :cond_7

    const/4 v5, 0x1

    :cond_7
    or-int v1, v4, v5

    .line 682
    .end local v4    # "listen":Z
    .local v1, "listen":Z
    if-eqz v1, :cond_8

    .line 683
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    :cond_8
    return-void
.end method

.method isTransitionViable(Landroid/support/constraint/motion/MotionScene$Transition;Landroid/support/constraint/motion/MotionLayout;)Z
    .locals 5
    .param p1, "current"    # Landroid/support/constraint/motion/MotionScene$Transition;
    .param p2, "tl"    # Landroid/support/constraint/motion/MotionLayout;

    .line 700
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 701
    return v1

    .line 703
    :cond_0
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    .line 704
    .local v0, "dest":I
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v2

    .line 705
    .local v2, "from":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 706
    iget v3, p2, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 708
    :cond_2
    iget v3, p2, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq v3, v2, :cond_4

    iget v3, p2, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-ne v3, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 714
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;

    move-result-object v0

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene;->access$800(Landroid/support/constraint/motion/MotionScene;)Landroid/support/constraint/motion/MotionLayout;

    move-result-object v0

    .line 715
    .local v0, "tl":Landroid/support/constraint/motion/MotionLayout;
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->isInteractionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 716
    return-void

    .line 718
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 719
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getCurrentState()I

    move-result v1

    .line 720
    .local v1, "currentState":I
    if-ne v1, v2, :cond_1

    .line 721
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->transitionToState(I)V

    .line 722
    return-void

    .line 724
    :cond_1
    new-instance v2, Landroid/support/constraint/motion/MotionScene$Transition;

    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v3}, Landroid/support/constraint/motion/MotionScene$Transition;->access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;

    move-result-object v3

    iget-object v4, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-direct {v2, v3, v4}, Landroid/support/constraint/motion/MotionScene$Transition;-><init>(Landroid/support/constraint/motion/MotionScene;Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 725
    .local v2, "t":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-static {v2, v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$102(Landroid/support/constraint/motion/MotionScene$Transition;I)I

    .line 726
    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v3}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/constraint/motion/MotionScene$Transition;->access$002(Landroid/support/constraint/motion/MotionScene$Transition;I)I

    .line 727
    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 728
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->transitionToEnd()V

    .line 729
    return-void

    .line 731
    .end local v1    # "currentState":I
    .end local v2    # "t":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_2
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;

    move-result-object v1

    iget-object v1, v1, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 732
    .local v1, "current":Landroid/support/constraint/motion/MotionScene$Transition;
    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_4

    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x1

    .line 733
    .local v3, "forward":Z
    :goto_1
    and-int/lit8 v6, v2, 0x10

    if-nez v6, :cond_6

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x1

    .line 734
    .local v2, "backward":Z
    :goto_3
    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    const/4 v4, 0x1

    .line 735
    .local v4, "bidirectional":Z
    :cond_7
    if-eqz v4, :cond_b

    .line 736
    iget-object v6, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v6}, Landroid/support/constraint/motion/MotionScene$Transition;->access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;

    move-result-object v6

    iget-object v6, v6, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    iget-object v7, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eq v6, v7, :cond_8

    .line 737
    invoke-virtual {v0, v7}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 739
    :cond_8
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getCurrentState()I

    move-result v6

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getEndState()I

    move-result v7

    if-eq v6, v7, :cond_a

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    goto :goto_4

    .line 742
    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 740
    :cond_a
    :goto_4
    const/4 v3, 0x0

    .line 745
    :cond_b
    :goto_5
    invoke-virtual {p0, v1, v0}, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->isTransitionViable(Landroid/support/constraint/motion/MotionScene$Transition;Landroid/support/constraint/motion/MotionLayout;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 746
    if-eqz v3, :cond_c

    iget v6, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 747
    iget-object v5, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {v0, v5}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 748
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->transitionToEnd()V

    goto :goto_6

    .line 749
    :cond_c
    if-eqz v2, :cond_d

    iget v5, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_d

    .line 750
    iget-object v5, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {v0, v5}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 751
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->transitionToStart()V

    goto :goto_6

    .line 752
    :cond_d
    if-eqz v3, :cond_e

    iget v5, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_e

    .line 753
    iget-object v5, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {v0, v5}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 754
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    goto :goto_6

    .line 755
    :cond_e
    if-eqz v2, :cond_f

    iget v5, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_f

    .line 756
    iget-object v5, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {v0, v5}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 757
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 760
    :cond_f
    :goto_6
    return-void
.end method

.method public removeOnClickListeners(Landroid/support/constraint/motion/MotionLayout;)V
    .locals 3
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;

    .line 688
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 689
    return-void

    .line 691
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 692
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (*)  could not find id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionScene"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void

    .line 696
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    return-void
.end method
