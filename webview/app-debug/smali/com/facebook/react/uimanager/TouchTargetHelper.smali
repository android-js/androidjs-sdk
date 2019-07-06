.class public Lcom/facebook/react/uimanager/TouchTargetHelper;
.super Ljava/lang/Object;
.source "TouchTargetHelper.java"


# static fields
.field private static final mEventCoords:[F

.field private static final mInverseMatrix:Landroid/graphics/Matrix;

.field private static final mMatrixTransformCoords:[F

.field private static final mTempPoint:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const/4 v0, 0x2

    new-array v1, v0, [F

    sput-object v1, Lcom/facebook/react/uimanager/TouchTargetHelper;->mEventCoords:[F

    .line 30
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    sput-object v1, Lcom/facebook/react/uimanager/TouchTargetHelper;->mTempPoint:Landroid/graphics/PointF;

    .line 31
    new-array v0, v0, [F

    sput-object v0, Lcom/facebook/react/uimanager/TouchTargetHelper;->mMatrixTransformCoords:[F

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/TouchTargetHelper;->mInverseMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findClosestReactAncestor(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 106
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    if-gtz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object p0, v0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    .line 109
    :cond_0
    return-object p0
.end method

.method public static findTargetTagAndCoordinatesForTouch(FFLandroid/view/ViewGroup;[F[I)I
    .locals 6
    .param p0, "eventX"    # F
    .param p1, "eventY"    # F
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "viewCoords"    # [F
    .param p4, "nativeViewTag"    # [I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 88
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    .line 90
    .local v0, "targetTag":I
    const/4 v1, 0x0

    aput p0, p3, v1

    .line 91
    const/4 v2, 0x1

    aput p1, p3, v2

    .line 92
    invoke-static {p3, p2}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTouchTargetView([FLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 93
    .local v3, "nativeTargetView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 94
    invoke-static {v3}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findClosestReactAncestor(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 95
    .local v4, "reactTargetView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 96
    if-eqz p4, :cond_0

    .line 97
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    aput v5, p4, v1

    .line 99
    :cond_0
    aget v1, p3, v1

    aget v2, p3, v2

    invoke-static {v4, v1, v2}, Lcom/facebook/react/uimanager/TouchTargetHelper;->getTouchTargetForView(Landroid/view/View;FF)I

    move-result v0

    .line 102
    .end local v4    # "reactTargetView":Landroid/view/View;
    :cond_1
    return v0
.end method

.method public static findTargetTagForTouch(FFLandroid/view/ViewGroup;)I
    .locals 2
    .param p0, "eventX"    # F
    .param p1, "eventY"    # F
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .line 47
    sget-object v0, Lcom/facebook/react/uimanager/TouchTargetHelper;->mEventCoords:[F

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTargetTagAndCoordinatesForTouch(FFLandroid/view/ViewGroup;[F[I)I

    move-result v0

    return v0
.end method

.method public static findTargetTagForTouch(FFLandroid/view/ViewGroup;[I)I
    .locals 1
    .param p0, "eventX"    # F
    .param p1, "eventY"    # F
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "nativeViewId"    # [I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    sget-object v0, Lcom/facebook/react/uimanager/TouchTargetHelper;->mEventCoords:[F

    invoke-static {p0, p1, p2, v0, p3}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTargetTagAndCoordinatesForTouch(FFLandroid/view/ViewGroup;[F[I)I

    move-result v0

    return v0
.end method

.method private static findTouchTargetView([FLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p0, "eventCoords"    # [F
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 124
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 126
    .local v0, "childrenCount":I
    instance-of v1, p1, Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 129
    .local v1, "zIndexedViewGroup":Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;
    :goto_0
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 130
    if-eqz v1, :cond_1

    invoke-interface {v1, v2}, Lcom/facebook/react/uimanager/ReactZIndexedViewGroup;->getZIndexMappedChildIndex(I)I

    move-result v3

    goto :goto_2

    :cond_1
    move v3, v2

    .line 131
    .local v3, "childIndex":I
    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 132
    .local v4, "child":Landroid/view/View;
    sget-object v5, Lcom/facebook/react/uimanager/TouchTargetHelper;->mTempPoint:Landroid/graphics/PointF;

    .line 133
    .local v5, "childPoint":Landroid/graphics/PointF;
    const/4 v6, 0x0

    aget v7, p0, v6

    const/4 v8, 0x1

    aget v9, p0, v8

    invoke-static {v7, v9, p1, v4, v5}, Lcom/facebook/react/uimanager/TouchTargetHelper;->isTransformedTouchPointInView(FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 138
    aget v7, p0, v6

    .line 139
    .local v7, "restoreX":F
    aget v9, p0, v8

    .line 140
    .local v9, "restoreY":F
    iget v10, v5, Landroid/graphics/PointF;->x:F

    aput v10, p0, v6

    .line 141
    iget v10, v5, Landroid/graphics/PointF;->y:F

    aput v10, p0, v8

    .line 142
    invoke-static {p0, v4}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTouchTargetViewWithPointerEvents([FLandroid/view/View;)Landroid/view/View;

    move-result-object v10

    .line 143
    .local v10, "targetView":Landroid/view/View;
    if-eqz v10, :cond_2

    .line 144
    return-object v10

    .line 146
    :cond_2
    aput v7, p0, v6

    .line 147
    aput v9, p0, v8

    .line 129
    .end local v3    # "childIndex":I
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childPoint":Landroid/graphics/PointF;
    .end local v7    # "restoreX":F
    .end local v9    # "restoreY":F
    .end local v10    # "targetView":Landroid/view/View;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 150
    .end local v2    # "i":I
    :cond_4
    return-object p1
.end method

.method private static findTouchTargetViewWithPointerEvents([FLandroid/view/View;)Landroid/view/View;
    .locals 6
    .param p0, "eventCoords"    # [F
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 204
    instance-of v0, p1, Lcom/facebook/react/uimanager/ReactPointerEventsView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/facebook/react/uimanager/ReactPointerEventsView;

    .line 205
    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactPointerEventsView;->getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    .line 210
    .local v0, "pointerEvents":Lcom/facebook/react/uimanager/PointerEvents;
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v1, :cond_1

    .line 212
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->BOX_NONE:Lcom/facebook/react/uimanager/PointerEvents;

    goto :goto_1

    .line 213
    :cond_1
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->BOX_ONLY:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v1, :cond_2

    .line 214
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    .line 218
    :cond_2
    :goto_1
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 220
    return-object v2

    .line 222
    :cond_3
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->BOX_ONLY:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v1, :cond_4

    .line 224
    return-object p1

    .line 226
    :cond_4
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->BOX_NONE:Lcom/facebook/react/uimanager/PointerEvents;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_7

    .line 228
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    .line 229
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTouchTargetView([FLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 230
    .local v1, "targetView":Landroid/view/View;
    if-eq v1, p1, :cond_5

    .line 231
    return-object v1

    .line 240
    :cond_5
    instance-of v5, p1, Lcom/facebook/react/uimanager/ReactCompoundView;

    if-eqz v5, :cond_6

    .line 241
    move-object v5, p1

    check-cast v5, Lcom/facebook/react/uimanager/ReactCompoundView;

    aget v4, p0, v4

    aget v3, p0, v3

    invoke-interface {v5, v4, v3}, Lcom/facebook/react/uimanager/ReactCompoundView;->reactTagForTouch(FF)I

    move-result v3

    .line 242
    .local v3, "reactTag":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 244
    return-object p1

    .line 248
    .end local v1    # "targetView":Landroid/view/View;
    .end local v3    # "reactTag":I
    :cond_6
    return-object v2

    .line 250
    :cond_7
    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v1, :cond_a

    .line 252
    instance-of v1, p1, Lcom/facebook/react/uimanager/ReactCompoundViewGroup;

    if-eqz v1, :cond_8

    .line 253
    move-object v1, p1

    check-cast v1, Lcom/facebook/react/uimanager/ReactCompoundViewGroup;

    aget v2, p0, v4

    aget v3, p0, v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/uimanager/ReactCompoundViewGroup;->interceptsTouchEvent(FF)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 254
    return-object p1

    .line 257
    :cond_8
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    .line 258
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTouchTargetView([FLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 260
    :cond_9
    return-object p1

    .line 263
    :cond_a
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown pointer event type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/PointerEvents;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getTouchTargetForView(Landroid/view/View;FF)I
    .locals 1
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "eventX"    # F
    .param p2, "eventY"    # F

    .line 269
    instance-of v0, p0, Lcom/facebook/react/uimanager/ReactCompoundView;

    if-eqz v0, :cond_0

    .line 272
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/uimanager/ReactCompoundView;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/uimanager/ReactCompoundView;->reactTagForTouch(FF)I

    move-result v0

    return v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    return v0
.end method

.method private static isTransformedTouchPointInView(FFLandroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/PointF;)Z
    .locals 8
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "child"    # Landroid/view/View;
    .param p4, "outLocalPoint"    # Landroid/graphics/PointF;

    .line 164
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 165
    .local v0, "localX":F
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 166
    .local v1, "localY":F
    invoke-virtual {p3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 167
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 168
    sget-object v3, Lcom/facebook/react/uimanager/TouchTargetHelper;->mMatrixTransformCoords:[F

    .line 169
    .local v3, "localXY":[F
    aput v0, v3, v5

    .line 170
    aput v1, v3, v4

    .line 171
    sget-object v6, Lcom/facebook/react/uimanager/TouchTargetHelper;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 172
    .local v6, "inverseMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 173
    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 174
    aget v0, v3, v5

    .line 175
    aget v1, v3, v4

    .line 177
    .end local v3    # "localXY":[F
    .end local v6    # "inverseMatrix":Landroid/graphics/Matrix;
    :cond_0
    instance-of v3, p3, Lcom/facebook/react/touch/ReactHitSlopView;

    if-eqz v3, :cond_2

    move-object v3, p3

    check-cast v3, Lcom/facebook/react/touch/ReactHitSlopView;

    invoke-interface {v3}, Lcom/facebook/react/touch/ReactHitSlopView;->getHitSlopRect()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 178
    move-object v3, p3

    check-cast v3, Lcom/facebook/react/touch/ReactHitSlopView;

    invoke-interface {v3}, Lcom/facebook/react/touch/ReactHitSlopView;->getHitSlopRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 179
    .local v3, "hitSlopRect":Landroid/graphics/Rect;
    iget v6, v3, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_1

    iget v6, v3, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_1

    .line 180
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gez v6, :cond_1

    .line 181
    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 182
    return v4

    .line 185
    :cond_1
    return v5

    .line 187
    .end local v3    # "hitSlopRect":Landroid/graphics/Rect;
    :cond_2
    const/4 v3, 0x0

    cmpl-float v6, v0, v3

    if-ltz v6, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_3

    .line 188
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    .line 189
    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 190
    return v4

    .line 193
    :cond_3
    return v5
.end method
