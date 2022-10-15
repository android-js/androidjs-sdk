.class public Landroid/support/constraint/solver/widgets/VirtualLayout;
.super Landroid/support/constraint/solver/widgets/HelperWidget;
.source "VirtualLayout.java"


# instance fields
.field protected mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

.field private mNeedsCallFromSolver:Z

.field private mPaddingBottom:I

.field private mPaddingEnd:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingStart:I

.field private mPaddingTop:I

.field private mResolvedPaddingLeft:I

.field private mResolvedPaddingRight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/HelperWidget;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingTop:I

    .line 29
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingBottom:I

    .line 30
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingLeft:I

    .line 31
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingRight:I

    .line 32
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingStart:I

    .line 33
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingEnd:I

    .line 34
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 35
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 37
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    .line 38
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasuredWidth:I

    .line 39
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasuredHeight:I

    .line 41
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    return-void
.end method


# virtual methods
.method public applyRtl(Z)V
    .locals 2
    .param p1, "isRtl"    # Z

    .line 72
    iget v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingStart:I

    if-gtz v0, :cond_0

    iget v1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingEnd:I

    if-lez v1, :cond_2

    .line 73
    :cond_0
    if-eqz p1, :cond_1

    .line 74
    iget v1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingEnd:I

    iput v1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 75
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    goto :goto_0

    .line 77
    :cond_1
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 78
    iget v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingEnd:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 81
    :cond_2
    :goto_0
    return-void
.end method

.method public captureWidgets()V
    .locals 3

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mWidgetsCount:I

    if-ge v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    .line 132
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v1, :cond_0

    .line 133
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setInVirtualLayout(Z)V

    .line 130
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getMeasuredHeight()I
    .locals 1

    .line 143
    iget v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .line 139
    iget v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasuredWidth:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 98
    iget v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 100
    iget v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 102
    iget v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 96
    iget v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingTop:I

    return v0
.end method

.method public measure(IIII)V
    .locals 0
    .param p1, "widthMode"    # I
    .param p2, "widthSize"    # I
    .param p3, "heightMode"    # I
    .param p4, "heightSize"    # I

    .line 122
    return-void
.end method

.method protected measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 2
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "horizontalBehavior"    # Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .param p3, "horizontalDimension"    # I
    .param p4, "verticalBehavior"    # Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .param p5, "verticalDimension"    # I

    .line 207
    :goto_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/VirtualLayout;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/VirtualLayout;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 209
    .local v0, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 210
    .end local v0    # "parent":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object p2, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 212
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object p4, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 213
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput p3, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 214
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput p5, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 215
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {v0, p1, v1}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 216
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 217
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 218
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 219
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 220
    return-void
.end method

.method protected measureChildren()Z
    .locals 9

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "measurer":Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    .line 156
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 157
    return v1

    .line 160
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mWidgetsCount:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_8

    .line 161
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v3, v3, v2

    .line 162
    .local v3, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v3, :cond_2

    .line 163
    goto :goto_2

    .line 166
    :cond_2
    instance-of v5, v3, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v5, :cond_3

    .line 167
    goto :goto_2

    .line 170
    :cond_3
    invoke-virtual {v3, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    .line 171
    .local v5, "widthBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    .line 173
    .local v6, "heightBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_4

    iget v7, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v7, v4, :cond_4

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_4

    iget v7, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v7, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 178
    .local v4, "skip":Z
    :goto_1
    if-eqz v4, :cond_5

    .line 181
    goto :goto_2

    .line 184
    :cond_5
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_6

    .line 185
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 187
    :cond_6
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_7

    .line 188
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 190
    :cond_7
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object v5, v7, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 191
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object v6, v7, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 192
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    iput v8, v7, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 193
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    iput v8, v7, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 194
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {v0, v3, v7}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 195
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v7, v7, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {v3, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 196
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v7, v7, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {v3, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 197
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v7, v7, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {v3, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 160
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v4    # "skip":Z
    .end local v5    # "widthBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v6    # "heightBehavior":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v2    # "i":I
    :cond_8
    return v4
.end method

.method public needSolverPass()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    return v0
.end method

.method protected needsCallbackFromSolver(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 109
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    .line 110
    return-void
.end method

.method public setMeasure(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 147
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasuredWidth:I

    .line 148
    iput p2, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasuredHeight:I

    .line 149
    return-void
.end method

.method public setPadding(I)V
    .locals 0
    .param p1, "value"    # I

    .line 48
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingLeft:I

    .line 49
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingTop:I

    .line 50
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingRight:I

    .line 51
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingBottom:I

    .line 52
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingStart:I

    .line 53
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingEnd:I

    .line 54
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0
    .param p1, "value"    # I

    .line 93
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingBottom:I

    .line 94
    return-void
.end method

.method public setPaddingEnd(I)V
    .locals 0
    .param p1, "value"    # I

    .line 63
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingEnd:I

    .line 64
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0
    .param p1, "value"    # I

    .line 67
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingLeft:I

    .line 68
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 69
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0
    .param p1, "value"    # I

    .line 88
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingRight:I

    .line 89
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 90
    return-void
.end method

.method public setPaddingStart(I)V
    .locals 0
    .param p1, "value"    # I

    .line 57
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingStart:I

    .line 58
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 59
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 60
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0
    .param p1, "value"    # I

    .line 84
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingTop:I

    .line 85
    return-void
.end method

.method public updateConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .locals 0
    .param p1, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 126
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/VirtualLayout;->captureWidgets()V

    .line 127
    return-void
.end method
