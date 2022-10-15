.class public Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;,
        Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    }
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field private static final DEBUG:Z = false

.field public static final EXACTLY:I = 0x40000000

.field public static final FIXED:I = -0x3

.field public static final MATCH_PARENT:I = -0x1

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I = 0x0

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constraintWidgetContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .locals 1
    .param p1, "constraintWidgetContainer"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 72
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 73
    return-void
.end method

.method private measure(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)Z
    .locals 9
    .param p1, "measurer"    # Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p3, "useCurrentDimensions"    # Z

    .line 444
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 445
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 446
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 447
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 448
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 449
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-boolean p3, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    .line 451
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 452
    .local v0, "horizontalMatchConstraints":Z
    :goto_0
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 453
    .local v2, "verticalMatchConstraints":Z
    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 454
    .local v5, "horizontalUseRatio":Z
    :goto_2
    if-eqz v2, :cond_3

    iget v6, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 456
    .local v4, "verticalUseRatio":Z
    :goto_3
    const/4 v6, 0x4

    if-eqz v5, :cond_4

    .line 457
    iget-object v7, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v7, v7, v1

    if-ne v7, v6, :cond_4

    .line 458
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v8, v7, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 461
    :cond_4
    if-eqz v4, :cond_5

    .line 462
    iget-object v7, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v3, v7, v3

    if-ne v3, v6, :cond_5

    .line 463
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v6, v3, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 467
    :cond_5
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {p1, p2, v3}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 468
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 469
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 470
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v3, v3, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 471
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 472
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-boolean v1, v3, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    .line 473
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v1, v1, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    return v1
.end method

.method private measureChildren(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .locals 14
    .param p1, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 76
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 77
    .local v0, "childCount":I
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v1

    .line 78
    .local v1, "optimize":Z
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v2

    .line 79
    .local v2, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_9

    .line 80
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 81
    .local v4, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v5, v4, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v5, :cond_0

    .line 82
    goto/16 :goto_2

    .line 84
    :cond_0
    instance-of v5, v4, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v5, :cond_1

    .line 85
    goto/16 :goto_2

    .line 87
    :cond_1
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 88
    goto/16 :goto_2

    .line 91
    :cond_2
    if-eqz v1, :cond_3

    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v5, :cond_3

    .line 94
    goto :goto_2

    .line 97
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    .line 98
    .local v6, "widthBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    .line 100
    .local v8, "heightBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v9, :cond_4

    iget v9, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v9, v7, :cond_4

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_4

    iget v9, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v9, v7, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    .line 105
    .local v9, "skip":Z
    :goto_1
    if-nez v9, :cond_6

    invoke-virtual {p1, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v7

    if-eqz v7, :cond_6

    instance-of v7, v4, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-nez v7, :cond_6

    .line 107
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_5

    iget v7, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v7, :cond_5

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v7, :cond_5

    .line 110
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-nez v7, :cond_5

    .line 111
    const/4 v9, 0x1

    .line 113
    :cond_5
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v7, :cond_6

    iget v7, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v7, :cond_6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_6

    .line 116
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-nez v7, :cond_6

    .line 117
    const/4 v9, 0x1

    .line 121
    :cond_6
    if-eqz v9, :cond_7

    .line 124
    goto :goto_2

    .line 127
    :cond_7
    invoke-direct {p0, v2, v4, v5}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->measure(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)Z

    .line 128
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v5, :cond_8

    .line 129
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v10, v5, Landroid/support/constraint/solver/Metrics;->measuredWidgets:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, v5, Landroid/support/constraint/solver/Metrics;->measuredWidgets:J

    .line 79
    .end local v4    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v6    # "widthBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v8    # "heightBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v9    # "skip":Z
    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 132
    .end local v3    # "i":I
    :cond_9
    invoke-interface {v2}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;->didMeasures()V

    .line 133
    return-void
.end method

.method private solveLinearSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V
    .locals 3
    .param p1, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 141
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v0

    .line 142
    .local v0, "minWidth":I
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v1

    .line 143
    .local v1, "minHeight":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 144
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 145
    invoke-virtual {p1, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 146
    invoke-virtual {p1, p4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 147
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 148
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 152
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 157
    return-void
.end method


# virtual methods
.method public solverMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;IIIIIIIII)J
    .locals 32
    .param p1, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "optimizationLevel"    # I
    .param p3, "paddingX"    # I
    .param p4, "paddingY"    # I
    .param p5, "widthMode"    # I
    .param p6, "widthSize"    # I
    .param p7, "heightMode"    # I
    .param p8, "heightSize"    # I
    .param p9, "lastMeasureWidth"    # I
    .param p10, "lastMeasureHeight"    # I

    .line 178
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v5

    .line 179
    .local v5, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    const-wide/16 v6, 0x0

    .line 181
    .local v6, "layoutTime":J
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 182
    .local v8, "childCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v9

    .line 183
    .local v9, "startingWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v10

    .line 185
    .local v10, "startingHeight":I
    const/16 v11, 0x80

    invoke-static {v2, v11}, Landroid/support/constraint/solver/widgets/Optimizer;->enabled(II)Z

    move-result v11

    .line 186
    .local v11, "optimizeWrap":Z
    if-nez v11, :cond_1

    const/16 v14, 0x40

    invoke-static {v2, v14}, Landroid/support/constraint/solver/widgets/Optimizer;->enabled(II)Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v14, 0x1

    .line 188
    .local v14, "optimize":Z
    :goto_1
    if-eqz v14, :cond_b

    .line 189
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v8, :cond_a

    .line 190
    iget-object v13, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 191
    .local v13, "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    .line 192
    .local v2, "matchWidth":Z
    :goto_3
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    move/from16 v18, v14

    .end local v14    # "optimize":Z
    .local v18, "optimize":Z
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v14, :cond_3

    const/4 v12, 0x1

    goto :goto_4

    :cond_3
    const/4 v12, 0x0

    .line 193
    .local v12, "matchHeight":Z
    :goto_4
    if-eqz v2, :cond_4

    if-eqz v12, :cond_4

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v14

    const/16 v19, 0x0

    cmpl-float v14, v14, v19

    if-lez v14, :cond_4

    const/4 v14, 0x1

    goto :goto_5

    :cond_4
    const/4 v14, 0x0

    .line 194
    .local v14, "ratio":Z
    :goto_5
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v19

    if-eqz v19, :cond_5

    if-eqz v14, :cond_5

    .line 195
    const/16 v18, 0x0

    .line 196
    move/from16 v14, v18

    goto :goto_8

    .line 198
    :cond_5
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v14, :cond_6

    .line 199
    const/16 v18, 0x0

    .line 200
    move/from16 v14, v18

    goto :goto_8

    .line 202
    :cond_6
    move/from16 v19, v2

    .end local v2    # "matchWidth":Z
    .local v19, "matchWidth":Z
    instance-of v2, v13, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-eqz v2, :cond_7

    .line 203
    const/4 v2, 0x0

    .line 204
    .end local v18    # "optimize":Z
    .local v2, "optimize":Z
    move v14, v2

    goto :goto_8

    .line 206
    .end local v2    # "optimize":Z
    .restart local v18    # "optimize":Z
    :cond_7
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v2

    if-nez v2, :cond_9

    .line 207
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    .line 189
    .end local v12    # "matchHeight":Z
    .end local v13    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "ratio":Z
    .end local v19    # "matchWidth":Z
    :cond_8
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p2

    move/from16 v14, v18

    goto :goto_2

    .line 208
    .restart local v12    # "matchHeight":Z
    .restart local v13    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v14    # "ratio":Z
    .restart local v19    # "matchWidth":Z
    :cond_9
    :goto_6
    const/4 v2, 0x0

    .line 209
    .end local v18    # "optimize":Z
    .restart local v2    # "optimize":Z
    move v14, v2

    goto :goto_8

    .line 189
    .end local v2    # "optimize":Z
    .end local v12    # "matchHeight":Z
    .end local v13    # "child":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v19    # "matchWidth":Z
    .local v14, "optimize":Z
    :cond_a
    move/from16 v18, v14

    .end local v14    # "optimize":Z
    .restart local v18    # "optimize":Z
    goto :goto_7

    .line 188
    .end local v15    # "i":I
    .end local v18    # "optimize":Z
    .restart local v14    # "optimize":Z
    :cond_b
    move/from16 v18, v14

    .line 214
    .end local v14    # "optimize":Z
    .restart local v18    # "optimize":Z
    :goto_7
    move/from16 v14, v18

    .end local v18    # "optimize":Z
    .restart local v14    # "optimize":Z
    :goto_8
    const-wide/16 v12, 0x1

    if-eqz v14, :cond_c

    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v2, :cond_c

    .line 215
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-wide/from16 v18, v6

    .end local v6    # "layoutTime":J
    .local v18, "layoutTime":J
    iget-wide v6, v2, Landroid/support/constraint/solver/Metrics;->measures:J

    add-long/2addr v6, v12

    iput-wide v6, v2, Landroid/support/constraint/solver/Metrics;->measures:J

    goto :goto_9

    .line 214
    .end local v18    # "layoutTime":J
    .restart local v6    # "layoutTime":J
    :cond_c
    move-wide/from16 v18, v6

    .line 218
    .end local v6    # "layoutTime":J
    .restart local v18    # "layoutTime":J
    :goto_9
    const/4 v2, 0x0

    .line 220
    .local v2, "allSolved":Z
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v3, v6, :cond_d

    if-eq v4, v6, :cond_e

    :cond_d
    if-eqz v11, :cond_f

    :cond_e
    const/4 v7, 0x1

    goto :goto_a

    :cond_f
    const/4 v7, 0x0

    :goto_a
    and-int/2addr v7, v14

    .line 222
    .end local v14    # "optimize":Z
    .local v7, "optimize":Z
    const/4 v14, 0x0

    .line 224
    .local v14, "computations":I
    if-eqz v7, :cond_18

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMaxWidth()I

    move-result v15

    move/from16 v12, p6

    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 229
    .end local p6    # "widthSize":I
    .local v12, "widthSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMaxHeight()I

    move-result v13

    move/from16 v15, p8

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 231
    .end local p8    # "heightSize":I
    .local v13, "heightSize":I
    if-ne v3, v6, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v15

    if-eq v15, v12, :cond_10

    .line 232
    invoke-virtual {v1, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 235
    :cond_10
    if-ne v4, v6, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v15

    if-eq v15, v13, :cond_11

    .line 236
    invoke-virtual {v1, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 239
    :cond_11
    if-ne v3, v6, :cond_12

    if-ne v4, v6, :cond_12

    .line 240
    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->directMeasure(Z)Z

    move-result v2

    .line 241
    const/4 v14, 0x2

    goto :goto_c

    .line 243
    :cond_12
    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->directMeasureSetup(Z)Z

    move-result v2

    .line 244
    if-ne v3, v6, :cond_13

    .line 245
    const/4 v15, 0x0

    invoke-virtual {v1, v11, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v17

    and-int v2, v2, v17

    .line 246
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 244
    :cond_13
    const/4 v15, 0x0

    .line 248
    :goto_b
    if-ne v4, v6, :cond_14

    .line 249
    const/4 v15, 0x1

    invoke-virtual {v1, v11, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v22

    and-int v2, v2, v22

    .line 250
    add-int/lit8 v14, v14, 0x1

    .line 253
    :cond_14
    :goto_c
    if-eqz v2, :cond_17

    .line 254
    if-ne v3, v6, :cond_15

    const/4 v15, 0x1

    goto :goto_d

    :cond_15
    const/4 v15, 0x0

    :goto_d
    if-ne v4, v6, :cond_16

    const/4 v6, 0x1

    goto :goto_e

    :cond_16
    const/4 v6, 0x0

    :goto_e
    invoke-virtual {v1, v15, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    .line 267
    :cond_17
    const/4 v6, 0x0

    goto :goto_f

    .line 224
    .end local v12    # "widthSize":I
    .end local v13    # "heightSize":I
    .restart local p6    # "widthSize":I
    .restart local p8    # "heightSize":I
    :cond_18
    move/from16 v12, p6

    move/from16 v15, p8

    const/4 v6, 0x0

    move v13, v15

    .line 267
    .end local p6    # "widthSize":I
    .end local p8    # "heightSize":I
    .restart local v12    # "widthSize":I
    .restart local v13    # "heightSize":I
    :goto_f
    if-eqz v2, :cond_1a

    const/4 v15, 0x2

    if-eq v14, v15, :cond_19

    goto :goto_10

    :cond_19
    move/from16 p6, v2

    move-object v6, v5

    move/from16 v16, v7

    move/from16 v17, v8

    move v7, v9

    move/from16 v22, v11

    move/from16 p8, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move-object v5, v1

    move-object v1, v0

    goto/16 :goto_24

    .line 268
    :cond_1a
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v15

    .line 269
    .local v15, "optimizations":I
    if-lez v8, :cond_1b

    .line 270
    invoke-direct/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->measureChildren(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 277
    :cond_1b
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 280
    .local v6, "sizeDependentWidgetsCount":I
    if-lez v8, :cond_1c

    .line 281
    move/from16 p6, v2

    .end local v2    # "allSolved":Z
    .local p6, "allSolved":Z
    const-string v2, "First pass"

    invoke-direct {v0, v1, v2, v9, v10}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    goto :goto_11

    .line 280
    .end local p6    # "allSolved":Z
    .restart local v2    # "allSolved":Z
    :cond_1c
    move/from16 p6, v2

    .line 288
    .end local v2    # "allSolved":Z
    .restart local p6    # "allSolved":Z
    :goto_11
    if-lez v6, :cond_37

    .line 289
    const/4 v2, 0x0

    .line 290
    .local v2, "needSolverPass":Z
    move/from16 p8, v2

    .end local v2    # "needSolverPass":Z
    .local p8, "needSolverPass":Z
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x1

    goto :goto_12

    :cond_1d
    const/4 v2, 0x0

    .line 292
    .local v2, "containerWrapWidth":Z
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1e

    const/16 v17, 0x1

    goto :goto_13

    :cond_1e
    const/16 v17, 0x0

    :goto_13
    move/from16 v3, v17

    .line 294
    .local v3, "containerWrapHeight":Z
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    move/from16 v17, v8

    .end local v8    # "childCount":I
    .local v17, "childCount":I
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 295
    .local v4, "minWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    move/from16 v22, v4

    .end local v4    # "minWidth":I
    .local v22, "minWidth":I
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 300
    .local v4, "minHeight":I
    const/4 v8, 0x0

    move/from16 v31, v4

    move/from16 v4, p8

    move/from16 p8, v12

    move v12, v8

    move/from16 v8, v22

    move/from16 v22, v11

    move/from16 v11, v31

    .local v4, "needSolverPass":Z
    .local v8, "minWidth":I
    .local v11, "minHeight":I
    .local v12, "i":I
    .local v22, "optimizeWrap":Z
    .local p8, "widthSize":I
    :goto_14
    if-ge v12, v6, :cond_25

    .line 301
    move/from16 v23, v13

    .end local v13    # "heightSize":I
    .local v23, "heightSize":I
    iget-object v13, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 302
    .local v13, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v24, v14

    .end local v14    # "computations":I
    .local v24, "computations":I
    instance-of v14, v13, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-nez v14, :cond_1f

    .line 303
    move-object/from16 v27, v5

    move/from16 v26, v9

    move/from16 v25, v15

    goto/16 :goto_1a

    .line 305
    :cond_1f
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    .line 306
    .local v14, "preWidth":I
    move/from16 v25, v15

    .end local v15    # "optimizations":I
    .local v25, "optimizations":I
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    .line 307
    .local v15, "preHeight":I
    move/from16 v26, v9

    const/4 v9, 0x1

    .end local v9    # "startingWidth":I
    .local v26, "startingWidth":I
    invoke-direct {v0, v5, v13, v9}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->measure(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)Z

    move-result v27

    or-int v4, v4, v27

    .line 308
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v9, :cond_20

    .line 309
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v28, v4

    move-object/from16 v27, v5

    .end local v4    # "needSolverPass":Z
    .end local v5    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v27, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v28, "needSolverPass":Z
    iget-wide v4, v9, Landroid/support/constraint/solver/Metrics;->measuredMatchWidgets:J

    const-wide/16 v20, 0x1

    add-long v4, v4, v20

    iput-wide v4, v9, Landroid/support/constraint/solver/Metrics;->measuredMatchWidgets:J

    goto :goto_15

    .line 308
    .end local v27    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v28    # "needSolverPass":Z
    .restart local v4    # "needSolverPass":Z
    .restart local v5    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    :cond_20
    move/from16 v28, v4

    move-object/from16 v27, v5

    .line 311
    .end local v4    # "needSolverPass":Z
    .end local v5    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v27    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v28    # "needSolverPass":Z
    :goto_15
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    .line 312
    .local v4, "measuredWidth":I
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    .line 313
    .local v5, "measuredHeight":I
    if-eq v4, v14, :cond_22

    .line 314
    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 315
    if-eqz v2, :cond_21

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v9

    if-le v9, v8, :cond_21

    .line 316
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v9

    move/from16 v29, v4

    .end local v4    # "measuredWidth":I
    .local v29, "measuredWidth":I
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 317
    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v9, v4

    .line 318
    .local v9, "w":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v8, v4

    .end local v8    # "minWidth":I
    .local v4, "minWidth":I
    goto :goto_16

    .line 315
    .end local v9    # "w":I
    .end local v29    # "measuredWidth":I
    .local v4, "measuredWidth":I
    .restart local v8    # "minWidth":I
    :cond_21
    move/from16 v29, v4

    .line 320
    .end local v4    # "measuredWidth":I
    .restart local v29    # "measuredWidth":I
    :goto_16
    const/4 v4, 0x1

    .end local v28    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    goto :goto_17

    .line 313
    .end local v29    # "measuredWidth":I
    .local v4, "measuredWidth":I
    .restart local v28    # "needSolverPass":Z
    :cond_22
    move/from16 v29, v4

    .end local v4    # "measuredWidth":I
    .restart local v29    # "measuredWidth":I
    move/from16 v4, v28

    .line 322
    .end local v28    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    :goto_17
    if-eq v5, v15, :cond_24

    .line 323
    invoke-virtual {v13, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 324
    if-eqz v3, :cond_23

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v9

    if-le v9, v11, :cond_23

    .line 325
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v9

    move/from16 v28, v4

    .end local v4    # "needSolverPass":Z
    .restart local v28    # "needSolverPass":Z
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 326
    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v9, v4

    .line 327
    .local v9, "h":I
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v11, v4

    .end local v11    # "minHeight":I
    .local v4, "minHeight":I
    goto :goto_18

    .line 324
    .end local v9    # "h":I
    .end local v28    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    .restart local v11    # "minHeight":I
    :cond_23
    move/from16 v28, v4

    .line 329
    .end local v4    # "needSolverPass":Z
    .restart local v28    # "needSolverPass":Z
    :goto_18
    const/4 v4, 0x1

    .end local v28    # "needSolverPass":Z
    .restart local v4    # "needSolverPass":Z
    goto :goto_19

    .line 322
    :cond_24
    move/from16 v28, v4

    .line 331
    :goto_19
    move-object v9, v13

    check-cast v9, Landroid/support/constraint/solver/widgets/VirtualLayout;

    .line 332
    .local v9, "virtualLayout":Landroid/support/constraint/solver/widgets/VirtualLayout;
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/VirtualLayout;->needSolverPass()Z

    move-result v28

    or-int v4, v4, v28

    .line 300
    .end local v5    # "measuredHeight":I
    .end local v9    # "virtualLayout":Landroid/support/constraint/solver/widgets/VirtualLayout;
    .end local v13    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "preWidth":I
    .end local v15    # "preHeight":I
    .end local v29    # "measuredWidth":I
    :goto_1a
    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v23

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v9, v26

    move-object/from16 v5, v27

    goto/16 :goto_14

    .end local v23    # "heightSize":I
    .end local v24    # "computations":I
    .end local v25    # "optimizations":I
    .end local v26    # "startingWidth":I
    .end local v27    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v5, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v9, "startingWidth":I
    .local v13, "heightSize":I
    .local v14, "computations":I
    .local v15, "optimizations":I
    :cond_25
    move-object/from16 v27, v5

    move/from16 v26, v9

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    .line 336
    .end local v5    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v9    # "startingWidth":I
    .end local v12    # "i":I
    .end local v13    # "heightSize":I
    .end local v14    # "computations":I
    .end local v15    # "optimizations":I
    .restart local v23    # "heightSize":I
    .restart local v24    # "computations":I
    .restart local v25    # "optimizations":I
    .restart local v26    # "startingWidth":I
    .restart local v27    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    const/4 v5, 0x2

    .line 337
    .local v5, "maxIterations":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1b
    if-ge v9, v5, :cond_34

    .line 338
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_1c
    if-ge v12, v6, :cond_32

    .line 339
    iget-object v13, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 340
    .local v13, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v14, v13, Landroid/support/constraint/solver/widgets/Helper;

    if-eqz v14, :cond_26

    instance-of v14, v13, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-eqz v14, :cond_2a

    :cond_26
    instance-of v14, v13, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v14, :cond_27

    .line 341
    goto :goto_1d

    .line 343
    :cond_27
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_28

    .line 344
    goto :goto_1d

    .line 346
    :cond_28
    if-eqz v7, :cond_29

    iget-object v14, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v14, v14, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v14, :cond_29

    iget-object v14, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v14, v14, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v14, :cond_29

    .line 348
    goto :goto_1d

    .line 350
    :cond_29
    instance-of v14, v13, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-eqz v14, :cond_2b

    .line 351
    nop

    .line 338
    .end local v13    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2a
    :goto_1d
    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v16, v7

    move-object/from16 v6, v27

    const-wide/16 v20, 0x1

    goto/16 :goto_21

    .line 354
    .restart local v13    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2b
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    .line 355
    .local v14, "preWidth":I
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    .line 356
    .local v15, "preHeight":I
    move/from16 v28, v5

    .end local v5    # "maxIterations":I
    .local v28, "maxIterations":I
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v5

    .line 358
    .local v5, "preBaselineDistance":I
    move/from16 v29, v6

    move/from16 v16, v7

    move-object/from16 v6, v27

    const/4 v7, 0x1

    .end local v7    # "optimize":Z
    .end local v27    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v16, "optimize":Z
    .local v29, "sizeDependentWidgetsCount":I
    invoke-direct {v0, v6, v13, v7}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->measure(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)Z

    move-result v27

    .line 362
    .local v27, "hasMeasure":Z
    or-int v4, v4, v27

    .line 366
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v7, :cond_2c

    .line 367
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v0, v7, Landroid/support/constraint/solver/Metrics;->measuredMatchWidgets:J

    const-wide/16 v20, 0x1

    add-long v0, v0, v20

    iput-wide v0, v7, Landroid/support/constraint/solver/Metrics;->measuredMatchWidgets:J

    goto :goto_1e

    .line 366
    :cond_2c
    const-wide/16 v20, 0x1

    .line 370
    :goto_1e
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    .line 371
    .local v0, "measuredWidth":I
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    .line 373
    .local v1, "measuredHeight":I
    if-eq v0, v14, :cond_2e

    .line 374
    invoke-virtual {v13, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 375
    if-eqz v2, :cond_2d

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v7

    if-le v7, v8, :cond_2d

    .line 376
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v7

    move/from16 v30, v0

    .end local v0    # "measuredWidth":I
    .local v30, "measuredWidth":I
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 377
    invoke-virtual {v13, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int/2addr v7, v0

    .line 378
    .local v7, "w":I
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_1f

    .line 375
    .end local v7    # "w":I
    .end local v30    # "measuredWidth":I
    .restart local v0    # "measuredWidth":I
    :cond_2d
    move/from16 v30, v0

    .line 383
    .end local v0    # "measuredWidth":I
    .restart local v30    # "measuredWidth":I
    :goto_1f
    const/4 v4, 0x1

    goto :goto_20

    .line 373
    .end local v30    # "measuredWidth":I
    .restart local v0    # "measuredWidth":I
    :cond_2e
    move/from16 v30, v0

    .line 385
    .end local v0    # "measuredWidth":I
    .restart local v30    # "measuredWidth":I
    :goto_20
    if-eq v1, v15, :cond_30

    .line 386
    invoke-virtual {v13, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 387
    if-eqz v3, :cond_2f

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v0

    if-le v0, v11, :cond_2f

    .line 388
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v0

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 389
    invoke-virtual {v13, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v0, v7

    .line 390
    .local v0, "h":I
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v11, v7

    .line 395
    .end local v0    # "h":I
    :cond_2f
    const/4 v0, 0x1

    move v4, v0

    .line 397
    :cond_30
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v0

    if-eq v5, v0, :cond_31

    .line 401
    const/4 v4, 0x1

    .line 338
    .end local v1    # "measuredHeight":I
    .end local v5    # "preBaselineDistance":I
    .end local v13    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "preWidth":I
    .end local v15    # "preHeight":I
    .end local v27    # "hasMeasure":Z
    .end local v30    # "measuredWidth":I
    :cond_31
    :goto_21
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v27, v6

    move/from16 v7, v16

    move/from16 v5, v28

    move/from16 v6, v29

    goto/16 :goto_1c

    .end local v16    # "optimize":Z
    .end local v28    # "maxIterations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    .local v5, "maxIterations":I
    .local v6, "sizeDependentWidgetsCount":I
    .local v7, "optimize":Z
    .local v27, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    :cond_32
    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v16, v7

    move-object/from16 v6, v27

    const-wide/16 v20, 0x1

    .line 404
    .end local v5    # "maxIterations":I
    .end local v7    # "optimize":Z
    .end local v12    # "i":I
    .end local v27    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v16    # "optimize":Z
    .restart local v28    # "maxIterations":I
    .restart local v29    # "sizeDependentWidgetsCount":I
    if-eqz v4, :cond_33

    .line 405
    const-string v0, "intermediate pass"

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v7, v26

    .end local v26    # "startingWidth":I
    .local v7, "startingWidth":I
    invoke-direct {v1, v5, v0, v7, v10}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 406
    const/4 v4, 0x0

    .line 337
    add-int/lit8 v9, v9, 0x1

    move-object v0, v1

    move-object v1, v5

    move-object/from16 v27, v6

    move/from16 v7, v16

    move/from16 v5, v28

    move/from16 v6, v29

    goto/16 :goto_1b

    .line 404
    .end local v7    # "startingWidth":I
    .restart local v26    # "startingWidth":I
    :cond_33
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v7, v26

    .end local v26    # "startingWidth":I
    .restart local v7    # "startingWidth":I
    goto :goto_22

    .line 337
    .end local v16    # "optimize":Z
    .end local v28    # "maxIterations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    .restart local v5    # "maxIterations":I
    .local v6, "sizeDependentWidgetsCount":I
    .local v7, "optimize":Z
    .restart local v26    # "startingWidth":I
    .restart local v27    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    :cond_34
    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v16, v7

    move/from16 v7, v26

    move-object/from16 v6, v27

    move-object v5, v1

    move-object v1, v0

    .line 411
    .end local v5    # "maxIterations":I
    .end local v9    # "j":I
    .end local v26    # "startingWidth":I
    .end local v27    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v7, "startingWidth":I
    .restart local v16    # "optimize":Z
    .restart local v28    # "maxIterations":I
    .restart local v29    # "sizeDependentWidgetsCount":I
    :goto_22
    if-eqz v4, :cond_38

    .line 412
    const-string v0, "2nd pass"

    invoke-direct {v1, v5, v0, v7, v10}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 413
    const/4 v0, 0x0

    .line 414
    .end local v4    # "needSolverPass":Z
    .local v0, "needSolverPass":Z
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    if-ge v4, v8, :cond_35

    .line 415
    invoke-virtual {v5, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 416
    const/4 v0, 0x1

    .line 418
    :cond_35
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    if-ge v4, v11, :cond_36

    .line 419
    invoke-virtual {v5, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 420
    const/4 v0, 0x1

    .line 422
    :cond_36
    if-eqz v0, :cond_38

    .line 423
    const-string v4, "3rd pass"

    invoke-direct {v1, v5, v4, v7, v10}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    goto :goto_23

    .line 288
    .end local v0    # "needSolverPass":Z
    .end local v2    # "containerWrapWidth":Z
    .end local v3    # "containerWrapHeight":Z
    .end local v16    # "optimize":Z
    .end local v17    # "childCount":I
    .end local v22    # "optimizeWrap":Z
    .end local v23    # "heightSize":I
    .end local v24    # "computations":I
    .end local v25    # "optimizations":I
    .end local v28    # "maxIterations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    .end local p8    # "widthSize":I
    .local v5, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "sizeDependentWidgetsCount":I
    .local v7, "optimize":Z
    .local v8, "childCount":I
    .local v9, "startingWidth":I
    .local v11, "optimizeWrap":Z
    .local v12, "widthSize":I
    .local v13, "heightSize":I
    .local v14, "computations":I
    .local v15, "optimizations":I
    :cond_37
    move/from16 v29, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move v7, v9

    move/from16 v22, v11

    move/from16 p8, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v6, v5

    move-object v5, v1

    move-object v1, v0

    .line 427
    .end local v5    # "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v8    # "childCount":I
    .end local v9    # "startingWidth":I
    .end local v11    # "optimizeWrap":Z
    .end local v12    # "widthSize":I
    .end local v13    # "heightSize":I
    .end local v14    # "computations":I
    .end local v15    # "optimizations":I
    .local v6, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v7, "startingWidth":I
    .restart local v16    # "optimize":Z
    .restart local v17    # "childCount":I
    .restart local v22    # "optimizeWrap":Z
    .restart local v23    # "heightSize":I
    .restart local v24    # "computations":I
    .restart local v25    # "optimizations":I
    .restart local v29    # "sizeDependentWidgetsCount":I
    .restart local p8    # "widthSize":I
    :cond_38
    :goto_23
    move/from16 v0, v25

    .end local v25    # "optimizations":I
    .local v0, "optimizations":I
    invoke-virtual {v5, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 432
    .end local v0    # "optimizations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    :goto_24
    return-wide v18
.end method

.method public updateHierarchy(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .locals 5
    .param p1, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 57
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 60
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 61
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    .line 62
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1

    .line 63
    :cond_0
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 67
    return-void
.end method
