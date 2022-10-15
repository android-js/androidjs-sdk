.class public Landroid/support/constraint/Barrier;
.super Landroid/support/constraint/ConstraintHelper;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final END:I = 0x6

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final START:I = 0x5

.field public static final TOP:I = 0x2


# instance fields
.field private mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

.field private mIndicatedType:I

.field private mResolvedType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;)V

    .line 119
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    .line 130
    return-void
.end method

.method private updateType(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZ)V
    .locals 6
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "type"    # I
    .param p3, "isRtl"    # Z

    .line 151
    iput p2, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/16 v5, 0x11

    if-ge v0, v5, :cond_1

    .line 155
    iget v0, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne v0, v4, :cond_0

    .line 156
    iput v2, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_0

    .line 157
    :cond_0
    if-ne v0, v3, :cond_5

    .line 158
    iput v1, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_0

    .line 162
    :cond_1
    if-eqz p3, :cond_3

    .line 163
    iget v0, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne v0, v4, :cond_2

    .line 164
    iput v1, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_0

    .line 165
    :cond_2
    if-ne v0, v3, :cond_5

    .line 166
    iput v2, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_0

    .line 169
    :cond_3
    iget v0, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne v0, v4, :cond_4

    .line 170
    iput v2, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_0

    .line 171
    :cond_4
    if-ne v0, v3, :cond_5

    .line 172
    iput v1, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    .line 176
    :cond_5
    :goto_0
    instance-of v0, p1, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v0, :cond_6

    .line 177
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/solver/widgets/Barrier;

    .line 178
    .local v0, "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    iget v1, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Barrier;->setBarrierType(I)V

    .line 180
    .end local v0    # "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    :cond_6
    return-void
.end method


# virtual methods
.method public allowsGoneWidget()Z
    .locals 1

    .line 220
    iget-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/Barrier;->allowsGoneWidget()Z

    move-result v0

    return v0
.end method

.method public getMargin()I
    .locals 1

    .line 240
    iget-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/Barrier;->getMargin()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 138
    iget v0, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 193
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 194
    new-instance v0, Landroid/support/constraint/solver/widgets/Barrier;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Barrier;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    .line 195
    if-eqz p1, :cond_4

    .line 196
    invoke-virtual {p0}, Landroid/support/constraint/Barrier;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 197
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 198
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 199
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 200
    .local v3, "attr":I
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_barrierDirection:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    .line 201
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/constraint/Barrier;->setType(I)V

    goto :goto_1

    .line 202
    :cond_0
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_barrierAllowsGoneWidgets:I

    if-ne v3, v4, :cond_1

    .line 203
    iget-object v4, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    goto :goto_1

    .line 204
    :cond_1
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_barrierMargin:I

    if-ne v3, v4, :cond_2

    .line 205
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 206
    .local v4, "margin":I
    iget-object v5, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    invoke-virtual {v5, v4}, Landroid/support/constraint/solver/widgets/Barrier;->setMargin(I)V

    .line 198
    .end local v3    # "attr":I
    .end local v4    # "margin":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "N":I
    :cond_4
    iget-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    iput-object v0, p0, Landroid/support/constraint/Barrier;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    .line 212
    invoke-virtual {p0}, Landroid/support/constraint/Barrier;->validateParams()V

    .line 213
    return-void
.end method

.method public loadParameters(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/support/constraint/solver/widgets/HelperWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 4
    .param p1, "constraint"    # Landroid/support/constraint/ConstraintSet$Constraint;
    .param p2, "child"    # Landroid/support/constraint/solver/widgets/HelperWidget;
    .param p3, "layoutParams"    # Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/ConstraintSet$Constraint;",
            "Landroid/support/constraint/solver/widgets/HelperWidget;",
            "Landroid/support/constraint/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 254
    .local p4, "mapIdToWidget":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/constraint/ConstraintHelper;->loadParameters(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/support/constraint/solver/widgets/HelperWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 255
    instance-of v0, p2, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v0, :cond_0

    .line 256
    move-object v0, p2

    check-cast v0, Landroid/support/constraint/solver/widgets/Barrier;

    .line 257
    .local v0, "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/HelperWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 258
    .local v1, "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v2

    .line 259
    .local v2, "isRtl":Z
    iget-object v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierDirection:I

    invoke-direct {p0, v0, v3, v2}, Landroid/support/constraint/Barrier;->updateType(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZ)V

    .line 260
    iget-object v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-boolean v3, v3, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    .line 261
    iget-object v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierMargin:I

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/widgets/Barrier;->setMargin(I)V

    .line 263
    .end local v0    # "barrier":Landroid/support/constraint/solver/widgets/Barrier;
    .end local v1    # "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .end local v2    # "isRtl":Z
    :cond_0
    return-void
.end method

.method public resolveRtl(Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)V
    .locals 1
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "isRtl"    # Z

    .line 184
    iget v0, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    invoke-direct {p0, p1, v0, p2}, Landroid/support/constraint/Barrier;->updateType(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZ)V

    .line 185
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 1
    .param p1, "supportGone"    # Z

    .line 216
    iget-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    .line 217
    return-void
.end method

.method public setDpMargin(I)V
    .locals 3
    .param p1, "margin"    # I

    .line 229
    invoke-virtual {p0}, Landroid/support/constraint/Barrier;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 230
    .local v0, "density":F
    int-to-float v1, p1

    mul-float v1, v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 231
    .local v1, "px":I
    iget-object v2, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/widgets/Barrier;->setMargin(I)V

    .line 232
    return-void
.end method

.method public setMargin(I)V
    .locals 1
    .param p1, "margin"    # I

    .line 249
    iget-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Barrier;->setMargin(I)V

    .line 250
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 147
    iput p1, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    .line 148
    return-void
.end method
