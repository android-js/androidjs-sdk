.class Landroid/support/constraint/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroid/support/constraint/ConstraintLayout;

.field layoutHeightSpec:I

.field layoutWidthSpec:I

.field paddingBottom:I

.field paddingHeight:I

.field paddingTop:I

.field paddingWidth:I

.field final synthetic this$0:Landroid/support/constraint/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroid/support/constraint/ConstraintLayout;Landroid/support/constraint/ConstraintLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/constraint/ConstraintLayout;
    .param p2, "l"    # Landroid/support/constraint/ConstraintLayout;

    .line 618
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->this$0:Landroid/support/constraint/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object p2, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    .line 620
    return-void
.end method

.method private isSimilarSpec(III)Z
    .locals 6
    .param p1, "lastMeasureSpec"    # I
    .param p2, "spec"    # I
    .param p3, "widgetSize"    # I

    .line 898
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 899
    return v0

    .line 901
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 902
    .local v1, "lastMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 903
    .local v2, "lastSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 904
    .local v3, "mode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 905
    .local v4, "size":I
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v3, v5, :cond_2

    const/high16 v5, -0x80000000

    if-eq v1, v5, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-ne p3, v4, :cond_2

    .line 908
    return v0

    .line 910
    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public captureLayoutInfos(IIIIII)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 610
    iput p3, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingTop:I

    .line 611
    iput p4, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingBottom:I

    .line 612
    iput p5, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingWidth:I

    .line 613
    iput p6, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingHeight:I

    .line 614
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 615
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 616
    return-void
.end method

.method public final didMeasures()V
    .locals 5

    .line 915
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 916
    .local v0, "widgetsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 917
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 918
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/support/constraint/Placeholder;

    if-eqz v3, :cond_0

    .line 919
    move-object v3, v2

    check-cast v3, Landroid/support/constraint/Placeholder;

    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroid/support/constraint/Placeholder;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    .line 916
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 923
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-static {v1}, Landroid/support/constraint/ConstraintLayout;->access$100(Landroid/support/constraint/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 924
    .local v1, "helperCount":I
    if-lez v1, :cond_2

    .line 925
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 926
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-static {v3}, Landroid/support/constraint/ConstraintLayout;->access$100(Landroid/support/constraint/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintHelper;

    .line 927
    .local v3, "helper":Landroid/support/constraint/ConstraintHelper;
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroid/support/constraint/ConstraintHelper;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    .line 925
    .end local v3    # "helper":Landroid/support/constraint/ConstraintHelper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 930
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public final measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 31
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "measure"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 626
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    .line 627
    return-void

    .line 629
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInPlaceholder()Z

    move-result v3

    if-nez v3, :cond_1

    .line 630
    iput v5, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 631
    iput v5, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 632
    iput v5, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 633
    return-void

    .line 643
    :cond_1
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 644
    .local v3, "horizontalBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 646
    .local v4, "verticalBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v6, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 647
    .local v6, "horizontalDimension":I
    iget v7, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 649
    .local v7, "verticalDimension":I
    const/4 v8, 0x0

    .line 650
    .local v8, "horizontalSpec":I
    const/4 v9, 0x0

    .line 652
    .local v9, "verticalSpec":I
    iget v10, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingTop:I

    iget v11, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingBottom:I

    add-int/2addr v10, v11

    .line 653
    .local v10, "heightPadding":I
    iget v11, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingWidth:I

    .line 655
    .local v11, "widthPadding":I
    const/4 v12, 0x0

    .line 656
    .local v12, "didHorizontalWrap":Z
    const/4 v13, 0x0

    .line 658
    .local v13, "didVerticalWrap":Z
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 660
    .local v14, "child":Landroid/view/View;
    sget-object v15, Landroid/support/constraint/ConstraintLayout$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v16

    aget v15, v15, v16

    const/16 v18, 0x3

    const/16 v19, 0x2

    packed-switch v15, :pswitch_data_0

    move/from16 v20, v8

    .end local v8    # "horizontalSpec":I
    .local v20, "horizontalSpec":I
    goto/16 :goto_3

    .line 680
    .end local v20    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    :pswitch_0
    iget v15, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v5, -0x2

    invoke-static {v15, v11, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 681
    const/4 v12, 0x1

    .line 682
    iget v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v15, 0x1

    if-ne v5, v15, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 683
    .local v5, "shouldDoWrap":Z
    :goto_0
    iget-object v15, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v16, v15, v19

    .line 684
    iget-boolean v15, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v15, :cond_7

    .line 685
    if-eqz v5, :cond_3

    iget-object v15, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v15, v15, v18

    if-eqz v15, :cond_3

    iget-object v15, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    .line 687
    move/from16 v20, v8

    .end local v8    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    if-ne v15, v8, :cond_4

    goto :goto_1

    .line 685
    .end local v20    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    :cond_3
    move/from16 v20, v8

    .line 687
    .end local v8    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    :goto_1
    instance-of v8, v14, Landroid/support/constraint/Placeholder;

    if-eqz v8, :cond_5

    :cond_4
    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    .line 690
    .local v8, "useCurrent":Z
    :goto_2
    if-eqz v5, :cond_6

    if-eqz v8, :cond_8

    .line 691
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    move/from16 v21, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "shouldDoWrap":Z
    .local v21, "shouldDoWrap":Z
    invoke-static {v15, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 692
    .end local v20    # "horizontalSpec":I
    .local v15, "horizontalSpec":I
    const/4 v12, 0x0

    move v8, v15

    goto :goto_3

    .line 684
    .end local v15    # "horizontalSpec":I
    .end local v21    # "shouldDoWrap":Z
    .restart local v5    # "shouldDoWrap":Z
    .local v8, "horizontalSpec":I
    :cond_7
    move/from16 v21, v5

    move/from16 v20, v8

    .line 699
    .end local v5    # "shouldDoWrap":Z
    .end local v8    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    :cond_8
    move/from16 v8, v20

    goto :goto_3

    .line 674
    .end local v20    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    :pswitch_1
    iget v5, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalMargin()I

    move-result v15

    add-int/2addr v15, v11

    .line 674
    move/from16 v20, v8

    const/4 v8, -0x1

    .end local v8    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    invoke-static {v5, v15, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 676
    .end local v20    # "horizontalSpec":I
    .local v5, "horizontalSpec":I
    iget-object v15, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v8, v15, v19

    .line 678
    move v8, v5

    goto :goto_3

    .line 667
    .end local v5    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    :pswitch_2
    move/from16 v20, v8

    .end local v8    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    iget v5, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v8, -0x2

    invoke-static {v5, v11, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 668
    .end local v20    # "horizontalSpec":I
    .restart local v5    # "horizontalSpec":I
    const/4 v12, 0x1

    .line 669
    iget-object v15, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v8, v15, v19

    .line 671
    move v8, v5

    goto :goto_3

    .line 662
    .end local v5    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    :pswitch_3
    move/from16 v20, v8

    .end local v8    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 663
    .end local v20    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v6, v5, v19

    .line 665
    nop

    .line 699
    :goto_3
    sget-object v5, Landroid/support/constraint/ConstraintLayout$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v15

    aget v5, v5, v15

    packed-switch v5, :pswitch_data_1

    move/from16 v20, v6

    .end local v6    # "horizontalDimension":I
    .local v20, "horizontalDimension":I
    goto/16 :goto_7

    .line 720
    .end local v20    # "horizontalDimension":I
    .restart local v6    # "horizontalDimension":I
    :pswitch_4
    iget v5, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v15, -0x2

    invoke-static {v5, v10, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 722
    const/4 v13, 0x1

    .line 723
    iget v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v15, 0x1

    if-ne v5, v15, :cond_9

    const/4 v5, 0x1

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    .line 724
    .local v5, "shouldDoWrap":Z
    :goto_4
    iget-object v15, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v16, v15, v18

    .line 725
    iget-boolean v15, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v15, :cond_e

    .line 726
    if-eqz v5, :cond_a

    iget-object v15, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v15, v15, v19

    if-eqz v15, :cond_a

    iget-object v15, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v17, 0x1

    aget v15, v15, v17

    .line 728
    move/from16 v20, v6

    .end local v6    # "horizontalDimension":I
    .restart local v20    # "horizontalDimension":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    if-ne v15, v6, :cond_b

    goto :goto_5

    .line 726
    .end local v20    # "horizontalDimension":I
    .restart local v6    # "horizontalDimension":I
    :cond_a
    move/from16 v20, v6

    .line 728
    .end local v6    # "horizontalDimension":I
    .restart local v20    # "horizontalDimension":I
    :goto_5
    instance-of v6, v14, Landroid/support/constraint/Placeholder;

    if-eqz v6, :cond_c

    :cond_b
    const/4 v6, 0x1

    goto :goto_6

    :cond_c
    const/4 v6, 0x0

    .line 730
    .local v6, "useCurrent":Z
    :goto_6
    if-eqz v5, :cond_d

    if-eqz v6, :cond_f

    .line 731
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    move/from16 v17, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "shouldDoWrap":Z
    .local v17, "shouldDoWrap":Z
    invoke-static {v15, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 732
    const/4 v13, 0x0

    goto :goto_7

    .line 725
    .end local v17    # "shouldDoWrap":Z
    .end local v20    # "horizontalDimension":I
    .restart local v5    # "shouldDoWrap":Z
    .local v6, "horizontalDimension":I
    :cond_e
    move/from16 v17, v5

    move/from16 v20, v6

    .end local v5    # "shouldDoWrap":Z
    .end local v6    # "horizontalDimension":I
    .restart local v17    # "shouldDoWrap":Z
    .restart local v20    # "horizontalDimension":I
    goto :goto_7

    .line 714
    .end local v17    # "shouldDoWrap":Z
    .end local v20    # "horizontalDimension":I
    .restart local v6    # "horizontalDimension":I
    :pswitch_5
    move/from16 v20, v6

    .end local v6    # "horizontalDimension":I
    .restart local v20    # "horizontalDimension":I
    iget v5, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalMargin()I

    move-result v6

    add-int/2addr v6, v10

    .line 714
    const/4 v15, -0x1

    invoke-static {v5, v6, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 716
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v15, v5, v18

    .line 718
    goto :goto_7

    .line 706
    .end local v20    # "horizontalDimension":I
    .restart local v6    # "horizontalDimension":I
    :pswitch_6
    move/from16 v20, v6

    .end local v6    # "horizontalDimension":I
    .restart local v20    # "horizontalDimension":I
    iget v5, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v6, -0x2

    invoke-static {v5, v10, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 708
    const/4 v13, 0x1

    .line 709
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v6, v5, v18

    .line 711
    goto :goto_7

    .line 701
    .end local v20    # "horizontalDimension":I
    .restart local v6    # "horizontalDimension":I
    :pswitch_7
    move/from16 v20, v6

    .end local v6    # "horizontalDimension":I
    .restart local v20    # "horizontalDimension":I
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 702
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v7, v5, v18

    .line 704
    nop

    .line 739
    :cond_f
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 740
    .local v5, "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    if-eqz v5, :cond_11

    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->this$0:Landroid/support/constraint/ConstraintLayout;

    invoke-static {v6}, Landroid/support/constraint/ConstraintLayout;->access$000(Landroid/support/constraint/ConstraintLayout;)I

    move-result v6

    const/16 v15, 0x100

    invoke-static {v6, v15}, Landroid/support/constraint/solver/widgets/Optimizer;->enabled(II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 741
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    if-ne v6, v15, :cond_11

    .line 744
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v15

    if-ge v6, v15, :cond_11

    .line 745
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    if-ne v6, v15, :cond_11

    .line 746
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v15

    if-ge v6, v15, :cond_11

    .line 747
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v15

    if-ne v6, v15, :cond_11

    .line 748
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v6

    if-nez v6, :cond_11

    .line 750
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getLastHorizontalMeasureSpec()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    invoke-direct {v0, v6, v8, v15}, Landroid/support/constraint/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 751
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getLastVerticalMeasureSpec()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    invoke-direct {v0, v6, v9, v15}, Landroid/support/constraint/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    goto :goto_8

    :cond_10
    const/4 v6, 0x0

    .line 752
    .local v6, "similar":Z
    :goto_8
    if-eqz v6, :cond_11

    .line 753
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    iput v15, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 754
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    iput v15, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 755
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v15

    iput v15, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 760
    return-void

    .line 765
    .end local v6    # "similar":Z
    :cond_11
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_12

    const/4 v6, 0x1

    goto :goto_9

    :cond_12
    const/4 v6, 0x0

    .line 766
    .local v6, "horizontalMatchConstraints":Z
    :goto_9
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v15, :cond_13

    const/4 v15, 0x1

    goto :goto_a

    :cond_13
    const/4 v15, 0x0

    .line 768
    .local v15, "verticalMatchConstraints":Z
    :goto_a
    move-object/from16 v17, v5

    .end local v5    # "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .local v17, "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_15

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_14

    goto :goto_b

    :cond_14
    const/4 v5, 0x0

    goto :goto_c

    :cond_15
    :goto_b
    const/4 v5, 0x1

    .line 770
    .local v5, "verticalDimensionKnown":Z
    :goto_c
    move-object/from16 v21, v4

    .end local v4    # "verticalBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .local v21, "verticalBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_17

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_16

    goto :goto_d

    :cond_16
    const/4 v4, 0x0

    goto :goto_e

    :cond_17
    :goto_d
    const/4 v4, 0x1

    .line 772
    .local v4, "horizontalDimensionKnown":Z
    :goto_e
    const/16 v22, 0x0

    if-eqz v6, :cond_18

    move-object/from16 v23, v3

    .end local v3    # "horizontalBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .local v23, "horizontalBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v3, v3, v22

    if-lez v3, :cond_19

    const/4 v3, 0x1

    goto :goto_f

    .end local v23    # "horizontalBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v3    # "horizontalBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_18
    move-object/from16 v23, v3

    .end local v3    # "horizontalBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v23    # "horizontalBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_19
    const/4 v3, 0x0

    .line 773
    .local v3, "horizontalUseRatio":Z
    :goto_f
    if-eqz v15, :cond_1a

    move/from16 v24, v7

    .end local v7    # "verticalDimension":I
    .local v24, "verticalDimension":I
    iget v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v7, v7, v22

    if-lez v7, :cond_1b

    const/4 v7, 0x1

    goto :goto_10

    .end local v24    # "verticalDimension":I
    .restart local v7    # "verticalDimension":I
    :cond_1a
    move/from16 v24, v7

    .end local v7    # "verticalDimension":I
    .restart local v24    # "verticalDimension":I
    :cond_1b
    const/4 v7, 0x0

    .line 775
    .local v7, "verticalUseRatio":Z
    :goto_10
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move/from16 v25, v10

    .end local v10    # "heightPadding":I
    .local v25, "heightPadding":I
    move-object/from16 v10, v22

    check-cast v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 777
    .local v10, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    const/16 v22, 0x0

    .line 778
    .local v22, "width":I
    const/16 v26, 0x0

    .line 779
    .local v26, "height":I
    const/16 v27, 0x0

    .line 781
    .local v27, "baseline":I
    move/from16 v28, v11

    .end local v11    # "widthPadding":I
    .local v28, "widthPadding":I
    iget-boolean v11, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-nez v11, :cond_1d

    if-eqz v6, :cond_1d

    iget v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v11, :cond_1d

    if-eqz v15, :cond_1d

    iget v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v11, :cond_1c

    goto :goto_11

    :cond_1c
    move/from16 v30, v3

    move/from16 v29, v6

    move/from16 v19, v12

    move/from16 v0, v22

    move/from16 v12, v26

    move/from16 v3, v27

    const/16 v16, 0x0

    goto/16 :goto_1b

    .line 785
    :cond_1d
    :goto_11
    instance-of v11, v14, Landroid/support/constraint/VirtualLayout;

    if-eqz v11, :cond_1e

    instance-of v11, v1, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-eqz v11, :cond_1e

    .line 786
    move-object v11, v1

    check-cast v11, Landroid/support/constraint/solver/widgets/VirtualLayout;

    .line 787
    .local v11, "layout":Landroid/support/constraint/solver/widgets/VirtualLayout;
    move/from16 v29, v6

    .end local v6    # "horizontalMatchConstraints":Z
    .local v29, "horizontalMatchConstraints":Z
    move-object v6, v14

    check-cast v6, Landroid/support/constraint/VirtualLayout;

    invoke-virtual {v6, v11, v8, v9}, Landroid/support/constraint/VirtualLayout;->onMeasure(Landroid/support/constraint/solver/widgets/VirtualLayout;II)V

    .line 788
    .end local v11    # "layout":Landroid/support/constraint/solver/widgets/VirtualLayout;
    goto :goto_12

    .line 785
    .end local v29    # "horizontalMatchConstraints":Z
    .restart local v6    # "horizontalMatchConstraints":Z
    :cond_1e
    move/from16 v29, v6

    .line 789
    .end local v6    # "horizontalMatchConstraints":Z
    .restart local v29    # "horizontalMatchConstraints":Z
    invoke-virtual {v14, v8, v9}, Landroid/view/View;->measure(II)V

    .line 790
    invoke-virtual {v1, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setLastMeasureSpec(II)V

    .line 793
    :goto_12
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 794
    .local v6, "w":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 795
    .local v11, "h":I
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v27

    .line 797
    move/from16 v30, v6

    .line 798
    .end local v22    # "width":I
    .local v30, "width":I
    move/from16 v22, v11

    .line 805
    .end local v26    # "height":I
    .local v22, "height":I
    if-eqz v12, :cond_1f

    .line 806
    move/from16 v26, v8

    .end local v8    # "horizontalSpec":I
    .local v26, "horizontalSpec":I
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v6, v8, v16

    .line 807
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v11, v8, v19

    goto :goto_13

    .line 809
    .end local v26    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    :cond_1f
    move/from16 v26, v8

    const/16 v16, 0x0

    .end local v8    # "horizontalSpec":I
    .restart local v26    # "horizontalSpec":I
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v8, v16

    .line 810
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v8, v19

    .line 812
    :goto_13
    if-eqz v13, :cond_20

    .line 813
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v19, 0x1

    aput v11, v8, v19

    .line 814
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v6, v8, v18

    const/16 v16, 0x0

    goto :goto_14

    .line 816
    :cond_20
    const/16 v19, 0x1

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v16, v8, v19

    .line 817
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v8, v18

    .line 820
    :goto_14
    iget v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v8, :cond_21

    .line 821
    iget v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v18, v9

    move/from16 v9, v30

    .end local v30    # "width":I
    .local v9, "width":I
    .local v18, "verticalSpec":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v9, v30

    .end local v9    # "width":I
    .restart local v30    # "width":I
    goto :goto_15

    .line 820
    .end local v18    # "verticalSpec":I
    .local v9, "verticalSpec":I
    :cond_21
    move/from16 v18, v9

    move/from16 v9, v30

    .line 823
    .end local v30    # "width":I
    .local v9, "width":I
    .restart local v18    # "verticalSpec":I
    :goto_15
    iget v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v8, :cond_22

    .line 824
    iget v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 826
    :cond_22
    iget v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v8, :cond_23

    .line 827
    iget v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v19, v12

    move/from16 v12, v22

    .end local v22    # "height":I
    .local v12, "height":I
    .local v19, "didHorizontalWrap":Z
    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v12, v22

    .end local v12    # "height":I
    .restart local v22    # "height":I
    goto :goto_16

    .line 826
    .end local v19    # "didHorizontalWrap":Z
    .local v12, "didHorizontalWrap":Z
    :cond_23
    move/from16 v19, v12

    move/from16 v12, v22

    .line 829
    .end local v22    # "height":I
    .local v12, "height":I
    .restart local v19    # "didHorizontalWrap":Z
    :goto_16
    iget v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v8, :cond_24

    .line 830
    iget v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 833
    :cond_24
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->this$0:Landroid/support/constraint/ConstraintLayout;

    invoke-static {v8}, Landroid/support/constraint/ConstraintLayout;->access$000(Landroid/support/constraint/ConstraintLayout;)I

    move-result v8

    const/4 v0, 0x1

    invoke-static {v8, v0}, Landroid/support/constraint/solver/widgets/Optimizer;->enabled(II)Z

    move-result v8

    .line 834
    .local v8, "optimizeDirect":Z
    if-nez v8, :cond_26

    .line 835
    if-eqz v3, :cond_25

    if-eqz v5, :cond_25

    .line 836
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 837
    .local v0, "ratio":F
    move/from16 v30, v3

    .end local v3    # "horizontalUseRatio":Z
    .local v30, "horizontalUseRatio":Z
    int-to-float v3, v12

    mul-float v3, v3, v0

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v3, v3, v22

    float-to-int v0, v3

    .line 838
    .end local v9    # "width":I
    .local v0, "width":I
    move v9, v0

    goto :goto_17

    .line 835
    .end local v0    # "width":I
    .end local v30    # "horizontalUseRatio":Z
    .restart local v3    # "horizontalUseRatio":Z
    .restart local v9    # "width":I
    :cond_25
    move/from16 v30, v3

    .line 838
    .end local v3    # "horizontalUseRatio":Z
    .restart local v30    # "horizontalUseRatio":Z
    if-eqz v7, :cond_27

    if-eqz v4, :cond_27

    .line 839
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 840
    .local v0, "ratio":F
    int-to-float v3, v9

    div-float/2addr v3, v0

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v3, v3, v22

    float-to-int v3, v3

    move v12, v3

    .end local v12    # "height":I
    .local v3, "height":I
    goto :goto_17

    .line 834
    .end local v0    # "ratio":F
    .end local v30    # "horizontalUseRatio":Z
    .local v3, "horizontalUseRatio":Z
    .restart local v12    # "height":I
    :cond_26
    move/from16 v30, v3

    .line 844
    .end local v3    # "horizontalUseRatio":Z
    .restart local v30    # "horizontalUseRatio":Z
    :cond_27
    :goto_17
    if-ne v6, v9, :cond_29

    if-eq v11, v12, :cond_28

    goto :goto_18

    :cond_28
    move v0, v9

    move/from16 v9, v18

    move/from16 v8, v26

    move/from16 v3, v27

    goto :goto_1b

    .line 845
    :cond_29
    :goto_18
    if-eq v6, v9, :cond_2a

    .line 846
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .end local v26    # "horizontalSpec":I
    .local v3, "horizontalSpec":I
    goto :goto_19

    .line 845
    .end local v3    # "horizontalSpec":I
    .restart local v26    # "horizontalSpec":I
    :cond_2a
    const/high16 v0, 0x40000000    # 2.0f

    move/from16 v3, v26

    .line 848
    .end local v26    # "horizontalSpec":I
    .restart local v3    # "horizontalSpec":I
    :goto_19
    if-eq v11, v12, :cond_2b

    .line 849
    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .end local v18    # "verticalSpec":I
    .local v0, "verticalSpec":I
    goto :goto_1a

    .line 848
    .end local v0    # "verticalSpec":I
    .restart local v18    # "verticalSpec":I
    :cond_2b
    move/from16 v0, v18

    .line 851
    .end local v18    # "verticalSpec":I
    .restart local v0    # "verticalSpec":I
    :goto_1a
    invoke-virtual {v14, v3, v0}, Landroid/view/View;->measure(II)V

    .line 852
    invoke-virtual {v1, v3, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setLastMeasureSpec(II)V

    .line 853
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    .line 854
    .end local v9    # "width":I
    .local v22, "width":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    .line 855
    .end local v12    # "height":I
    .local v26, "height":I
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v27

    move v9, v0

    move v8, v3

    move/from16 v0, v22

    move/from16 v12, v26

    move/from16 v3, v27

    .line 864
    .end local v6    # "w":I
    .end local v11    # "h":I
    .end local v22    # "width":I
    .end local v26    # "height":I
    .end local v27    # "baseline":I
    .local v0, "width":I
    .local v3, "baseline":I
    .local v8, "horizontalSpec":I
    .local v9, "verticalSpec":I
    .restart local v12    # "height":I
    :goto_1b
    const/4 v6, -0x1

    if-eq v3, v6, :cond_2c

    const/4 v6, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v6, 0x0

    .line 866
    .local v6, "hasBaseline":Z
    :goto_1c
    iget v11, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v0, v11, :cond_2e

    iget v11, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v12, v11, :cond_2d

    goto :goto_1d

    :cond_2d
    const/4 v11, 0x0

    goto :goto_1e

    :cond_2e
    :goto_1d
    const/4 v11, 0x1

    :goto_1e
    iput-boolean v11, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 868
    iget-boolean v11, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v11, :cond_2f

    .line 869
    const/4 v6, 0x1

    .line 871
    :cond_2f
    if-eqz v6, :cond_30

    const/4 v11, -0x1

    if-eq v3, v11, :cond_30

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v11

    if-eq v11, v3, :cond_30

    .line 872
    const/4 v11, 0x1

    iput-boolean v11, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 874
    :cond_30
    iput v0, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 875
    iput v12, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 876
    iput-boolean v6, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 877
    iput v3, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 884
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
