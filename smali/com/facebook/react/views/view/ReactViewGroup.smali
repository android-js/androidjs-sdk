.class public Lcom/facebook/react/views/view/ReactViewGroup;
.super Landroid/view/ViewGroup;
.source "ReactViewGroup.java"

# interfaces
.implements Lcom/facebook/react/touch/ReactInterceptingViewGroup;
.implements Lcom/facebook/react/uimanager/ReactClippingViewGroup;
.implements Lcom/facebook/react/uimanager/ReactPointerEventsView;
.implements Lcom/facebook/react/touch/ReactHitSlopView;
.implements Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final DEFAULT_BACKGROUND_COLOR:I

.field private static final sDefaultLayoutParam:Landroid/view/ViewGroup$LayoutParams;

.field private static final sHelperRect:Landroid/graphics/Rect;


# instance fields
.field private mAllChildren:[Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAllChildrenCount:I

.field private mBackfaceOpacity:F

.field private mBackfaceVisibility:Ljava/lang/String;

.field private mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mClippingRect:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

.field private mHitSlopRect:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mNeedsOffscreenAlphaCompositing:Z

.field private mOnInterceptTouchEventListener:Lcom/facebook/react/touch/OnInterceptTouchEventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOverflow:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPath:Landroid/graphics/Path;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

.field private mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRemoveClippedSubviews:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/react/views/view/ReactViewGroup;->sDefaultLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 112
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    .line 116
    iput-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mNeedsOffscreenAlphaCompositing:Z

    .line 120
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceOpacity:F

    .line 121
    const-string v1, "visible"

    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceVisibility:Ljava/lang/String;

    .line 125
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setClipChildren(Z)V

    .line 126
    new-instance v0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/views/view/ReactViewGroup;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p1, "x1"    # Landroid/view/View;

    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateSubviewClipStatus(Landroid/view/View;)V

    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 577
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 578
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 579
    .local v1, "count":I
    array-length v2, v0

    .line 580
    .local v2, "size":I
    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    .line 581
    if-ne v2, v1, :cond_0

    .line 582
    add-int/lit8 v4, v2, 0xc

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 583
    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 586
    :cond_0
    iget v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    aput-object p1, v0, v3

    goto :goto_1

    .line 587
    :cond_1
    if-ge p2, v1, :cond_3

    .line 588
    if-ne v2, v1, :cond_2

    .line 589
    add-int/lit8 v4, v2, 0xc

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 590
    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0, v3, v4, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 591
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    goto :goto_0

    .line 594
    :cond_2
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    :goto_0
    aput-object p1, v0, p2

    .line 597
    iget v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 601
    :goto_1
    return-void

    .line 599
    :cond_3
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private dispatchOverflowDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 705
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflow:Ljava/lang/String;

    if-eqz v2, :cond_1e

    .line 706
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x48916256

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2

    const v5, 0x1bd1f072

    if-eq v4, v5, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v4, "visible"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const-string v4, "hidden"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1d

    if-eq v3, v7, :cond_3

    move-object v7, v1

    goto/16 :goto_d

    .line 713
    :cond_3
    const/4 v2, 0x0

    .line 714
    .local v2, "left":F
    const/4 v3, 0x0

    .line 715
    .local v3, "top":F
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 716
    .local v4, "right":F
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 718
    .local v5, "bottom":F
    const/4 v8, 0x0

    .line 720
    .local v8, "hasClipPath":Z
    iget-object v9, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-eqz v9, :cond_1c

    .line 721
    invoke-virtual {v9}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v9

    .line 723
    .local v9, "borderWidth":Landroid/graphics/RectF;
    iget v10, v9, Landroid/graphics/RectF;->top:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_4

    iget v10, v9, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_4

    iget v10, v9, Landroid/graphics/RectF;->bottom:F

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_4

    iget v10, v9, Landroid/graphics/RectF;->right:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    .line 727
    :cond_4
    iget v10, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v10

    .line 728
    iget v10, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v10

    .line 729
    iget v10, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v10

    .line 730
    iget v10, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v10

    .line 733
    :cond_5
    iget-object v10, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-virtual {v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getFullBorderRadius()F

    move-result v10

    .line 734
    .local v10, "borderRadius":F
    iget-object v12, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    sget-object v13, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_LEFT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 735
    invoke-virtual {v12, v10, v13}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v12

    .line 737
    .local v12, "topLeftBorderRadius":F
    iget-object v13, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    sget-object v14, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_RIGHT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 738
    invoke-virtual {v13, v10, v14}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v13

    .line 740
    .local v13, "topRightBorderRadius":F
    iget-object v14, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    sget-object v15, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_LEFT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 741
    invoke-virtual {v14, v10, v15}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v14

    .line 743
    .local v14, "bottomLeftBorderRadius":F
    iget-object v15, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    sget-object v6, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_RIGHT:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 744
    invoke-virtual {v15, v10, v6}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadiusOrDefaultTo(FLcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v6

    .line 747
    .local v6, "bottomRightBorderRadius":F
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-lt v15, v11, :cond_17

    .line 748
    iget v11, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mLayoutDirection:I

    if-ne v11, v7, :cond_6

    const/4 v11, 0x1

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    .line 749
    .local v11, "isRTL":Z
    :goto_1
    iget-object v15, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    sget-object v7, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_START:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 750
    invoke-virtual {v15, v7}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v7

    .line 752
    .local v7, "topStartBorderRadius":F
    iget-object v15, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move/from16 v16, v8

    .end local v8    # "hasClipPath":Z
    .local v16, "hasClipPath":Z
    sget-object v8, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->TOP_END:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 753
    invoke-virtual {v15, v8}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v8

    .line 755
    .local v8, "topEndBorderRadius":F
    iget-object v15, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move/from16 v17, v10

    .end local v10    # "borderRadius":F
    .local v17, "borderRadius":F
    sget-object v10, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_START:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 756
    invoke-virtual {v15, v10}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v10

    .line 758
    .local v10, "bottomStartBorderRadius":F
    iget-object v15, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    sget-object v1, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;->BOTTOM_END:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;

    .line 759
    invoke-virtual {v15, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getBorderRadius(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderRadiusLocation;)F

    move-result v1

    .line 762
    .local v1, "bottomEndBorderRadius":F
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v15

    move-object/from16 v18, v9

    .end local v9    # "borderWidth":Landroid/graphics/RectF;
    .local v18, "borderWidth":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v15, v9}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 763
    invoke-static {v7}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 764
    move v7, v12

    .line 767
    :cond_7
    invoke-static {v8}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 768
    move v8, v13

    .line 771
    :cond_8
    invoke-static {v10}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 772
    move v10, v14

    .line 775
    :cond_9
    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 776
    move v1, v6

    .line 779
    :cond_a
    if-eqz v11, :cond_b

    move v9, v8

    goto :goto_2

    :cond_b
    move v9, v7

    .line 781
    .local v9, "directionAwareTopLeftRadius":F
    :goto_2
    if-eqz v11, :cond_c

    move v15, v7

    goto :goto_3

    :cond_c
    move v15, v8

    .line 783
    .local v15, "directionAwareTopRightRadius":F
    :goto_3
    if-eqz v11, :cond_d

    move/from16 v19, v1

    goto :goto_4

    :cond_d
    move/from16 v19, v10

    .line 785
    .local v19, "directionAwareBottomLeftRadius":F
    :goto_4
    if-eqz v11, :cond_e

    move/from16 v20, v10

    goto :goto_5

    :cond_e
    move/from16 v20, v1

    .line 788
    .local v20, "directionAwareBottomRightRadius":F
    :goto_5
    move v12, v9

    .line 789
    move v13, v15

    .line 790
    move/from16 v14, v19

    .line 791
    move/from16 v6, v20

    .line 792
    .end local v9    # "directionAwareTopLeftRadius":F
    .end local v15    # "directionAwareTopRightRadius":F
    .end local v19    # "directionAwareBottomLeftRadius":F
    .end local v20    # "directionAwareBottomRightRadius":F
    goto :goto_a

    .line 793
    :cond_f
    if-eqz v11, :cond_10

    move v9, v8

    goto :goto_6

    :cond_10
    move v9, v7

    .line 795
    .restart local v9    # "directionAwareTopLeftRadius":F
    :goto_6
    if-eqz v11, :cond_11

    move v15, v7

    goto :goto_7

    :cond_11
    move v15, v8

    .line 797
    .restart local v15    # "directionAwareTopRightRadius":F
    :goto_7
    if-eqz v11, :cond_12

    move/from16 v19, v1

    goto :goto_8

    :cond_12
    move/from16 v19, v10

    .line 799
    .restart local v19    # "directionAwareBottomLeftRadius":F
    :goto_8
    if-eqz v11, :cond_13

    move/from16 v20, v10

    goto :goto_9

    :cond_13
    move/from16 v20, v1

    .line 802
    .restart local v20    # "directionAwareBottomRightRadius":F
    :goto_9
    invoke-static {v9}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v21

    if-nez v21, :cond_14

    .line 803
    move v12, v9

    .line 806
    :cond_14
    invoke-static {v15}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v21

    if-nez v21, :cond_15

    .line 807
    move v13, v15

    .line 810
    :cond_15
    invoke-static/range {v19 .. v19}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v21

    if-nez v21, :cond_16

    .line 811
    move/from16 v14, v19

    .line 814
    :cond_16
    invoke-static/range {v20 .. v20}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v21

    if-nez v21, :cond_18

    .line 815
    move/from16 v6, v20

    goto :goto_a

    .line 747
    .end local v1    # "bottomEndBorderRadius":F
    .end local v7    # "topStartBorderRadius":F
    .end local v11    # "isRTL":Z
    .end local v15    # "directionAwareTopRightRadius":F
    .end local v16    # "hasClipPath":Z
    .end local v17    # "borderRadius":F
    .end local v18    # "borderWidth":Landroid/graphics/RectF;
    .end local v19    # "directionAwareBottomLeftRadius":F
    .end local v20    # "directionAwareBottomRightRadius":F
    .local v8, "hasClipPath":Z
    .local v9, "borderWidth":Landroid/graphics/RectF;
    .local v10, "borderRadius":F
    :cond_17
    move/from16 v16, v8

    move-object/from16 v18, v9

    move/from16 v17, v10

    .line 820
    .end local v8    # "hasClipPath":Z
    .end local v9    # "borderWidth":Landroid/graphics/RectF;
    .end local v10    # "borderRadius":F
    .restart local v16    # "hasClipPath":Z
    .restart local v17    # "borderRadius":F
    .restart local v18    # "borderWidth":Landroid/graphics/RectF;
    :cond_18
    :goto_a
    const/4 v1, 0x0

    cmpl-float v7, v12, v1

    if-gtz v7, :cond_1a

    cmpl-float v7, v13, v1

    if-gtz v7, :cond_1a

    cmpl-float v7, v6, v1

    if-gtz v7, :cond_1a

    cmpl-float v7, v14, v1

    if-lez v7, :cond_19

    goto :goto_b

    :cond_19
    move-object/from16 v7, p1

    goto/16 :goto_c

    .line 824
    :cond_1a
    :goto_b
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    if-nez v1, :cond_1b

    .line 825
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    .line 828
    :cond_1b
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 829
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v8, 0x8

    new-array v8, v8, [F

    move-object/from16 v9, v18

    .end local v18    # "borderWidth":Landroid/graphics/RectF;
    .restart local v9    # "borderWidth":Landroid/graphics/RectF;
    iget v10, v9, Landroid/graphics/RectF;->left:F

    sub-float v10, v12, v10

    .line 832
    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/4 v15, 0x0

    aput v10, v8, v15

    iget v10, v9, Landroid/graphics/RectF;->top:F

    sub-float v10, v12, v10

    .line 833
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/4 v15, 0x1

    aput v10, v8, v15

    const/4 v10, 0x2

    iget v15, v9, Landroid/graphics/RectF;->right:F

    sub-float v15, v13, v15

    .line 834
    invoke-static {v15, v11}, Ljava/lang/Math;->max(FF)F

    move-result v15

    aput v15, v8, v10

    const/4 v10, 0x3

    iget v15, v9, Landroid/graphics/RectF;->top:F

    sub-float v15, v13, v15

    .line 835
    invoke-static {v15, v11}, Ljava/lang/Math;->max(FF)F

    move-result v15

    aput v15, v8, v10

    const/4 v10, 0x4

    iget v15, v9, Landroid/graphics/RectF;->right:F

    sub-float v15, v6, v15

    .line 836
    invoke-static {v15, v11}, Ljava/lang/Math;->max(FF)F

    move-result v15

    aput v15, v8, v10

    const/4 v10, 0x5

    iget v15, v9, Landroid/graphics/RectF;->bottom:F

    sub-float v15, v6, v15

    .line 837
    invoke-static {v15, v11}, Ljava/lang/Math;->max(FF)F

    move-result v15

    aput v15, v8, v10

    const/4 v10, 0x6

    iget v15, v9, Landroid/graphics/RectF;->left:F

    sub-float v15, v14, v15

    .line 838
    invoke-static {v15, v11}, Ljava/lang/Math;->max(FF)F

    move-result v15

    aput v15, v8, v10

    const/4 v10, 0x7

    iget v15, v9, Landroid/graphics/RectF;->bottom:F

    sub-float v15, v14, v15

    .line 839
    invoke-static {v15, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    aput v11, v8, v10

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 829
    invoke-virtual {v1, v7, v8, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 842
    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    move-object/from16 v7, p1

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 843
    const/4 v8, 0x1

    move/from16 v16, v8

    .end local v16    # "hasClipPath":Z
    .restart local v8    # "hasClipPath":Z
    goto :goto_c

    .line 720
    .end local v6    # "bottomRightBorderRadius":F
    .end local v9    # "borderWidth":Landroid/graphics/RectF;
    .end local v12    # "topLeftBorderRadius":F
    .end local v13    # "topRightBorderRadius":F
    .end local v14    # "bottomLeftBorderRadius":F
    .end local v17    # "borderRadius":F
    :cond_1c
    move-object v7, v1

    move/from16 v16, v8

    .line 847
    .end local v8    # "hasClipPath":Z
    .restart local v16    # "hasClipPath":Z
    :goto_c
    if-nez v16, :cond_1f

    .line 848
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto :goto_d

    .line 708
    .end local v2    # "left":F
    .end local v3    # "top":F
    .end local v4    # "right":F
    .end local v5    # "bottom":F
    .end local v16    # "hasClipPath":Z
    :cond_1d
    move-object v7, v1

    iget-object v1, v0, Lcom/facebook/react/views/view/ReactViewGroup;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_1f

    .line 709
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    goto :goto_d

    .line 705
    :cond_1e
    move-object v7, v1

    .line 855
    :cond_1f
    :goto_d
    return-void
.end method

.method private getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;
    .locals 5

    .line 626
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-nez v0, :cond_1

    .line 627
    new-instance v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    .line 628
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 629
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 632
    if-nez v0, :cond_0

    .line 633
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-direct {p0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 635
    :cond_0
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 637
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-direct {p0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 640
    .end local v1    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 641
    nop

    .line 642
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result v1

    iput v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mLayoutDirection:I

    .line 645
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    iget v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mLayoutDirection:I

    invoke-virtual {v1, v2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setResolvedLayoutDirection(I)Z

    .line 648
    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    return-object v0
.end method

.method private indexOfChildInAllChildren(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 566
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 567
    .local v0, "count":I
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    .line 568
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 569
    aget-object v3, v1, v2

    if-ne v3, p1, :cond_0

    .line 570
    return v2

    .line 568
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 573
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private removeFromArray(I)V
    .locals 5
    .param p1, "index"    # I

    .line 605
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 606
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 607
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    .line 608
    iget v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    aput-object v3, v0, v2

    goto :goto_0

    .line 609
    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    .line 610
    add-int/lit8 v2, p1, 0x1

    sub-int v4, v1, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    iget v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    aput-object v3, v0, v2

    .line 615
    :goto_0
    return-void

    .line 613
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method private updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 677
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 678
    return-void
.end method

.method private updateClippingToRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "clippingRect"    # Landroid/graphics/Rect;

    .line 351
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "clippedSoFar":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v1, v2, :cond_1

    .line 354
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateSubviewClipStatus(Landroid/graphics/Rect;II)V

    .line 355
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 356
    add-int/lit8 v0, v0, 0x1

    .line 353
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private updateSubviewClipStatus(Landroid/graphics/Rect;II)V
    .locals 8
    .param p1, "clippingRect"    # Landroid/graphics/Rect;
    .param p2, "idx"    # I
    .param p3, "clippedSoFar"    # I

    .line 362
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    aget-object v0, v0, p2

    .line 363
    .local v0, "child":Landroid/view/View;
    sget-object v1, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 364
    sget-object v1, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget-object v2, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sget-object v3, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sget-object v4, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 365
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    .line 366
    .local v1, "intersects":Z
    const/4 v2, 0x0

    .line 373
    .local v2, "needUpdateClippingRecursive":Z
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    .line 374
    .local v3, "animation":Landroid/view/animation/Animation;
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 375
    .local v5, "isAnimating":Z
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_1

    if-nez v5, :cond_1

    .line 378
    sub-int v6, p2, p3

    invoke-super {p0, v6, v4}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 379
    const/4 v2, 0x1

    goto :goto_1

    .line 380
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_2

    .line 381
    sub-int v6, p2, p3

    sget-object v7, Lcom/facebook/react/views/view/ReactViewGroup;->sDefaultLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    invoke-super {p0, v0, v6, v7, v4}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 382
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    .line 383
    const/4 v2, 0x1

    goto :goto_1

    .line 384
    :cond_2
    if-eqz v1, :cond_3

    .line 386
    const/4 v2, 0x1

    .line 388
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 389
    instance-of v4, v0, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    if-eqz v4, :cond_4

    .line 392
    move-object v4, v0

    check-cast v4, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    .line 393
    .local v4, "clippingChild":Lcom/facebook/react/uimanager/ReactClippingViewGroup;
    invoke-interface {v4}, Lcom/facebook/react/uimanager/ReactClippingViewGroup;->getRemoveClippedSubviews()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 394
    invoke-interface {v4}, Lcom/facebook/react/uimanager/ReactClippingViewGroup;->updateClippingRect()V

    .line 398
    .end local v4    # "clippingChild":Lcom/facebook/react/uimanager/ReactClippingViewGroup;
    :cond_4
    return-void
.end method

.method private updateSubviewClipStatus(Landroid/view/View;)V
    .locals 6
    .param p1, "subview"    # Landroid/view/View;

    .line 401
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 410
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    sget-object v1, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget-object v2, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sget-object v3, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sget-object v4, Lcom/facebook/react/views/view/ReactViewGroup;->sHelperRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 411
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v0

    .line 414
    .local v0, "intersects":Z
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 416
    .local v1, "oldIntersects":Z
    :goto_0
    if-eq v0, v1, :cond_4

    .line 417
    const/4 v2, 0x0

    .line 418
    .local v2, "clippedSoFar":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v3, v4, :cond_4

    .line 419
    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v5, v4, v3

    if-ne v5, p1, :cond_2

    .line 420
    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v3, v2}, Lcom/facebook/react/views/view/ReactViewGroup;->updateSubviewClipStatus(Landroid/graphics/Rect;II)V

    .line 421
    goto :goto_2

    .line 423
    :cond_2
    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_3

    .line 424
    add-int/lit8 v2, v2, 0x1

    .line 418
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 428
    .end local v2    # "clippedSoFar":I
    .end local v3    # "i":I
    :cond_4
    :goto_2
    return-void

    .line 402
    .end local v0    # "intersects":Z
    .end local v1    # "oldIntersects":Z
    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 449
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->handleAddView(Landroid/view/View;)V

    .line 450
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 452
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 453
    return-void
.end method

.method addViewWithSubviewClippingEnabled(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 516
    sget-object v0, Lcom/facebook/react/views/view/ReactViewGroup;->sDefaultLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->addViewWithSubviewClippingEnabled(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 517
    return-void
.end method

.method addViewWithSubviewClippingEnabled(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 521
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 522
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->addInArray(Landroid/view/View;I)V

    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, "clippedSoFar":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 529
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 530
    add-int/lit8 v0, v0, 0x1

    .line 528
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p2, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateSubviewClipStatus(Landroid/graphics/Rect;II)V

    .line 534
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 535
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 683
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->dispatchOverflowDraw(Landroid/graphics/Canvas;)V

    .line 684
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Ljava/lang/StackOverflowError;
    invoke-static {p0}, Lcom/facebook/react/uimanager/RootViewUtil;->getRootView(Landroid/view/View;)Lcom/facebook/react/uimanager/RootView;

    move-result-object v1

    .line 691
    .local v1, "rootView":Lcom/facebook/react/uimanager/RootView;
    if-eqz v1, :cond_0

    .line 692
    invoke-interface {v1, v0}, Lcom/facebook/react/uimanager/RootView;->handleException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v2, :cond_1

    .line 695
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ReactContext;

    .line 696
    .local v2, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    new-instance v3, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v4, "StackOverflowException"

    invoke-direct {v3, v4, p0, v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;Landroid/view/View;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReactContext;->handleException(Ljava/lang/Exception;)V

    .line 697
    .end local v2    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    goto :goto_1

    .line 698
    :cond_1
    throw v0

    .line 685
    .end local v0    # "e":Ljava/lang/StackOverflowError;
    .end local v1    # "rootView":Lcom/facebook/react/uimanager/RootView;
    :catch_1
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "ReactNative"

    const-string v2, "NullPointerException when executing ViewGroup.dispatchDraw method"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 701
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    nop

    .line 702
    :goto_1
    return-void
.end method

.method public dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 3
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 163
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchProvideStructure(Landroid/view/ViewStructure;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "ReactNative"

    const-string v2, "NullPointerException when executing dispatchProvideStructure"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .line 501
    return-void
.end method

.method getAllChildrenCount()I
    .locals 1

    .line 508
    iget v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1
    .annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 619
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-virtual {v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->getColor()I

    move-result v0

    return v0

    .line 622
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getChildAtWithSubviewClippingEnabled(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 512
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "index"    # I

    .line 473
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getClippingRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outClippingRect"    # Landroid/graphics/Rect;

    .line 334
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 335
    return-void
.end method

.method public getHitSlopRect()Landroid/graphics/Rect;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mHitSlopRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOverflow()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflow:Ljava/lang/String;

    return-object v0
.end method

.method public getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    return-object v0
.end method

.method public getRemoveClippedSubviews()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    return v0
.end method

.method public getZIndexMappedChildIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .line 478
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    .line 481
    :cond_0
    return p1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mNeedsOffscreenAlphaCompositing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 440
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 441
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingRect()V

    .line 444
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 206
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOnInterceptTouchEventListener:Lcom/facebook/react/touch/OnInterceptTouchEventListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v0, p0, p1}, Lcom/facebook/react/touch/OnInterceptTouchEventListener;->onInterceptTouchEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    return v1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    sget-object v2, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    sget-object v2, Lcom/facebook/react/uimanager/PointerEvents;->BOX_ONLY:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 214
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 212
    :cond_2
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 141
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 131
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/MeasureSpecAssertions;->assertExplicitMeasureSpec(II)V

    .line 133
    nop

    .line 134
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 135
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 133
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->setMeasuredDimension(II)V

    .line 136
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-eqz v0, :cond_0

    .line 147
    iget v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setResolvedLayoutDirection(I)Z

    .line 150
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 432
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 433
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingRect()V

    .line 436
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 220
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->BOX_NONE:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 221
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method removeAllViewsWithSubviewClippingEnabled()V
    .locals 3

    .line 556
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 557
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v0, v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->removeAllViewsInLayout()V

    .line 562
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 563
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 457
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->handleRemoveView(Landroid/view/View;)V

    .line 458
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 460
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 461
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .line 465
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->handleRemoveView(Landroid/view/View;)V

    .line 466
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 468
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 469
    return-void
.end method

.method removeViewWithSubviewClippingEnabled(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 538
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 539
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 542
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->indexOfChildInAllChildren(Landroid/view/View;)I

    move-result v0

    .line 543
    .local v0, "index":I
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 544
    const/4 v1, 0x0

    .line 545
    .local v1, "clippedSoFar":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 546
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 547
    add-int/lit8 v1, v1, 0x1

    .line 545
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    .end local v2    # "i":I
    :cond_1
    sub-int v2, v0, v1

    const/4 v3, 0x1

    invoke-super {p0, v2, v3}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 552
    .end local v1    # "clippedSoFar":I
    :cond_2
    invoke-direct {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->removeFromArray(I)V

    .line 553
    return-void
.end method

.method public requestLayout()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 157
    return-void
.end method

.method public setBackfaceVisibility(Ljava/lang/String;)V
    .locals 0
    .param p1, "backfaceVisibility"    # Ljava/lang/String;

    .line 863
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceVisibility:Ljava/lang/String;

    .line 864
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->setBackfaceVisibilityDependantOpacity()V

    .line 865
    return-void
.end method

.method public setBackfaceVisibilityDependantOpacity()V
    .locals 6

    .line 868
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceVisibility:Ljava/lang/String;

    const-string v1, "visible"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 870
    .local v0, "isBackfaceVisible":Z
    if-eqz v0, :cond_0

    .line 871
    iget v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceOpacity:F

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->setAlpha(F)V

    .line 872
    return-void

    .line 875
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getRotationX()F

    move-result v1

    .line 876
    .local v1, "rotationX":F
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getRotationY()F

    move-result v2

    .line 878
    .local v2, "rotationY":F
    const/high16 v3, -0x3d4c0000    # -90.0f

    cmpl-float v4, v1, v3

    if-ltz v4, :cond_1

    const/high16 v4, 0x42b40000    # 90.0f

    cmpg-float v5, v1, v4

    if-gez v5, :cond_1

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    cmpg-float v3, v2, v4

    if-gez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 881
    .local v3, "isFrontfaceVisible":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 882
    iget v4, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceOpacity:F

    invoke-virtual {p0, v4}, Lcom/facebook/react/views/view/ReactViewGroup;->setAlpha(F)V

    .line 883
    return-void

    .line 886
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/facebook/react/views/view/ReactViewGroup;->setAlpha(F)V

    .line 887
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported for ReactViewGroup instances"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 171
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setColor(I)V

    .line 176
    :goto_0
    return-void
.end method

.method public setBorderColor(IFF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "rgb"    # F
    .param p3, "alpha"    # F

    .line 252
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderColor(IFF)V

    .line 253
    return-void
.end method

.method public setBorderRadius(F)V
    .locals 3
    .param p1, "borderRadius"    # F

    .line 256
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    .line 257
    .local v0, "backgroundDrawable":Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;
    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setRadius(F)V

    .line 259
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_1

    .line 260
    nop

    .line 261
    invoke-virtual {v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->hasRoundedBorders()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 265
    .local v1, "UPDATED_LAYER_TYPE":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getLayerType()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 266
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/facebook/react/views/view/ReactViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 269
    .end local v1    # "UPDATED_LAYER_TYPE":I
    :cond_1
    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 3
    .param p1, "borderRadius"    # F
    .param p2, "position"    # I

    .line 272
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    .line 273
    .local v0, "backgroundDrawable":Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;
    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setRadius(FI)V

    .line 275
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_1

    .line 276
    nop

    .line 277
    invoke-virtual {v0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->hasRoundedBorders()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 281
    .local v1, "UPDATED_LAYER_TYPE":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getLayerType()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 282
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/facebook/react/views/view/ReactViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 285
    .end local v1    # "UPDATED_LAYER_TYPE":I
    :cond_1
    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 288
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderStyle(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "width"    # F

    .line 248
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderWidth(IF)V

    .line 249
    return-void
.end method

.method public setHitSlopRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 657
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mHitSlopRect:Landroid/graphics/Rect;

    .line 658
    return-void
.end method

.method public setNeedsOffscreenAlphaCompositing(Z)V
    .locals 0
    .param p1, "needsOffscreenAlphaCompositing"    # Z

    .line 244
    iput-boolean p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mNeedsOffscreenAlphaCompositing:Z

    .line 245
    return-void
.end method

.method public setOnInterceptTouchEventListener(Lcom/facebook/react/touch/OnInterceptTouchEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/facebook/react/touch/OnInterceptTouchEventListener;

    .line 201
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOnInterceptTouchEventListener:Lcom/facebook/react/touch/OnInterceptTouchEventListener;

    .line 202
    return-void
.end method

.method public setOpacityIfPossible(F)V
    .locals 0
    .param p1, "opacity"    # F

    .line 858
    iput p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mBackfaceOpacity:F

    .line 859
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->setBackfaceVisibilityDependantOpacity()V

    .line 860
    return-void
.end method

.method public setOverflow(Ljava/lang/String;)V
    .locals 0
    .param p1, "overflow"    # Ljava/lang/String;

    .line 661
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mOverflow:Ljava/lang/String;

    .line 662
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    .line 663
    return-void
.end method

.method setPointerEvents(Lcom/facebook/react/uimanager/PointerEvents;)V
    .locals 0
    .param p1, "pointerEvents"    # Lcom/facebook/react/uimanager/PointerEvents;

    .line 504
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    .line 505
    return-void
.end method

.method public setRemoveClippedSubviews(Z)V
    .locals 4
    .param p1, "removeClippedSubviews"    # Z

    .line 293
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-ne p1, v0, :cond_0

    .line 294
    return-void

    .line 296
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    .line 297
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 298
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    .line 299
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {p0, v1}, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->calculateClippingRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 300
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 301
    const/16 v1, 0xc

    iget v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 302
    .local v1, "initialSize":I
    new-array v2, v1, [Landroid/view/View;

    iput-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 303
    new-instance v2, Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-direct {v2, p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;-><init>(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/views/view/ReactViewGroup$1;)V

    iput-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v0, v2, :cond_1

    .line 305
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 306
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aput-object v2, v3, v0

    .line 307
    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 304
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingRect()V

    .line 310
    .end local v1    # "initialSize":I
    goto :goto_2

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    if-ge v1, v2, :cond_3

    .line 316
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 318
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 319
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingToRect(Landroid/graphics/Rect;)V

    .line 320
    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    .line 321
    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    .line 322
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildrenCount:I

    .line 323
    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mChildrenLayoutChangeListener:Lcom/facebook/react/views/view/ReactViewGroup$ChildrenLayoutChangeListener;

    .line 325
    :goto_2
    return-void
.end method

.method public setTranslucentBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 191
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    .line 193
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-direct {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    goto :goto_0

    .line 194
    :cond_0
    if-eqz p1, :cond_1

    .line 195
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->updateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 194
    :cond_1
    :goto_0
    nop

    .line 197
    :goto_1
    return-void
.end method

.method public updateClippingRect()V
    .locals 1

    .line 339
    iget-boolean v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mRemoveClippedSubviews:Z

    if-nez v0, :cond_0

    .line 340
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mAllChildren:[Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->calculateClippingRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 347
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mClippingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->updateClippingToRect(Landroid/graphics/Rect;)V

    .line 348
    return-void
.end method

.method public updateDrawingOrder()V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->update()V

    .line 488
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewGroup;->mDrawingOrderHelper:Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->shouldEnableCustomDrawingOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 489
    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    .line 490
    return-void
.end method
