.class public Landroid/support/constraint/solver/widgets/analyzer/Direct;
.super Ljava/lang/Object;
.source "Direct.java"


# static fields
.field private static final APPLY_MATCH_PARENT:Z = false

.field private static final DEBUG:Z = false

.field private static measure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    sput-object v0, Landroid/support/constraint/solver/widgets/analyzer/Direct;->measure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z
    .locals 11
    .param p0, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 644
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    .line 645
    .local v0, "horizontalBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    .line 646
    .local v1, "verticalBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 647
    .local v2, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 648
    .local v5, "isParentHorizontalFixed":Z
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 649
    .local v6, "isParentVerticalFixed":Z
    :goto_2
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    if-eq v0, v7, :cond_5

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v7, :cond_5

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v7, :cond_3

    iget v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v7, :cond_3

    iget v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3

    .line 655
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 656
    :cond_3
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v7, 0x1

    .line 657
    .local v7, "isHorizontalFixed":Z
    :goto_4
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v9, :cond_8

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v9, :cond_8

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v9, :cond_6

    iget v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v9, :cond_6

    iget v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v9, v9, v8

    if-nez v9, :cond_6

    .line 663
    invoke-virtual {p0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 664
    :cond_6
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v9, 0x1

    .line 665
    .local v9, "isVerticalFixed":Z
    :goto_6
    iget v10, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v8, v10, v8

    if-lez v8, :cond_a

    if-nez v7, :cond_9

    if-eqz v9, :cond_a

    .line 666
    :cond_9
    return v4

    .line 673
    :cond_a
    if-eqz v7, :cond_b

    if-eqz v9, :cond_b

    const/4 v3, 0x1

    :cond_b
    return v3
.end method

.method private static horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 18
    .param p0, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 230
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    new-instance v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v2}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 232
    .local v2, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    invoke-static {v0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;Z)Z

    .line 235
    .end local v2    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_0
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 236
    .local v2, "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 237
    .local v4, "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v5

    .line 238
    .local v5, "l":I
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v6

    .line 240
    .local v6, "r":I
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v10, 0x8

    if-eqz v7, :cond_c

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 241
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 242
    .local v11, "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v12, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 243
    .local v12, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v13, 0x0

    .line 244
    .local v13, "x1":I
    const/4 v14, 0x0

    .line 245
    .local v14, "x2":I
    invoke-static {v12}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v15

    .line 246
    .local v15, "canMeasure":Z
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v16

    if-eqz v16, :cond_1

    if-eqz v15, :cond_1

    .line 247
    new-instance v16, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct/range {v16 .. v16}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object/from16 v17, v16

    .line 248
    .local v17, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    move-object/from16 v9, v17

    .end local v17    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    .local v9, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    invoke-static {v12, v1, v9, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;Z)Z

    .line 251
    .end local v9    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_1
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v3, :cond_7

    if-eqz v15, :cond_2

    goto :goto_2

    .line 277
    :cond_2
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v9, :cond_b

    .line 278
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    if-eq v3, v10, :cond_3

    iget v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v3, :cond_b

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v3

    cmpl-float v3, v3, v8

    if-nez v3, :cond_b

    .line 279
    :cond_3
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v3

    if-nez v3, :cond_b

    .line 280
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v3, :cond_4

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_4

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v3, :cond_6

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_6

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 281
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    .line 282
    .local v3, "bothConnected":Z
    :goto_1
    if-eqz v3, :cond_b

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v9

    if-nez v9, :cond_b

    .line 283
    invoke-static {v0, v1, v12}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveHorizontalMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_3

    .line 253
    .end local v3    # "bothConnected":Z
    :cond_7
    :goto_2
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 258
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 260
    :cond_8
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v3, :cond_9

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_9

    .line 261
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v3, v5

    .line 262
    .end local v13    # "x1":I
    .local v3, "x1":I
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    .line 263
    .end local v14    # "x2":I
    .local v9, "x2":I
    invoke-virtual {v12, v3, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 264
    invoke-static {v12, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_3

    .line 265
    .end local v3    # "x1":I
    .end local v9    # "x2":I
    .restart local v13    # "x1":I
    .restart local v14    # "x2":I
    :cond_9
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v3, :cond_a

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_a

    .line 266
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    sub-int v3, v5, v3

    .line 267
    .end local v14    # "x2":I
    .local v3, "x2":I
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    sub-int v9, v3, v9

    .line 268
    .end local v13    # "x1":I
    .local v9, "x1":I
    invoke-virtual {v12, v9, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 269
    invoke-static {v12, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_3

    .line 270
    .end local v3    # "x2":I
    .end local v9    # "x1":I
    .restart local v13    # "x1":I
    .restart local v14    # "x2":I
    :cond_a
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v3, :cond_b

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_b

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 271
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v3

    if-nez v3, :cond_b

    .line 272
    invoke-static {v1, v12}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveHorizontalCenterConstraints(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 286
    .end local v11    # "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "x1":I
    .end local v14    # "x2":I
    .end local v15    # "canMeasure":Z
    :cond_b
    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 288
    :cond_c
    instance-of v3, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v3, :cond_d

    .line 289
    return-void

    .line 291
    :cond_d
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 292
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 293
    .local v7, "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v9, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 294
    .local v9, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-static {v9}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v11

    .line 295
    .local v11, "canMeasure":Z
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v12

    if-eqz v12, :cond_e

    if-eqz v11, :cond_e

    .line 296
    new-instance v12, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v12}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 297
    .local v12, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    const/4 v13, 0x0

    invoke-static {v9, v1, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;Z)Z

    goto :goto_5

    .line 295
    .end local v12    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_e
    const/4 v13, 0x0

    .line 300
    :goto_5
    const/4 v12, 0x0

    .line 301
    .local v12, "x1":I
    const/4 v14, 0x0

    .line 302
    .restart local v14    # "x2":I
    iget-object v15, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v7, v15, :cond_f

    iget-object v15, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v15, :cond_f

    iget-object v15, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v15

    if-nez v15, :cond_10

    :cond_f
    iget-object v15, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v7, v15, :cond_11

    iget-object v15, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v15, :cond_11

    iget-object v15, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 303
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v15

    if-eqz v15, :cond_11

    :cond_10
    const/4 v15, 0x1

    goto :goto_6

    :cond_11
    const/4 v15, 0x0

    .line 304
    .local v15, "bothConnected":Z
    :goto_6
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v13

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v8, :cond_16

    if-eqz v11, :cond_12

    const/4 v13, 0x0

    goto :goto_8

    .line 326
    :cond_12
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v13, :cond_15

    .line 327
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    if-eq v8, v10, :cond_14

    iget v8, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v8, :cond_13

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v8

    const/4 v13, 0x0

    cmpl-float v8, v8, v13

    if-nez v8, :cond_1a

    goto :goto_7

    :cond_13
    const/4 v13, 0x0

    goto/16 :goto_9

    :cond_14
    const/4 v13, 0x0

    .line 328
    :goto_7
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 329
    if-eqz v15, :cond_1a

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 330
    invoke-static {v0, v1, v9}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveHorizontalMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_9

    .line 326
    :cond_15
    const/4 v13, 0x0

    goto :goto_9

    .line 304
    :cond_16
    const/4 v13, 0x0

    .line 306
    :goto_8
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 311
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 313
    :cond_17
    iget-object v8, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v7, v8, :cond_18

    iget-object v8, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_18

    .line 314
    iget-object v8, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    add-int/2addr v8, v6

    .line 315
    .end local v12    # "x1":I
    .local v8, "x1":I
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    .line 316
    .end local v14    # "x2":I
    .local v12, "x2":I
    invoke-virtual {v9, v8, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 317
    invoke-static {v9, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_9

    .line 318
    .end local v8    # "x1":I
    .local v12, "x1":I
    .restart local v14    # "x2":I
    :cond_18
    iget-object v8, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v7, v8, :cond_19

    iget-object v8, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_19

    .line 319
    iget-object v8, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    sub-int v8, v6, v8

    .line 320
    .end local v14    # "x2":I
    .local v8, "x2":I
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    sub-int v12, v8, v14

    .line 321
    invoke-virtual {v9, v12, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 322
    invoke-static {v9, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_9

    .line 323
    .end local v8    # "x2":I
    .restart local v14    # "x2":I
    :cond_19
    if-eqz v15, :cond_1a

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 324
    invoke-static {v1, v9}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveHorizontalCenterConstraints(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 333
    .end local v7    # "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "canMeasure":Z
    .end local v12    # "x1":I
    .end local v14    # "x2":I
    .end local v15    # "bothConnected":Z
    :cond_1a
    :goto_9
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 335
    :cond_1b
    return-void
.end method

.method private static solveBarrier(Landroid/support/constraint/solver/widgets/Barrier;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;I)V
    .locals 1
    .param p0, "barrier"    # Landroid/support/constraint/solver/widgets/Barrier;
    .param p1, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "orientation"    # I

    .line 209
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Barrier;->allSolved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    if-nez p2, :cond_0

    .line 211
    invoke-static {p0, p1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {p0, p1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 216
    :cond_1
    :goto_0
    return-void
.end method

.method public static solveChain(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;ZZZ)Z
    .locals 27
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroid/support/constraint/solver/widgets/ChainHead;
    .param p5, "isChainSpread"    # Z
    .param p6, "isChainSpreadInside"    # Z
    .param p7, "isChainPacked"    # Z

    .line 696
    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 697
    return v0

    .line 699
    :cond_0
    if-nez p2, :cond_1

    .line 700
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    move-result v1

    if-nez v1, :cond_2

    .line 701
    return v0

    .line 704
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    move-result v1

    if-nez v1, :cond_2

    .line 705
    return v0

    .line 709
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ChainHead;->getFirst()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 710
    .local v1, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ChainHead;->getLast()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 711
    .local v2, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ChainHead;->getFirstVisibleWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 712
    .local v3, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ChainHead;->getLastVisibleWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 713
    .local v4, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ChainHead;->getHead()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    .line 715
    .local v5, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v6, v1

    .line 716
    .local v6, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v7, 0x0

    .line 717
    .local v7, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v8, 0x0

    .line 719
    .local v8, "done":Z
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    .line 720
    .local v9, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v11, p3, 0x1

    aget-object v10, v10, v11

    .line 721
    .local v10, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_28

    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v11, :cond_3

    move-object/from16 v25, v1

    move-object/from16 v21, v2

    move-object/from16 v18, v5

    move-object/from16 v5, p1

    goto/16 :goto_14

    .line 724
    :cond_3
    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v11

    if-eqz v11, :cond_27

    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v11

    if-nez v11, :cond_4

    move-object/from16 v25, v1

    move-object/from16 v21, v2

    move-object/from16 v18, v5

    move-object/from16 v5, p1

    goto/16 :goto_13

    .line 728
    :cond_4
    if-eqz v3, :cond_26

    if-nez v4, :cond_5

    move-object/from16 v25, v1

    move-object/from16 v21, v2

    move-object/from16 v18, v5

    move-object/from16 v5, p1

    goto/16 :goto_12

    .line 732
    :cond_5
    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v11

    iget-object v12, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    add-int/2addr v11, v12

    .line 733
    .local v11, "startPoint":I
    iget-object v12, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v12

    iget-object v13, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v14, p3, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    sub-int/2addr v12, v13

    .line 735
    .local v12, "endPoint":I
    sub-int v13, v12, v11

    .line 736
    .local v13, "distance":I
    if-gtz v13, :cond_6

    .line 737
    return v0

    .line 739
    :cond_6
    const/4 v14, 0x0

    .line 740
    .local v14, "totalSize":I
    new-instance v15, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v15}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 742
    .local v15, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    const/16 v16, 0x0

    .line 743
    .local v16, "numWidgets":I
    const/16 v17, 0x0

    move/from16 v18, v16

    move/from16 v19, v17

    .line 745
    .end local v16    # "numWidgets":I
    .local v18, "numWidgets":I
    .local v19, "numVisibleWidgets":I
    :goto_0
    if-nez v8, :cond_10

    .line 746
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v0, p3

    .line 747
    invoke-static {v6}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v0

    .line 748
    .local v0, "canMeasure":Z
    if-nez v0, :cond_7

    .line 749
    move/from16 v20, v0

    const/4 v0, 0x0

    .end local v0    # "canMeasure":Z
    .local v20, "canMeasure":Z
    return v0

    .line 751
    .end local v20    # "canMeasure":Z
    .restart local v0    # "canMeasure":Z
    :cond_7
    move/from16 v20, v0

    const/4 v0, 0x0

    .end local v0    # "canMeasure":Z
    .restart local v20    # "canMeasure":Z
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p2

    move-object/from16 v21, v2

    .end local v2    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v21, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_8

    .line 752
    const/4 v0, 0x0

    return v0

    .line 755
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 756
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v2

    invoke-static {v6, v2, v15, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;Z)Z

    .line 759
    :cond_9
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int/2addr v14, v0

    .line 760
    if-nez p2, :cond_a

    .line 761
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    add-int/2addr v14, v0

    goto :goto_1

    .line 763
    :cond_a
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    add-int/2addr v14, v0

    .line 765
    :goto_1
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int/2addr v14, v0

    .line 767
    move/from16 v0, v18

    .end local v18    # "numWidgets":I
    .local v0, "numWidgets":I
    add-int/lit8 v18, v0, 0x1

    .line 768
    .end local v0    # "numWidgets":I
    .restart local v18    # "numWidgets":I
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_b

    .line 769
    move/from16 v2, v19

    .end local v19    # "numVisibleWidgets":I
    .local v2, "numVisibleWidgets":I
    add-int/lit8 v19, v2, 0x1

    .end local v2    # "numVisibleWidgets":I
    .restart local v19    # "numVisibleWidgets":I
    goto :goto_2

    .line 768
    :cond_b
    move/from16 v2, v19

    .line 774
    :goto_2
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 775
    .local v0, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v0, :cond_e

    .line 776
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 777
    .end local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_d

    iget-object v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v7, v6, :cond_c

    goto :goto_3

    :cond_c
    move-object v7, v2

    goto :goto_4

    .line 779
    :cond_d
    :goto_3
    const/4 v2, 0x0

    move-object v7, v2

    goto :goto_4

    .line 782
    .end local v2    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_e
    const/4 v2, 0x0

    move-object v7, v2

    .line 784
    :goto_4
    if-eqz v7, :cond_f

    .line 785
    move-object v2, v7

    move-object v6, v2

    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_5

    .line 787
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_f
    const/4 v2, 0x1

    move v8, v2

    .line 789
    .end local v0    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v20    # "canMeasure":Z
    :goto_5
    move-object/from16 v2, v21

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 791
    .end local v21    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_10
    move-object/from16 v21, v2

    move/from16 v0, v18

    move/from16 v2, v19

    .end local v18    # "numWidgets":I
    .end local v19    # "numVisibleWidgets":I
    .local v0, "numWidgets":I
    .local v2, "numVisibleWidgets":I
    .restart local v21    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v2, :cond_11

    .line 792
    const/16 v16, 0x0

    return v16

    .line 795
    :cond_11
    const/16 v16, 0x0

    if-eq v2, v0, :cond_12

    .line 796
    return v16

    .line 799
    :cond_12
    if-ge v13, v14, :cond_13

    .line 800
    return v16

    .line 803
    :cond_13
    sub-int v18, v13, v14

    .line 804
    .local v18, "gap":I
    move/from16 v19, v0

    .end local v0    # "numWidgets":I
    .local v19, "numWidgets":I
    if-eqz p5, :cond_14

    .line 805
    add-int/lit8 v22, v2, 0x1

    div-int v18, v18, v22

    move-object/from16 v23, v6

    move/from16 v0, v18

    const/4 v6, 0x1

    goto :goto_7

    .line 806
    :cond_14
    if-eqz p6, :cond_16

    .line 807
    const/4 v0, 0x2

    if-le v2, v0, :cond_15

    .line 808
    div-int v0, v18, v2

    move-object/from16 v23, v6

    const/4 v6, 0x1

    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v23, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v18, v0, -0x1

    move/from16 v0, v18

    goto :goto_7

    .line 807
    .end local v23    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_15
    move-object/from16 v23, v6

    const/4 v6, 0x1

    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v23    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_6

    .line 806
    .end local v23    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_16
    move-object/from16 v23, v6

    const/4 v6, 0x1

    .line 812
    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v23    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_6
    move/from16 v0, v18

    .end local v18    # "gap":I
    .local v0, "gap":I
    :goto_7
    if-ne v2, v6, :cond_19

    .line 813
    const/high16 v6, 0x3f000000    # 0.5f

    .line 814
    .local v6, "bias":F
    if-nez p2, :cond_17

    .line 815
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v6

    goto :goto_8

    .line 817
    :cond_17
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v6

    .line 819
    :goto_8
    const/high16 v16, 0x3f000000    # 0.5f

    move-object/from16 v18, v5

    .end local v5    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v18, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    int-to-float v5, v11

    add-float v5, v5, v16

    move-object/from16 v24, v7

    .end local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v24, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    int-to-float v7, v0

    mul-float v7, v7, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 820
    .local v5, "p1":I
    if-nez p2, :cond_18

    .line 821
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v3, v5, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    goto :goto_9

    .line 823
    :cond_18
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v3, v5, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 825
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 826
    const/4 v7, 0x1

    return v7

    .line 829
    .end local v6    # "bias":F
    .end local v18    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v24    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v5, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_19
    move-object/from16 v18, v5

    move-object/from16 v24, v7

    .end local v5    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v18    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v24    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz p5, :cond_22

    .line 830
    const/4 v5, 0x0

    .line 832
    .end local v8    # "done":Z
    .local v5, "done":Z
    add-int v6, v11, v0

    .line 833
    .local v6, "current":I
    move-object v7, v1

    move v8, v5

    .line 834
    .end local v5    # "done":Z
    .end local v23    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v7, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "done":Z
    :goto_a
    if-nez v8, :cond_21

    .line 835
    iget-object v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v5, p3

    .line 836
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    move-object/from16 v25, v1

    const/16 v1, 0x8

    .end local v1    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v25, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-ne v5, v1, :cond_1b

    .line 837
    if-nez p2, :cond_1a

    .line 838
    invoke-virtual {v7, v6, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 839
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_c

    .line 841
    :cond_1a
    invoke-virtual {v7, v6, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 842
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_c

    .line 845
    :cond_1b
    iget-object v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v6, v5

    .line 846
    if-nez p2, :cond_1c

    .line 847
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v7, v6, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 848
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 849
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    add-int/2addr v6, v5

    goto :goto_b

    .line 851
    :cond_1c
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v7, v6, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 852
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 853
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    add-int/2addr v6, v5

    .line 855
    :goto_b
    iget-object v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v17, p3, 0x1

    aget-object v5, v5, v17

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v6, v5

    .line 856
    add-int/2addr v6, v0

    .line 859
    :goto_c
    move-object/from16 v5, p1

    const/4 v1, 0x0

    invoke-virtual {v7, v5, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addToSolver(Landroid/support/constraint/solver/LinearSystem;Z)V

    .line 862
    iget-object v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v20, p3, 0x1

    aget-object v1, v1, v20

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 863
    .local v1, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_1f

    .line 864
    move/from16 v26, v0

    .end local v0    # "gap":I
    .local v26, "gap":I
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 865
    .end local v24    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v0, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v20, v1

    .end local v1    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v20, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_1e

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v1, v7, :cond_1d

    goto :goto_d

    :cond_1d
    move-object/from16 v24, v0

    goto :goto_e

    .line 867
    :cond_1e
    :goto_d
    const/4 v0, 0x0

    move-object/from16 v24, v0

    goto :goto_e

    .line 870
    .end local v20    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v26    # "gap":I
    .local v0, "gap":I
    .restart local v1    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v24    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1f
    move/from16 v26, v0

    move-object/from16 v20, v1

    .end local v0    # "gap":I
    .end local v1    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v20    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v26    # "gap":I
    const/4 v0, 0x0

    move-object/from16 v24, v0

    .line 872
    :goto_e
    if-eqz v24, :cond_20

    .line 873
    move-object/from16 v7, v24

    goto :goto_f

    .line 875
    :cond_20
    const/4 v8, 0x1

    .line 877
    .end local v20    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_f
    move-object/from16 v1, v25

    move/from16 v0, v26

    goto/16 :goto_a

    .line 834
    .end local v25    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v26    # "gap":I
    .restart local v0    # "gap":I
    .local v1, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_21
    move-object/from16 v5, p1

    move/from16 v26, v0

    move-object/from16 v25, v1

    .line 878
    .end local v0    # "gap":I
    .end local v1    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v6    # "current":I
    .restart local v25    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v26    # "gap":I
    move-object v6, v7

    move-object/from16 v7, v24

    const/4 v0, 0x1

    goto :goto_11

    .end local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v25    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v26    # "gap":I
    .restart local v0    # "gap":I
    .restart local v1    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v23    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_22
    move-object/from16 v5, p1

    move/from16 v26, v0

    move-object/from16 v25, v1

    .end local v0    # "gap":I
    .end local v1    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v25    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v26    # "gap":I
    if-eqz p6, :cond_25

    .line 879
    const/4 v0, 0x2

    if-ne v2, v0, :cond_24

    .line 880
    if-nez p2, :cond_23

    .line 881
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {v3, v11, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 882
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    sub-int v0, v12, v0

    invoke-virtual {v4, v0, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 883
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 884
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_10

    .line 886
    :cond_23
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {v3, v11, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 887
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    sub-int v0, v12, v0

    invoke-virtual {v4, v0, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 888
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 889
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 891
    :goto_10
    const/4 v0, 0x1

    return v0

    .line 893
    :cond_24
    const/4 v0, 0x0

    return v0

    .line 878
    :cond_25
    const/4 v0, 0x1

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    .line 895
    .end local v23    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v24    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v6, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v7, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_11
    return v0

    .line 728
    .end local v11    # "startPoint":I
    .end local v12    # "endPoint":I
    .end local v13    # "distance":I
    .end local v14    # "totalSize":I
    .end local v15    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    .end local v18    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v19    # "numWidgets":I
    .end local v21    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v25    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v26    # "gap":I
    .restart local v1    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v5, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_26
    move-object/from16 v25, v1

    move-object/from16 v21, v2

    move-object/from16 v18, v5

    move-object/from16 v5, p1

    .line 729
    .end local v1    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v2    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v5    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v18    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v21    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v25    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_12
    return v0

    .line 724
    .end local v18    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v21    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v25    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v1    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v5    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_27
    move-object/from16 v25, v1

    move-object/from16 v21, v2

    move-object/from16 v18, v5

    move-object/from16 v5, p1

    .line 725
    .end local v1    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v2    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v5    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v18    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v21    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v25    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_13
    return v0

    .line 721
    .end local v18    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v21    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v25    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v1    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v5    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_28
    move-object/from16 v25, v1

    move-object/from16 v21, v2

    move-object/from16 v18, v5

    move-object/from16 v5, p1

    .line 722
    .end local v1    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v2    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v5    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v18    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v21    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v25    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_14
    return v0
.end method

.method private static solveHorizontalCenterConstraints(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 10
    .param p0, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 493
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v0

    .line 494
    .local v0, "bias":F
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    .line 495
    .local v1, "start":I
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    .line 496
    .local v2, "end":I
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v3, v1

    .line 497
    .local v3, "s1":I
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    sub-int v4, v2, v4

    .line 498
    .local v4, "s2":I
    if-ne v1, v2, :cond_0

    .line 499
    const/high16 v0, 0x3f000000    # 0.5f

    .line 500
    move v3, v1

    .line 501
    move v4, v2

    .line 503
    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    .line 504
    .local v5, "width":I
    sub-int v6, v4, v3

    sub-int/2addr v6, v5

    .line 505
    .local v6, "distance":I
    if-le v3, v4, :cond_1

    .line 506
    sub-int v7, v3, v4

    sub-int v6, v7, v5

    .line 508
    :cond_1
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 509
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v0, v7, v0

    .line 511
    :cond_2
    const/high16 v7, 0x3f000000    # 0.5f

    int-to-float v8, v6

    mul-float v8, v8, v0

    add-float/2addr v8, v7

    float-to-int v7, v8

    .line 512
    .local v7, "d1":I
    add-int v8, v3, v7

    .line 513
    .local v8, "x1":I
    add-int v9, v8, v5

    .line 514
    .local v9, "x2":I
    if-le v3, v4, :cond_3

    .line 515
    add-int v8, v3, v7

    .line 516
    sub-int v9, v8, v5

    .line 518
    :cond_3
    invoke-virtual {p1, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 519
    invoke-static {p1, p0}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 520
    return-void
.end method

.method private static solveHorizontalMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 8
    .param p0, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 566
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v0

    .line 567
    .local v0, "bias":F
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    add-int/2addr v1, v2

    .line 568
    .local v1, "s1":I
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    iget-object v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    sub-int/2addr v2, v3

    .line 569
    .local v2, "s2":I
    if-lt v2, v1, :cond_4

    .line 570
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    .line 571
    .local v3, "width":I
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 572
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 573
    const/4 v4, 0x0

    .line 574
    .local v4, "parentWidth":I
    instance-of v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_0

    .line 575
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    goto :goto_0

    .line 577
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    .line 579
    :goto_0
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v5

    mul-float v5, v5, v6

    int-to-float v7, v4

    mul-float v5, v5, v7

    float-to-int v3, v5

    .end local v4    # "parentWidth":I
    goto :goto_1

    .line 580
    :cond_1
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v4, :cond_2

    .line 581
    sub-int v3, v2, v1

    goto :goto_2

    .line 580
    :cond_2
    :goto_1
    nop

    .line 583
    :goto_2
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 584
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v4, :cond_3

    .line 585
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 588
    :cond_3
    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    .line 589
    .local v4, "distance":I
    int-to-float v5, v4

    mul-float v5, v5, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 590
    .local v5, "d1":I
    add-int v6, v1, v5

    .line 591
    .local v6, "x1":I
    add-int v7, v6, v3

    .line 592
    .local v7, "x2":I
    invoke-virtual {p2, v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 593
    invoke-static {p2, p1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 595
    .end local v3    # "width":I
    .end local v4    # "distance":I
    .end local v5    # "d1":I
    .end local v6    # "x1":I
    .end local v7    # "x2":I
    :cond_4
    return-void
.end method

.method private static solveVerticalCenterConstraints(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 10
    .param p0, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 531
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v0

    .line 532
    .local v0, "bias":F
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    .line 533
    .local v1, "start":I
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    .line 534
    .local v2, "end":I
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v3, v1

    .line 535
    .local v3, "s1":I
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    sub-int v4, v2, v4

    .line 536
    .local v4, "s2":I
    if-ne v1, v2, :cond_0

    .line 537
    const/high16 v0, 0x3f000000    # 0.5f

    .line 538
    move v3, v1

    .line 539
    move v4, v2

    .line 541
    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    .line 542
    .local v5, "height":I
    sub-int v6, v4, v3

    sub-int/2addr v6, v5

    .line 543
    .local v6, "distance":I
    if-le v3, v4, :cond_1

    .line 544
    sub-int v7, v3, v4

    sub-int v6, v7, v5

    .line 546
    :cond_1
    const/high16 v7, 0x3f000000    # 0.5f

    int-to-float v8, v6

    mul-float v8, v8, v0

    add-float/2addr v8, v7

    float-to-int v7, v8

    .line 547
    .local v7, "d1":I
    add-int v8, v3, v7

    .line 548
    .local v8, "y1":I
    add-int v9, v8, v5

    .line 549
    .local v9, "y2":I
    if-le v3, v4, :cond_2

    .line 550
    sub-int v8, v3, v7

    .line 551
    sub-int v9, v8, v5

    .line 553
    :cond_2
    invoke-virtual {p1, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 554
    invoke-static {p1, p0}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 555
    return-void
.end method

.method private static solveVerticalMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 8
    .param p0, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 606
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v0

    .line 607
    .local v0, "bias":F
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    add-int/2addr v1, v2

    .line 608
    .local v1, "s1":I
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    iget-object v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    sub-int/2addr v2, v3

    .line 609
    .local v2, "s2":I
    if-lt v2, v1, :cond_4

    .line 610
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    .line 611
    .local v3, "height":I
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 612
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 613
    const/4 v4, 0x0

    .line 614
    .local v4, "parentHeight":I
    instance-of v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_0

    .line 615
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    goto :goto_0

    .line 617
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    .line 619
    :goto_0
    mul-float v5, v0, v6

    int-to-float v7, v4

    mul-float v5, v5, v7

    float-to-int v3, v5

    .end local v4    # "parentHeight":I
    goto :goto_1

    .line 620
    :cond_1
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v4, :cond_2

    .line 621
    sub-int v3, v2, v1

    goto :goto_2

    .line 620
    :cond_2
    :goto_1
    nop

    .line 623
    :goto_2
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 624
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v4, :cond_3

    .line 625
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 628
    :cond_3
    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    .line 629
    .local v4, "distance":I
    int-to-float v5, v4

    mul-float v5, v5, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 630
    .local v5, "d1":I
    add-int v6, v1, v5

    .line 631
    .local v6, "y1":I
    add-int v7, v6, v3

    .line 632
    .local v7, "y2":I
    invoke-virtual {p2, v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 633
    invoke-static {p2, p1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 635
    .end local v3    # "height":I
    .end local v4    # "distance":I
    .end local v5    # "d1":I
    .end local v6    # "y1":I
    .end local v7    # "y2":I
    :cond_4
    return-void
.end method

.method public static solvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 17
    .param p0, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 54
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    .line 55
    .local v2, "horizontal":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    .line 59
    .local v3, "vertical":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetFinalResolution()V

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v4

    .line 61
    .local v4, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 62
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_0

    .line 63
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 64
    .local v7, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetFinalResolution()V

    .line 62
    .end local v7    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 72
    .end local v6    # "i":I
    :cond_0
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    if-ne v2, v6, :cond_1

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v6

    invoke-virtual {v0, v7, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setFinalHorizontal(II)V

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setFinalLeft(I)V

    .line 79
    :goto_1
    const/4 v6, 0x0

    .line 80
    .local v6, "hasGuideline":Z
    const/4 v8, 0x0

    .line 81
    .local v8, "hasBarrier":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-ge v9, v5, :cond_8

    .line 82
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 83
    .local v13, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v14, v13, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v14, :cond_6

    .line 84
    move-object v14, v13

    check-cast v14, Landroid/support/constraint/solver/widgets/Guideline;

    .line 85
    .local v14, "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v15

    if-ne v15, v12, :cond_5

    .line 86
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeBegin()I

    move-result v12

    if-eq v12, v11, :cond_2

    .line 87
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeBegin()I

    move-result v10

    invoke-virtual {v14, v10}, Landroid/support/constraint/solver/widgets/Guideline;->setFinalValue(I)V

    goto :goto_3

    .line 88
    :cond_2
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeEnd()I

    move-result v12

    if-eq v12, v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v10

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeEnd()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v14, v10}, Landroid/support/constraint/solver/widgets/Guideline;->setFinalValue(I)V

    goto :goto_3

    .line 90
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 91
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativePercent()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float v11, v11, v12

    add-float/2addr v11, v10

    float-to-int v10, v11

    .line 92
    .local v10, "position":I
    invoke-virtual {v14, v10}, Landroid/support/constraint/solver/widgets/Guideline;->setFinalValue(I)V

    .line 94
    .end local v10    # "position":I
    :cond_4
    :goto_3
    const/4 v6, 0x1

    .line 96
    .end local v14    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    :cond_5
    goto :goto_4

    :cond_6
    instance-of v10, v13, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v10, :cond_5

    .line 97
    move-object v10, v13

    check-cast v10, Landroid/support/constraint/solver/widgets/Barrier;

    .line 98
    .local v10, "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/Barrier;->getOrientation()I

    move-result v11

    if-nez v11, :cond_7

    .line 99
    const/4 v8, 0x1

    .line 81
    .end local v10    # "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    .end local v13    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 103
    .end local v9    # "i":I
    :cond_8
    if-eqz v6, :cond_a

    .line 104
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    if-ge v9, v5, :cond_a

    .line 105
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 106
    .restart local v13    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v14, v13, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v14, :cond_9

    .line 107
    move-object v14, v13

    check-cast v14, Landroid/support/constraint/solver/widgets/Guideline;

    .line 108
    .restart local v14    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v15

    if-ne v15, v12, :cond_9

    .line 109
    invoke-static {v14, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 104
    .end local v13    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 116
    .end local v9    # "i":I
    :cond_a
    invoke-static/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 119
    if-eqz v8, :cond_c

    .line 120
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    if-ge v9, v5, :cond_c

    .line 121
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 122
    .restart local v13    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v14, v13, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v14, :cond_b

    .line 123
    move-object v14, v13

    check-cast v14, Landroid/support/constraint/solver/widgets/Barrier;

    .line 124
    .local v14, "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Barrier;->getOrientation()I

    move-result v15

    if-nez v15, :cond_b

    .line 125
    invoke-static {v14, v1, v7}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveBarrier(Landroid/support/constraint/solver/widgets/Barrier;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;I)V

    .line 120
    .end local v13    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 132
    .end local v9    # "i":I
    :cond_c
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v9, :cond_d

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v9

    invoke-virtual {v0, v7, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setFinalVertical(II)V

    goto :goto_7

    .line 135
    :cond_d
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setFinalTop(I)V

    .line 139
    :goto_7
    const/4 v6, 0x0

    .line 140
    const/4 v8, 0x0

    .line 141
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_8
    if-ge v9, v5, :cond_14

    .line 142
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 143
    .restart local v13    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v14, v13, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v14, :cond_12

    .line 144
    move-object v14, v13

    check-cast v14, Landroid/support/constraint/solver/widgets/Guideline;

    .line 145
    .local v14, "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v15

    if-nez v15, :cond_11

    .line 146
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeBegin()I

    move-result v15

    if-eq v15, v11, :cond_e

    .line 147
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeBegin()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/Guideline;->setFinalValue(I)V

    goto :goto_9

    .line 148
    :cond_e
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeEnd()I

    move-result v15

    if-eq v15, v11, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v15

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeEnd()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/Guideline;->setFinalValue(I)V

    goto :goto_9

    .line 150
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 151
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativePercent()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float v15, v15, v11

    add-float/2addr v15, v10

    float-to-int v11, v15

    .line 152
    .local v11, "position":I
    invoke-virtual {v14, v11}, Landroid/support/constraint/solver/widgets/Guideline;->setFinalValue(I)V

    .line 154
    .end local v11    # "position":I
    :cond_10
    :goto_9
    const/4 v6, 0x1

    .line 156
    .end local v14    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    :cond_11
    goto :goto_a

    :cond_12
    instance-of v11, v13, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v11, :cond_11

    .line 157
    move-object v11, v13

    check-cast v11, Landroid/support/constraint/solver/widgets/Barrier;

    .line 158
    .local v11, "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/Barrier;->getOrientation()I

    move-result v14

    if-ne v14, v12, :cond_13

    .line 159
    const/4 v8, 0x1

    .line 141
    .end local v11    # "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    .end local v13    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_13
    :goto_a
    add-int/lit8 v9, v9, 0x1

    const/4 v11, -0x1

    goto :goto_8

    .line 163
    .end local v9    # "i":I
    :cond_14
    if-eqz v6, :cond_16

    .line 164
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_b
    if-ge v9, v5, :cond_16

    .line 165
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 166
    .local v10, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v11, v10, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v11, :cond_15

    .line 167
    move-object v11, v10

    check-cast v11, Landroid/support/constraint/solver/widgets/Guideline;

    .line 168
    .local v11, "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v13

    if-nez v13, :cond_15

    .line 169
    invoke-static {v11, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 164
    .end local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 176
    .end local v9    # "i":I
    :cond_16
    invoke-static/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 179
    if-eqz v8, :cond_18

    .line 180
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_c
    if-ge v9, v5, :cond_18

    .line 181
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 182
    .restart local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v11, v10, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v11, :cond_17

    .line 183
    move-object v11, v10

    check-cast v11, Landroid/support/constraint/solver/widgets/Barrier;

    .line 184
    .local v11, "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/Barrier;->getOrientation()I

    move-result v13

    if-ne v13, v12, :cond_17

    .line 185
    invoke-static {v11, v1, v12}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveBarrier(Landroid/support/constraint/solver/widgets/Barrier;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;I)V

    .line 180
    .end local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 192
    .end local v9    # "i":I
    :cond_18
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_d
    if-ge v9, v5, :cond_1a

    .line 193
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 194
    .restart local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-static {v10}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 195
    sget-object v11, Landroid/support/constraint/solver/widgets/analyzer/Direct;->measure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-static {v10, v1, v11, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;Z)Z

    .line 196
    invoke-static {v10, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->horizontalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 197
    invoke-static {v10, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 192
    .end local v10    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_19
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 200
    .end local v9    # "i":I
    :cond_1a
    return-void
.end method

.method private static verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 18
    .param p0, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 349
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    new-instance v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v2}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 351
    .local v2, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    invoke-static {v0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;Z)Z

    .line 354
    .end local v2    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_0
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 355
    .local v2, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 356
    .local v4, "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v5

    .line 357
    .local v5, "t":I
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v6

    .line 359
    .local v6, "b":I
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v10, 0x8

    if-eqz v7, :cond_c

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 360
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 361
    .local v11, "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v12, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 362
    .local v12, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v13, 0x0

    .line 363
    .local v13, "y1":I
    const/4 v14, 0x0

    .line 364
    .local v14, "y2":I
    invoke-static {v12}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v15

    .line 365
    .local v15, "canMeasure":Z
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v16

    if-eqz v16, :cond_1

    if-eqz v15, :cond_1

    .line 366
    new-instance v16, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct/range {v16 .. v16}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object/from16 v17, v16

    .line 367
    .local v17, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    move-object/from16 v9, v17

    .end local v17    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    .local v9, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    invoke-static {v12, v1, v9, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;Z)Z

    .line 370
    .end local v9    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_1
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v3, :cond_7

    if-eqz v15, :cond_2

    goto :goto_2

    .line 396
    :cond_2
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v9, :cond_b

    .line 397
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    if-eq v3, v10, :cond_3

    iget v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v3, :cond_b

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v3

    cmpl-float v3, v3, v8

    if-nez v3, :cond_b

    .line 398
    :cond_3
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v3

    if-nez v3, :cond_b

    .line 399
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v3, :cond_4

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_4

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v3, :cond_6

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_6

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 400
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    .line 401
    .local v3, "bothConnected":Z
    :goto_1
    if-eqz v3, :cond_b

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v9

    if-nez v9, :cond_b

    .line 402
    invoke-static {v0, v1, v12}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveVerticalMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_3

    .line 372
    .end local v3    # "bothConnected":Z
    :cond_7
    :goto_2
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 377
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 379
    :cond_8
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v3, :cond_9

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_9

    .line 380
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v3, v5

    .line 381
    .end local v13    # "y1":I
    .local v3, "y1":I
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    add-int/2addr v9, v3

    .line 382
    .end local v14    # "y2":I
    .local v9, "y2":I
    invoke-virtual {v12, v3, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 383
    invoke-static {v12, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_3

    .line 384
    .end local v3    # "y1":I
    .end local v9    # "y2":I
    .restart local v13    # "y1":I
    .restart local v14    # "y2":I
    :cond_9
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v3, :cond_a

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_a

    .line 385
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    sub-int v3, v5, v3

    .line 386
    .end local v14    # "y2":I
    .local v3, "y2":I
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    sub-int v9, v3, v9

    .line 387
    .end local v13    # "y1":I
    .local v9, "y1":I
    invoke-virtual {v12, v9, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 388
    invoke-static {v12, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_3

    .line 389
    .end local v3    # "y2":I
    .end local v9    # "y1":I
    .restart local v13    # "y1":I
    .restart local v14    # "y2":I
    :cond_a
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v3, :cond_b

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_b

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 390
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 391
    invoke-static {v1, v12}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveVerticalCenterConstraints(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 405
    .end local v11    # "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "y1":I
    .end local v14    # "y2":I
    .end local v15    # "canMeasure":Z
    :cond_b
    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 407
    :cond_c
    instance-of v3, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v3, :cond_d

    .line 408
    return-void

    .line 410
    :cond_d
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 411
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 412
    .local v7, "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v9, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 413
    .local v9, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-static {v9}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v11

    .line 414
    .local v11, "canMeasure":Z
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v12

    if-eqz v12, :cond_e

    if-eqz v11, :cond_e

    .line 415
    new-instance v12, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v12}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 416
    .local v12, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    const/4 v13, 0x0

    invoke-static {v9, v1, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;Z)Z

    .line 419
    .end local v12    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_e
    const/4 v12, 0x0

    .line 420
    .local v12, "y1":I
    const/4 v13, 0x0

    .line 421
    .local v13, "y2":I
    iget-object v14, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v7, v14, :cond_f

    iget-object v14, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v14, :cond_f

    iget-object v14, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v14

    if-nez v14, :cond_10

    :cond_f
    iget-object v14, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v7, v14, :cond_11

    iget-object v14, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v14, :cond_11

    iget-object v14, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 422
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v14

    if-eqz v14, :cond_11

    :cond_10
    const/4 v14, 0x1

    goto :goto_5

    :cond_11
    const/4 v14, 0x0

    .line 423
    .local v14, "bothConnected":Z
    :goto_5
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v8, :cond_16

    if-eqz v11, :cond_12

    const/4 v15, 0x0

    goto :goto_7

    .line 445
    :cond_12
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v15, :cond_15

    .line 446
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    if-eq v8, v10, :cond_14

    iget v8, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v8, :cond_13

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v8

    const/4 v15, 0x0

    cmpl-float v8, v8, v15

    if-nez v8, :cond_1a

    goto :goto_6

    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_8

    :cond_14
    const/4 v15, 0x0

    .line 447
    :goto_6
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 448
    if-eqz v14, :cond_1a

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 449
    invoke-static {v0, v1, v9}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveVerticalMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_8

    .line 445
    :cond_15
    const/4 v15, 0x0

    goto :goto_8

    .line 423
    :cond_16
    const/4 v15, 0x0

    .line 425
    :goto_7
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 430
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 432
    :cond_17
    iget-object v8, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v7, v8, :cond_18

    iget-object v8, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_18

    .line 433
    iget-object v8, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    add-int/2addr v8, v6

    .line 434
    .end local v12    # "y1":I
    .local v8, "y1":I
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    add-int/2addr v12, v8

    .line 435
    .end local v13    # "y2":I
    .local v12, "y2":I
    invoke-virtual {v9, v8, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 436
    invoke-static {v9, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_8

    .line 437
    .end local v8    # "y1":I
    .local v12, "y1":I
    .restart local v13    # "y2":I
    :cond_18
    iget-object v8, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v7, v8, :cond_19

    iget-object v8, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_19

    .line 438
    iget-object v8, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    sub-int v8, v6, v8

    .line 439
    .end local v13    # "y2":I
    .local v8, "y2":I
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v13

    sub-int v12, v8, v13

    .line 440
    invoke-virtual {v9, v12, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 441
    invoke-static {v9, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_8

    .line 442
    .end local v8    # "y2":I
    .restart local v13    # "y2":I
    :cond_19
    if-eqz v14, :cond_1a

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 443
    invoke-static {v1, v9}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->solveVerticalCenterConstraints(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 452
    .end local v7    # "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "canMeasure":Z
    .end local v12    # "y1":I
    .end local v13    # "y2":I
    .end local v14    # "bothConnected":Z
    :cond_1a
    :goto_8
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 455
    :cond_1b
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 456
    .local v3, "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v7

    if-eqz v7, :cond_20

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 457
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v7

    .line 458
    .local v7, "baselineValue":I
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 459
    .local v9, "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v10, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 460
    .local v10, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-static {v10}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->canMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v11

    .line 461
    .restart local v11    # "canMeasure":Z
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v12

    if-eqz v12, :cond_1c

    if-eqz v11, :cond_1c

    .line 462
    new-instance v12, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v12}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 463
    .local v12, "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    const/4 v13, 0x0

    invoke-static {v10, v1, v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;Z)Z

    goto :goto_a

    .line 461
    .end local v12    # "measure":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;
    :cond_1c
    const/4 v13, 0x0

    .line 465
    :goto_a
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v14, :cond_1d

    if-eqz v11, :cond_1f

    .line 467
    :cond_1d
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 472
    goto :goto_9

    .line 474
    :cond_1e
    iget-object v12, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v9, v12, :cond_1f

    .line 475
    invoke-virtual {v10, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFinalBaseline(I)V

    .line 476
    :try_start_0
    invoke-static {v10, v1}, Landroid/support/constraint/solver/widgets/analyzer/Direct;->verticalSolvingPass(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    .end local v9    # "first":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "canMeasure":Z
    :cond_1f
    goto :goto_9

    .line 482
    .end local v7    # "baselineValue":I
    :cond_20
    return-void

    .line 476
    .end local v2    # "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v5    # "t":I
    .end local v6    # "b":I
    .end local p0    # "layout":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local p1    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_c

    :goto_b
    throw v1

    :goto_c
    goto :goto_b
.end method
