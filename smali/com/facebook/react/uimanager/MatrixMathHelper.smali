.class public Lcom/facebook/react/uimanager/MatrixMathHelper;
.super Ljava/lang/Object;
.source "MatrixMathHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;
    }
.end annotation


# static fields
.field private static final EPSILON:D = 1.0E-5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyPerspective([DD)V
    .locals 3
    .param p0, "m"    # [D
    .param p1, "perspective"    # D

    .line 339
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    div-double/2addr v0, p1

    const/16 v2, 0xb

    aput-wide v0, p0, v2

    .line 340
    return-void
.end method

.method public static applyRotateX([DD)V
    .locals 3
    .param p0, "m"    # [D
    .param p1, "radians"    # D

    .line 374
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const/4 v2, 0x5

    aput-wide v0, p0, v2

    .line 375
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const/4 v2, 0x6

    aput-wide v0, p0, v2

    .line 376
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    const/16 v2, 0x9

    aput-wide v0, p0, v2

    .line 377
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const/16 v2, 0xa

    aput-wide v0, p0, v2

    .line 378
    return-void
.end method

.method public static applyRotateY([DD)V
    .locals 3
    .param p0, "m"    # [D
    .param p1, "radians"    # D

    .line 381
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, p0, v2

    .line 382
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    const/4 v2, 0x2

    aput-wide v0, p0, v2

    .line 383
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const/16 v2, 0x8

    aput-wide v0, p0, v2

    .line 384
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const/16 v2, 0xa

    aput-wide v0, p0, v2

    .line 385
    return-void
.end method

.method public static applyRotateZ([DD)V
    .locals 3
    .param p0, "m"    # [D
    .param p1, "radians"    # D

    .line 389
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, p0, v2

    .line 390
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const/4 v2, 0x1

    aput-wide v0, p0, v2

    .line 391
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    const/4 v2, 0x4

    aput-wide v0, p0, v2

    .line 392
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const/4 v2, 0x5

    aput-wide v0, p0, v2

    .line 393
    return-void
.end method

.method public static applyScaleX([DD)V
    .locals 1
    .param p0, "m"    # [D
    .param p1, "factor"    # D

    .line 343
    const/4 v0, 0x0

    aput-wide p1, p0, v0

    .line 344
    return-void
.end method

.method public static applyScaleY([DD)V
    .locals 1
    .param p0, "m"    # [D
    .param p1, "factor"    # D

    .line 347
    const/4 v0, 0x5

    aput-wide p1, p0, v0

    .line 348
    return-void
.end method

.method public static applyScaleZ([DD)V
    .locals 1
    .param p0, "m"    # [D
    .param p1, "factor"    # D

    .line 351
    const/16 v0, 0xa

    aput-wide p1, p0, v0

    .line 352
    return-void
.end method

.method public static applySkewX([DD)V
    .locals 3
    .param p0, "m"    # [D
    .param p1, "radians"    # D

    .line 366
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const/4 v2, 0x4

    aput-wide v0, p0, v2

    .line 367
    return-void
.end method

.method public static applySkewY([DD)V
    .locals 3
    .param p0, "m"    # [D
    .param p1, "radians"    # D

    .line 370
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const/4 v2, 0x1

    aput-wide v0, p0, v2

    .line 371
    return-void
.end method

.method public static applyTranslate2D([DDD)V
    .locals 1
    .param p0, "m"    # [D
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 355
    const/16 v0, 0xc

    aput-wide p1, p0, v0

    .line 356
    const/16 v0, 0xd

    aput-wide p3, p0, v0

    .line 357
    return-void
.end method

.method public static applyTranslate3D([DDDD)V
    .locals 1
    .param p0, "m"    # [D
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .line 360
    const/16 v0, 0xc

    aput-wide p1, p0, v0

    .line 361
    const/16 v0, 0xd

    aput-wide p3, p0, v0

    .line 362
    const/16 v0, 0xe

    aput-wide p5, p0, v0

    .line 363
    return-void
.end method

.method public static createIdentityMatrix()[D
    .locals 1

    .line 323
    const/16 v0, 0x10

    new-array v0, v0, [D

    .line 324
    .local v0, "res":[D
    invoke-static {v0}, Lcom/facebook/react/uimanager/MatrixMathHelper;->resetIdentityMatrix([D)V

    .line 325
    return-object v0
.end method

.method public static decomposeMatrix([DLcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;)V
    .locals 25
    .param p0, "transformMatrix"    # [D
    .param p1, "ctx"    # Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    .line 70
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 73
    iget-object v2, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->perspective:[D

    .line 74
    .local v2, "perspective":[D
    iget-object v6, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->scale:[D

    .line 75
    .local v6, "scale":[D
    iget-object v7, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->skew:[D

    .line 76
    .local v7, "skew":[D
    iget-object v8, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->translation:[D

    .line 77
    .local v8, "translation":[D
    iget-object v9, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    .line 81
    .local v9, "rotationDegrees":[D
    const/16 v10, 0xf

    aget-wide v11, v0, v10

    invoke-static {v11, v12}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 82
    return-void

    .line 84
    :cond_1
    const/4 v11, 0x4

    filled-new-array {v11, v11}, [I

    move-result-object v12

    const-class v13, D

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[D

    .line 85
    .local v12, "matrix":[[D
    new-array v3, v3, [D

    .line 86
    .local v3, "perspectiveMatrix":[D
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    const/4 v14, 0x3

    if-ge v13, v11, :cond_4

    .line 87
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    if-ge v15, v11, :cond_3

    .line 88
    mul-int/lit8 v18, v13, 0x4

    add-int v18, v18, v15

    aget-wide v18, v0, v18

    aget-wide v20, v0, v10

    div-double v18, v18, v20

    .line 89
    .local v18, "value":D
    aget-object v20, v12, v13

    aput-wide v18, v20, v15

    .line 90
    mul-int/lit8 v20, v13, 0x4

    add-int v20, v20, v15

    if-ne v15, v14, :cond_2

    const-wide/16 v21, 0x0

    goto :goto_3

    :cond_2
    move-wide/from16 v21, v18

    :goto_3
    aput-wide v21, v3, v20

    .line 87
    .end local v18    # "value":D
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 86
    .end local v15    # "j":I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 93
    .end local v13    # "i":I
    :cond_4
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    aput-wide v18, v3, v10

    .line 96
    invoke-static {v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->determinant([D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 97
    return-void

    .line 101
    :cond_5
    aget-object v10, v12, v4

    aget-wide v20, v10, v14

    invoke-static/range {v20 .. v21}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v10

    const/4 v13, 0x2

    if-eqz v10, :cond_7

    aget-object v10, v12, v5

    aget-wide v20, v10, v14

    invoke-static/range {v20 .. v21}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v10

    if-eqz v10, :cond_7

    aget-object v10, v12, v13

    aget-wide v20, v10, v14

    invoke-static/range {v20 .. v21}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_4

    .line 117
    :cond_6
    const-wide/16 v10, 0x0

    aput-wide v10, v2, v13

    aput-wide v10, v2, v5

    aput-wide v10, v2, v4

    .line 118
    aput-wide v18, v2, v14

    goto :goto_5

    .line 104
    :cond_7
    :goto_4
    new-array v10, v11, [D

    aget-object v11, v12, v4

    aget-wide v18, v11, v14

    aput-wide v18, v10, v4

    aget-object v11, v12, v5

    aget-wide v18, v11, v14

    aput-wide v18, v10, v5

    aget-object v11, v12, v13

    aget-wide v18, v11, v14

    aput-wide v18, v10, v13

    aget-object v11, v12, v14

    aget-wide v18, v11, v14

    aput-wide v18, v10, v14

    .line 108
    .local v10, "rightHandSide":[D
    invoke-static {v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->inverse([D)[D

    move-result-object v11

    .line 111
    .local v11, "inversePerspectiveMatrix":[D
    invoke-static {v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->transpose([D)[D

    move-result-object v15

    .line 114
    .local v15, "transposedInversePerspectiveMatrix":[D
    invoke-static {v10, v15, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->multiplyVectorByMatrix([D[D[D)V

    .line 115
    .end local v10    # "rightHandSide":[D
    .end local v11    # "inversePerspectiveMatrix":[D
    .end local v15    # "transposedInversePerspectiveMatrix":[D
    nop

    .line 122
    :goto_5
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    if-ge v10, v14, :cond_8

    .line 123
    aget-object v11, v12, v14

    aget-wide v18, v11, v10

    aput-wide v18, v8, v10

    .line 122
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 128
    .end local v10    # "i":I
    :cond_8
    filled-new-array {v14, v14}, [I

    move-result-object v10

    const-class v11, D

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[D

    .line 129
    .local v10, "row":[[D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7
    if-ge v11, v14, :cond_9

    .line 130
    aget-object v15, v10, v11

    aget-object v18, v12, v11

    aget-wide v19, v18, v4

    aput-wide v19, v15, v4

    .line 131
    aget-object v15, v10, v11

    aget-object v18, v12, v11

    aget-wide v19, v18, v5

    aput-wide v19, v15, v5

    .line 132
    aget-object v15, v10, v11

    aget-object v18, v12, v11

    aget-wide v19, v18, v13

    aput-wide v19, v15, v13

    .line 129
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 136
    .end local v11    # "i":I
    :cond_9
    aget-object v11, v10, v4

    invoke-static {v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v18

    aput-wide v18, v6, v4

    .line 137
    aget-object v11, v10, v4

    aget-wide v14, v6, v4

    invoke-static {v11, v14, v15}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Normalize([DD)[D

    move-result-object v11

    aput-object v11, v10, v4

    .line 140
    aget-object v11, v10, v4

    aget-object v14, v10, v5

    invoke-static {v11, v14}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v14

    aput-wide v14, v7, v4

    .line 141
    aget-object v19, v10, v5

    aget-object v20, v10, v4

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    aget-wide v14, v7, v4

    neg-double v14, v14

    move-wide/from16 v23, v14

    invoke-static/range {v19 .. v24}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v11

    aput-object v11, v10, v5

    .line 144
    aget-object v11, v10, v4

    aget-object v14, v10, v5

    invoke-static {v11, v14}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v14

    aput-wide v14, v7, v4

    .line 145
    aget-object v19, v10, v5

    aget-object v20, v10, v4

    aget-wide v14, v7, v4

    neg-double v14, v14

    move-wide/from16 v23, v14

    invoke-static/range {v19 .. v24}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v11

    aput-object v11, v10, v5

    .line 148
    aget-object v11, v10, v5

    invoke-static {v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v14

    aput-wide v14, v6, v5

    .line 149
    aget-object v11, v10, v5

    aget-wide v14, v6, v5

    invoke-static {v11, v14, v15}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Normalize([DD)[D

    move-result-object v11

    aput-object v11, v10, v5

    .line 150
    aget-wide v14, v7, v4

    aget-wide v19, v6, v5

    div-double v14, v14, v19

    aput-wide v14, v7, v4

    .line 153
    aget-object v11, v10, v4

    aget-object v14, v10, v13

    invoke-static {v11, v14}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v14

    aput-wide v14, v7, v5

    .line 154
    aget-object v19, v10, v13

    aget-object v20, v10, v4

    aget-wide v14, v7, v5

    neg-double v14, v14

    move-wide/from16 v23, v14

    invoke-static/range {v19 .. v24}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v11

    aput-object v11, v10, v13

    .line 155
    aget-object v11, v10, v5

    aget-object v14, v10, v13

    invoke-static {v11, v14}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v14

    aput-wide v14, v7, v13

    .line 156
    aget-object v19, v10, v13

    aget-object v20, v10, v5

    aget-wide v14, v7, v13

    neg-double v14, v14

    move-wide/from16 v23, v14

    invoke-static/range {v19 .. v24}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v11

    aput-object v11, v10, v13

    .line 159
    aget-object v11, v10, v13

    invoke-static {v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v14

    aput-wide v14, v6, v13

    .line 160
    aget-object v11, v10, v13

    aget-wide v14, v6, v13

    invoke-static {v11, v14, v15}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Normalize([DD)[D

    move-result-object v11

    aput-object v11, v10, v13

    .line 161
    aget-wide v14, v7, v5

    aget-wide v19, v6, v13

    div-double v14, v14, v19

    aput-wide v14, v7, v5

    .line 162
    aget-wide v14, v7, v13

    aget-wide v19, v6, v13

    div-double v14, v14, v19

    aput-wide v14, v7, v13

    .line 167
    aget-object v11, v10, v5

    aget-object v14, v10, v13

    invoke-static {v11, v14}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Cross([D[D)[D

    move-result-object v11

    .line 168
    .local v11, "pdum3":[D
    aget-object v14, v10, v4

    invoke-static {v14, v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpg-double v19, v14, v16

    if-gez v19, :cond_a

    .line 169
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_8
    const/4 v15, 0x3

    if-ge v14, v15, :cond_a

    .line 170
    aget-wide v16, v6, v14

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    mul-double v16, v16, v18

    aput-wide v16, v6, v14

    .line 171
    aget-object v16, v10, v14

    aget-wide v20, v16, v4

    mul-double v20, v20, v18

    aput-wide v20, v16, v4

    .line 172
    aget-object v16, v10, v14

    aget-wide v20, v16, v5

    mul-double v20, v20, v18

    aput-wide v20, v16, v5

    .line 173
    aget-object v16, v10, v14

    aget-wide v20, v16, v13

    mul-double v20, v20, v18

    aput-wide v20, v16, v13

    .line 169
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 179
    .end local v14    # "i":I
    :cond_a
    const-wide v14, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    .line 180
    .local v14, "conv":D
    aget-object v16, v10, v13

    aget-wide v0, v16, v5

    aget-object v16, v10, v13

    move-object/from16 v18, v6

    .end local v6    # "scale":[D
    .local v18, "scale":[D
    aget-wide v5, v16, v13

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    neg-double v0, v0

    mul-double v0, v0, v14

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->roundTo3Places(D)D

    move-result-wide v0

    aput-wide v0, v9, v4

    .line 181
    aget-object v0, v10, v13

    aget-wide v5, v0, v4

    neg-double v0, v5

    aget-object v5, v10, v13

    const/4 v6, 0x1

    aget-wide v19, v5, v6

    aget-object v5, v10, v13

    aget-wide v21, v5, v6

    mul-double v19, v19, v21

    aget-object v5, v10, v13

    aget-wide v21, v5, v13

    aget-object v5, v10, v13

    aget-wide v23, v5, v13

    mul-double v21, v21, v23

    add-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    neg-double v0, v0

    mul-double v0, v0, v14

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->roundTo3Places(D)D

    move-result-wide v0

    const/4 v5, 0x1

    aput-wide v0, v9, v5

    .line 182
    aget-object v0, v10, v5

    aget-wide v5, v0, v4

    aget-object v0, v10, v4

    move-wide/from16 v16, v14

    .end local v14    # "conv":D
    .local v16, "conv":D
    aget-wide v13, v0, v4

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    neg-double v4, v4

    mul-double v4, v4, v16

    invoke-static {v4, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->roundTo3Places(D)D

    move-result-wide v4

    const/4 v0, 0x2

    aput-wide v4, v9, v0

    .line 183
    return-void
.end method

.method public static degreesToRadians(D)D
    .locals 4
    .param p0, "degrees"    # D

    .line 329
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static determinant([D)D
    .locals 36
    .param p0, "matrix"    # [D

    .line 186
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .local v0, "m00":D
    const/4 v2, 0x1

    aget-wide v2, p0, v2

    .local v2, "m01":D
    const/4 v4, 0x2

    aget-wide v4, p0, v4

    .local v4, "m02":D
    const/4 v6, 0x3

    aget-wide v6, p0, v6

    .local v6, "m03":D
    const/4 v8, 0x4

    aget-wide v8, p0, v8

    .line 187
    .local v8, "m10":D
    const/4 v10, 0x5

    aget-wide v10, p0, v10

    .local v10, "m11":D
    const/4 v12, 0x6

    aget-wide v12, p0, v12

    .local v12, "m12":D
    const/4 v14, 0x7

    aget-wide v14, p0, v14

    .local v14, "m13":D
    const/16 v16, 0x8

    aget-wide v16, p0, v16

    .local v16, "m20":D
    const/16 v18, 0x9

    aget-wide v18, p0, v18

    .line 188
    .local v18, "m21":D
    const/16 v20, 0xa

    aget-wide v20, p0, v20

    .local v20, "m22":D
    const/16 v22, 0xb

    aget-wide v22, p0, v22

    .local v22, "m23":D
    const/16 v24, 0xc

    aget-wide v24, p0, v24

    .local v24, "m30":D
    const/16 v26, 0xd

    aget-wide v26, p0, v26

    .local v26, "m31":D
    const/16 v28, 0xe

    aget-wide v28, p0, v28

    .line 189
    .local v28, "m32":D
    const/16 v30, 0xf

    aget-wide v30, p0, v30

    .line 190
    .local v30, "m33":D
    mul-double v32, v6, v12

    mul-double v32, v32, v18

    mul-double v32, v32, v24

    mul-double v34, v4, v14

    mul-double v34, v34, v18

    mul-double v34, v34, v24

    sub-double v32, v32, v34

    mul-double v34, v6, v10

    mul-double v34, v34, v20

    mul-double v34, v34, v24

    sub-double v32, v32, v34

    mul-double v34, v2, v14

    mul-double v34, v34, v20

    mul-double v34, v34, v24

    add-double v32, v32, v34

    mul-double v34, v4, v10

    mul-double v34, v34, v22

    mul-double v34, v34, v24

    add-double v32, v32, v34

    mul-double v34, v2, v12

    mul-double v34, v34, v22

    mul-double v34, v34, v24

    sub-double v32, v32, v34

    mul-double v34, v6, v12

    mul-double v34, v34, v16

    mul-double v34, v34, v26

    sub-double v32, v32, v34

    mul-double v34, v4, v14

    mul-double v34, v34, v16

    mul-double v34, v34, v26

    add-double v32, v32, v34

    mul-double v34, v6, v8

    mul-double v34, v34, v20

    mul-double v34, v34, v26

    add-double v32, v32, v34

    mul-double v34, v0, v14

    mul-double v34, v34, v20

    mul-double v34, v34, v26

    sub-double v32, v32, v34

    mul-double v34, v4, v8

    mul-double v34, v34, v22

    mul-double v34, v34, v26

    sub-double v32, v32, v34

    mul-double v34, v0, v12

    mul-double v34, v34, v22

    mul-double v34, v34, v26

    add-double v32, v32, v34

    mul-double v34, v6, v10

    mul-double v34, v34, v16

    mul-double v34, v34, v28

    add-double v32, v32, v34

    mul-double v34, v2, v14

    mul-double v34, v34, v16

    mul-double v34, v34, v28

    sub-double v32, v32, v34

    mul-double v34, v6, v8

    mul-double v34, v34, v18

    mul-double v34, v34, v28

    sub-double v32, v32, v34

    mul-double v34, v0, v14

    mul-double v34, v34, v18

    mul-double v34, v34, v28

    add-double v32, v32, v34

    mul-double v34, v2, v8

    mul-double v34, v34, v22

    mul-double v34, v34, v28

    add-double v32, v32, v34

    mul-double v34, v0, v10

    mul-double v34, v34, v22

    mul-double v34, v34, v28

    sub-double v32, v32, v34

    mul-double v34, v4, v10

    mul-double v34, v34, v16

    mul-double v34, v34, v30

    sub-double v32, v32, v34

    mul-double v34, v2, v12

    mul-double v34, v34, v16

    mul-double v34, v34, v30

    add-double v32, v32, v34

    mul-double v34, v4, v8

    mul-double v34, v34, v18

    mul-double v34, v34, v30

    add-double v32, v32, v34

    mul-double v34, v0, v12

    mul-double v34, v34, v18

    mul-double v34, v34, v30

    sub-double v32, v32, v34

    mul-double v34, v2, v8

    mul-double v34, v34, v20

    mul-double v34, v34, v30

    sub-double v32, v32, v34

    mul-double v34, v0, v10

    mul-double v34, v34, v20

    mul-double v34, v34, v30

    add-double v32, v32, v34

    return-wide v32
.end method

.method public static inverse([D)[D
    .locals 54
    .param p0, "matrix"    # [D

    .line 214
    invoke-static/range {p0 .. p0}, Lcom/facebook/react/uimanager/MatrixMathHelper;->determinant([D)D

    move-result-wide v0

    .line 215
    .local v0, "det":D
    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    return-object p0

    .line 218
    :cond_0
    const/4 v2, 0x0

    aget-wide v3, p0, v2

    .local v3, "m00":D
    const/4 v5, 0x1

    aget-wide v6, p0, v5

    .local v6, "m01":D
    const/4 v8, 0x2

    aget-wide v9, p0, v8

    .local v9, "m02":D
    const/4 v11, 0x3

    aget-wide v12, p0, v11

    .local v12, "m03":D
    const/4 v14, 0x4

    aget-wide v15, p0, v14

    .line 219
    .local v15, "m10":D
    const/16 v17, 0x5

    aget-wide v18, p0, v17

    .local v18, "m11":D
    const/16 v20, 0x6

    aget-wide v21, p0, v20

    .local v21, "m12":D
    const/16 v23, 0x7

    aget-wide v24, p0, v23

    .local v24, "m13":D
    const/16 v26, 0x8

    aget-wide v27, p0, v26

    .local v27, "m20":D
    const/16 v29, 0x9

    aget-wide v30, p0, v29

    .line 220
    .local v30, "m21":D
    const/16 v32, 0xa

    aget-wide v33, p0, v32

    .local v33, "m22":D
    const/16 v35, 0xb

    aget-wide v36, p0, v35

    .local v36, "m23":D
    const/16 v38, 0xc

    aget-wide v39, p0, v38

    .local v39, "m30":D
    const/16 v41, 0xd

    aget-wide v42, p0, v41

    .local v42, "m31":D
    const/16 v44, 0xe

    aget-wide v45, p0, v44

    .line 221
    .local v45, "m32":D
    const/16 v47, 0xf

    aget-wide v47, p0, v47

    .line 222
    .local v47, "m33":D
    const/16 v14, 0x10

    new-array v14, v14, [D

    mul-double v50, v21, v36

    mul-double v50, v50, v42

    mul-double v52, v24, v33

    mul-double v52, v52, v42

    sub-double v50, v50, v52

    mul-double v52, v24, v30

    mul-double v52, v52, v45

    add-double v50, v50, v52

    mul-double v52, v18, v36

    mul-double v52, v52, v45

    sub-double v50, v50, v52

    mul-double v52, v21, v30

    mul-double v52, v52, v47

    sub-double v50, v50, v52

    mul-double v52, v18, v33

    mul-double v52, v52, v47

    add-double v50, v50, v52

    div-double v50, v50, v0

    aput-wide v50, v14, v2

    mul-double v50, v12, v33

    mul-double v50, v50, v42

    mul-double v52, v9, v36

    mul-double v52, v52, v42

    sub-double v50, v50, v52

    mul-double v52, v12, v30

    mul-double v52, v52, v45

    sub-double v50, v50, v52

    mul-double v52, v6, v36

    mul-double v52, v52, v45

    add-double v50, v50, v52

    mul-double v52, v9, v30

    mul-double v52, v52, v47

    add-double v50, v50, v52

    mul-double v52, v6, v33

    mul-double v52, v52, v47

    sub-double v50, v50, v52

    div-double v50, v50, v0

    aput-wide v50, v14, v5

    mul-double v50, v9, v24

    mul-double v50, v50, v42

    mul-double v52, v12, v21

    mul-double v52, v52, v42

    sub-double v50, v50, v52

    mul-double v52, v12, v18

    mul-double v52, v52, v45

    add-double v50, v50, v52

    mul-double v52, v6, v24

    mul-double v52, v52, v45

    sub-double v50, v50, v52

    mul-double v52, v9, v18

    mul-double v52, v52, v47

    sub-double v50, v50, v52

    mul-double v52, v6, v21

    mul-double v52, v52, v47

    add-double v50, v50, v52

    div-double v50, v50, v0

    aput-wide v50, v14, v8

    mul-double v50, v12, v21

    mul-double v50, v50, v30

    mul-double v52, v9, v24

    mul-double v52, v52, v30

    sub-double v50, v50, v52

    mul-double v52, v12, v18

    mul-double v52, v52, v33

    sub-double v50, v50, v52

    mul-double v52, v6, v24

    mul-double v52, v52, v33

    add-double v50, v50, v52

    mul-double v52, v9, v18

    mul-double v52, v52, v36

    add-double v50, v50, v52

    mul-double v52, v6, v21

    mul-double v52, v52, v36

    sub-double v50, v50, v52

    div-double v50, v50, v0

    aput-wide v50, v14, v11

    mul-double v50, v24, v33

    mul-double v50, v50, v39

    mul-double v52, v21, v36

    mul-double v52, v52, v39

    sub-double v50, v50, v52

    mul-double v52, v24, v27

    mul-double v52, v52, v45

    sub-double v50, v50, v52

    mul-double v52, v15, v36

    mul-double v52, v52, v45

    add-double v50, v50, v52

    mul-double v52, v21, v27

    mul-double v52, v52, v47

    add-double v50, v50, v52

    mul-double v52, v15, v33

    mul-double v52, v52, v47

    sub-double v50, v50, v52

    div-double v50, v50, v0

    const/4 v2, 0x4

    aput-wide v50, v14, v2

    mul-double v49, v9, v36

    mul-double v49, v49, v39

    mul-double v51, v12, v33

    mul-double v51, v51, v39

    sub-double v49, v49, v51

    mul-double v51, v12, v27

    mul-double v51, v51, v45

    add-double v49, v49, v51

    mul-double v51, v3, v36

    mul-double v51, v51, v45

    sub-double v49, v49, v51

    mul-double v51, v9, v27

    mul-double v51, v51, v47

    sub-double v49, v49, v51

    mul-double v51, v3, v33

    mul-double v51, v51, v47

    add-double v49, v49, v51

    div-double v49, v49, v0

    aput-wide v49, v14, v17

    mul-double v49, v12, v21

    mul-double v49, v49, v39

    mul-double v51, v9, v24

    mul-double v51, v51, v39

    sub-double v49, v49, v51

    mul-double v51, v12, v15

    mul-double v51, v51, v45

    sub-double v49, v49, v51

    mul-double v51, v3, v24

    mul-double v51, v51, v45

    add-double v49, v49, v51

    mul-double v51, v9, v15

    mul-double v51, v51, v47

    add-double v49, v49, v51

    mul-double v51, v3, v21

    mul-double v51, v51, v47

    sub-double v49, v49, v51

    div-double v49, v49, v0

    aput-wide v49, v14, v20

    mul-double v49, v9, v24

    mul-double v49, v49, v27

    mul-double v51, v12, v21

    mul-double v51, v51, v27

    sub-double v49, v49, v51

    mul-double v51, v12, v15

    mul-double v51, v51, v33

    add-double v49, v49, v51

    mul-double v51, v3, v24

    mul-double v51, v51, v33

    sub-double v49, v49, v51

    mul-double v51, v9, v15

    mul-double v51, v51, v36

    sub-double v49, v49, v51

    mul-double v51, v3, v21

    mul-double v51, v51, v36

    add-double v49, v49, v51

    div-double v49, v49, v0

    aput-wide v49, v14, v23

    mul-double v49, v18, v36

    mul-double v49, v49, v39

    mul-double v51, v24, v30

    mul-double v51, v51, v39

    sub-double v49, v49, v51

    mul-double v51, v24, v27

    mul-double v51, v51, v42

    add-double v49, v49, v51

    mul-double v51, v15, v36

    mul-double v51, v51, v42

    sub-double v49, v49, v51

    mul-double v51, v18, v27

    mul-double v51, v51, v47

    sub-double v49, v49, v51

    mul-double v51, v15, v30

    mul-double v51, v51, v47

    add-double v49, v49, v51

    div-double v49, v49, v0

    aput-wide v49, v14, v26

    mul-double v49, v12, v30

    mul-double v49, v49, v39

    mul-double v51, v6, v36

    mul-double v51, v51, v39

    sub-double v49, v49, v51

    mul-double v51, v12, v27

    mul-double v51, v51, v42

    sub-double v49, v49, v51

    mul-double v51, v3, v36

    mul-double v51, v51, v42

    add-double v49, v49, v51

    mul-double v51, v6, v27

    mul-double v51, v51, v47

    add-double v49, v49, v51

    mul-double v51, v3, v30

    mul-double v51, v51, v47

    sub-double v49, v49, v51

    div-double v49, v49, v0

    aput-wide v49, v14, v29

    mul-double v49, v6, v24

    mul-double v49, v49, v39

    mul-double v51, v12, v18

    mul-double v51, v51, v39

    sub-double v49, v49, v51

    mul-double v51, v12, v15

    mul-double v51, v51, v42

    add-double v49, v49, v51

    mul-double v51, v3, v24

    mul-double v51, v51, v42

    sub-double v49, v49, v51

    mul-double v51, v6, v15

    mul-double v51, v51, v47

    sub-double v49, v49, v51

    mul-double v51, v3, v18

    mul-double v51, v51, v47

    add-double v49, v49, v51

    div-double v49, v49, v0

    aput-wide v49, v14, v32

    mul-double v49, v12, v18

    mul-double v49, v49, v27

    mul-double v51, v6, v24

    mul-double v51, v51, v27

    sub-double v49, v49, v51

    mul-double v51, v12, v15

    mul-double v51, v51, v30

    sub-double v49, v49, v51

    mul-double v51, v3, v24

    mul-double v51, v51, v30

    add-double v49, v49, v51

    mul-double v51, v6, v15

    mul-double v51, v51, v36

    add-double v49, v49, v51

    mul-double v51, v3, v18

    mul-double v51, v51, v36

    sub-double v49, v49, v51

    div-double v49, v49, v0

    aput-wide v49, v14, v35

    mul-double v49, v21, v30

    mul-double v49, v49, v39

    mul-double v51, v18, v33

    mul-double v51, v51, v39

    sub-double v49, v49, v51

    mul-double v51, v21, v27

    mul-double v51, v51, v42

    sub-double v49, v49, v51

    mul-double v51, v15, v33

    mul-double v51, v51, v42

    add-double v49, v49, v51

    mul-double v51, v18, v27

    mul-double v51, v51, v45

    add-double v49, v49, v51

    mul-double v51, v15, v30

    mul-double v51, v51, v45

    sub-double v49, v49, v51

    div-double v49, v49, v0

    aput-wide v49, v14, v38

    mul-double v49, v6, v33

    mul-double v49, v49, v39

    mul-double v51, v9, v30

    mul-double v51, v51, v39

    sub-double v49, v49, v51

    mul-double v51, v9, v27

    mul-double v51, v51, v42

    add-double v49, v49, v51

    mul-double v51, v3, v33

    mul-double v51, v51, v42

    sub-double v49, v49, v51

    mul-double v51, v6, v27

    mul-double v51, v51, v45

    sub-double v49, v49, v51

    mul-double v51, v3, v30

    mul-double v51, v51, v45

    add-double v49, v49, v51

    div-double v49, v49, v0

    aput-wide v49, v14, v41

    mul-double v49, v9, v18

    mul-double v49, v49, v39

    mul-double v51, v6, v21

    mul-double v51, v51, v39

    sub-double v49, v49, v51

    mul-double v51, v9, v15

    mul-double v51, v51, v42

    sub-double v49, v49, v51

    mul-double v51, v3, v21

    mul-double v51, v51, v42

    add-double v49, v49, v51

    mul-double v51, v6, v15

    mul-double v51, v51, v45

    add-double v49, v49, v51

    mul-double v51, v3, v18

    mul-double v51, v51, v45

    sub-double v49, v49, v51

    div-double v49, v49, v0

    aput-wide v49, v14, v44

    const/16 v2, 0xf

    mul-double v49, v6, v21

    mul-double v49, v49, v27

    mul-double v51, v9, v18

    mul-double v51, v51, v27

    sub-double v49, v49, v51

    mul-double v51, v9, v15

    mul-double v51, v51, v30

    add-double v49, v49, v51

    mul-double v51, v3, v21

    mul-double v51, v51, v30

    sub-double v49, v49, v51

    mul-double v51, v6, v15

    mul-double v51, v51, v33

    sub-double v49, v49, v51

    mul-double v51, v3, v18

    mul-double v51, v51, v33

    add-double v49, v49, v51

    div-double v49, v49, v0

    aput-wide v49, v14, v2

    return-object v14
.end method

.method private static isZero(D)Z
    .locals 6
    .param p0, "d"    # D

    .line 29
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 30
    return v1

    .line 32
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static multiplyInto([D[D[D)V
    .locals 59
    .param p0, "out"    # [D
    .param p1, "a"    # [D
    .param p2, "b"    # [D

    .line 36
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    .local v1, "a00":D
    const/4 v3, 0x1

    aget-wide v4, p1, v3

    .local v4, "a01":D
    const/4 v6, 0x2

    aget-wide v7, p1, v6

    .local v7, "a02":D
    const/4 v9, 0x3

    aget-wide v10, p1, v9

    .line 37
    .local v10, "a03":D
    const/4 v12, 0x4

    aget-wide v13, p1, v12

    .local v13, "a10":D
    const/4 v15, 0x5

    aget-wide v16, p1, v15

    .local v16, "a11":D
    const/16 v18, 0x6

    aget-wide v19, p1, v18

    .local v19, "a12":D
    const/16 v21, 0x7

    aget-wide v22, p1, v21

    .line 38
    .local v22, "a13":D
    const/16 v24, 0x8

    aget-wide v25, p1, v24

    .local v25, "a20":D
    const/16 v27, 0x9

    aget-wide v28, p1, v27

    .local v28, "a21":D
    const/16 v30, 0xa

    aget-wide v31, p1, v30

    .local v31, "a22":D
    const/16 v33, 0xb

    aget-wide v34, p1, v33

    .line 39
    .local v34, "a23":D
    const/16 v36, 0xc

    aget-wide v37, p1, v36

    .local v37, "a30":D
    const/16 v39, 0xd

    aget-wide v40, p1, v39

    .local v40, "a31":D
    const/16 v42, 0xe

    aget-wide v43, p1, v42

    .local v43, "a32":D
    const/16 v45, 0xf

    aget-wide v45, p1, v45

    .line 41
    .local v45, "a33":D
    aget-wide v47, p2, v0

    .local v47, "b0":D
    aget-wide v49, p2, v3

    .local v49, "b1":D
    aget-wide v51, p2, v6

    .local v51, "b2":D
    aget-wide v53, p2, v9

    .line 42
    .local v53, "b3":D
    mul-double v55, v47, v1

    mul-double v57, v49, v13

    add-double v55, v55, v57

    mul-double v57, v51, v25

    add-double v55, v55, v57

    mul-double v57, v53, v37

    add-double v55, v55, v57

    aput-wide v55, p0, v0

    .line 43
    mul-double v55, v47, v4

    mul-double v57, v49, v16

    add-double v55, v55, v57

    mul-double v57, v51, v28

    add-double v55, v55, v57

    mul-double v57, v53, v40

    add-double v55, v55, v57

    aput-wide v55, p0, v3

    .line 44
    mul-double v55, v47, v7

    mul-double v57, v49, v19

    add-double v55, v55, v57

    mul-double v57, v51, v31

    add-double v55, v55, v57

    mul-double v57, v53, v43

    add-double v55, v55, v57

    aput-wide v55, p0, v6

    .line 45
    mul-double v55, v47, v10

    mul-double v57, v49, v22

    add-double v55, v55, v57

    mul-double v57, v51, v34

    add-double v55, v55, v57

    mul-double v57, v53, v45

    add-double v55, v55, v57

    aput-wide v55, p0, v9

    .line 47
    aget-wide v47, p2, v12

    aget-wide v49, p2, v15

    aget-wide v51, p2, v18

    aget-wide v53, p2, v21

    .line 48
    mul-double v55, v47, v1

    mul-double v57, v49, v13

    add-double v55, v55, v57

    mul-double v57, v51, v25

    add-double v55, v55, v57

    mul-double v57, v53, v37

    add-double v55, v55, v57

    aput-wide v55, p0, v12

    .line 49
    mul-double v55, v47, v4

    mul-double v57, v49, v16

    add-double v55, v55, v57

    mul-double v57, v51, v28

    add-double v55, v55, v57

    mul-double v57, v53, v40

    add-double v55, v55, v57

    aput-wide v55, p0, v15

    .line 50
    mul-double v55, v47, v7

    mul-double v57, v49, v19

    add-double v55, v55, v57

    mul-double v57, v51, v31

    add-double v55, v55, v57

    mul-double v57, v53, v43

    add-double v55, v55, v57

    aput-wide v55, p0, v18

    .line 51
    mul-double v55, v47, v10

    mul-double v57, v49, v22

    add-double v55, v55, v57

    mul-double v57, v51, v34

    add-double v55, v55, v57

    mul-double v57, v53, v45

    add-double v55, v55, v57

    aput-wide v55, p0, v21

    .line 53
    aget-wide v47, p2, v24

    aget-wide v49, p2, v27

    aget-wide v51, p2, v30

    aget-wide v53, p2, v33

    .line 54
    mul-double v55, v47, v1

    mul-double v57, v49, v13

    add-double v55, v55, v57

    mul-double v57, v51, v25

    add-double v55, v55, v57

    mul-double v57, v53, v37

    add-double v55, v55, v57

    aput-wide v55, p0, v24

    .line 55
    mul-double v55, v47, v4

    mul-double v57, v49, v16

    add-double v55, v55, v57

    mul-double v57, v51, v28

    add-double v55, v55, v57

    mul-double v57, v53, v40

    add-double v55, v55, v57

    aput-wide v55, p0, v27

    .line 56
    mul-double v55, v47, v7

    mul-double v57, v49, v19

    add-double v55, v55, v57

    mul-double v57, v51, v31

    add-double v55, v55, v57

    mul-double v57, v53, v43

    add-double v55, v55, v57

    aput-wide v55, p0, v30

    .line 57
    mul-double v55, v47, v10

    mul-double v57, v49, v22

    add-double v55, v55, v57

    mul-double v57, v51, v34

    add-double v55, v55, v57

    mul-double v57, v53, v45

    add-double v55, v55, v57

    aput-wide v55, p0, v33

    .line 59
    aget-wide v47, p2, v36

    aget-wide v49, p2, v39

    aget-wide v51, p2, v42

    const/16 v0, 0xf

    aget-wide v53, p2, v0

    .line 60
    mul-double v55, v47, v1

    mul-double v57, v49, v13

    add-double v55, v55, v57

    mul-double v57, v51, v25

    add-double v55, v55, v57

    mul-double v57, v53, v37

    add-double v55, v55, v57

    aput-wide v55, p0, v36

    .line 61
    mul-double v55, v47, v4

    mul-double v57, v49, v16

    add-double v55, v55, v57

    mul-double v57, v51, v28

    add-double v55, v55, v57

    mul-double v57, v53, v40

    add-double v55, v55, v57

    aput-wide v55, p0, v39

    .line 62
    mul-double v55, v47, v7

    mul-double v57, v49, v19

    add-double v55, v55, v57

    mul-double v57, v51, v31

    add-double v55, v55, v57

    mul-double v57, v53, v43

    add-double v55, v55, v57

    aput-wide v55, p0, v42

    .line 63
    mul-double v55, v47, v10

    mul-double v57, v49, v22

    add-double v55, v55, v57

    mul-double v57, v51, v34

    add-double v55, v55, v57

    mul-double v57, v53, v45

    add-double v55, v55, v57

    aput-wide v55, p0, v0

    .line 64
    return-void
.end method

.method public static multiplyVectorByMatrix([D[D[D)V
    .locals 16
    .param p0, "v"    # [D
    .param p1, "m"    # [D
    .param p2, "result"    # [D

    .line 258
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "vx":D
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .local v4, "vy":D
    const/4 v6, 0x2

    aget-wide v7, p0, v6

    .local v7, "vz":D
    const/4 v9, 0x3

    aget-wide v10, p0, v9

    .line 259
    .local v10, "vw":D
    aget-wide v12, p1, v0

    mul-double v12, v12, v1

    const/4 v14, 0x4

    aget-wide v14, p1, v14

    mul-double v14, v14, v4

    add-double/2addr v12, v14

    const/16 v14, 0x8

    aget-wide v14, p1, v14

    mul-double v14, v14, v7

    add-double/2addr v12, v14

    const/16 v14, 0xc

    aget-wide v14, p1, v14

    mul-double v14, v14, v10

    add-double/2addr v12, v14

    aput-wide v12, p2, v0

    .line 260
    aget-wide v12, p1, v3

    mul-double v12, v12, v1

    const/4 v0, 0x5

    aget-wide v14, p1, v0

    mul-double v14, v14, v4

    add-double/2addr v12, v14

    const/16 v0, 0x9

    aget-wide v14, p1, v0

    mul-double v14, v14, v7

    add-double/2addr v12, v14

    const/16 v0, 0xd

    aget-wide v14, p1, v0

    mul-double v14, v14, v10

    add-double/2addr v12, v14

    aput-wide v12, p2, v3

    .line 261
    aget-wide v12, p1, v6

    mul-double v12, v12, v1

    const/4 v0, 0x6

    aget-wide v14, p1, v0

    mul-double v14, v14, v4

    add-double/2addr v12, v14

    const/16 v0, 0xa

    aget-wide v14, p1, v0

    mul-double v14, v14, v7

    add-double/2addr v12, v14

    const/16 v0, 0xe

    aget-wide v14, p1, v0

    mul-double v14, v14, v10

    add-double/2addr v12, v14

    aput-wide v12, p2, v6

    .line 262
    aget-wide v12, p1, v9

    mul-double v12, v12, v1

    const/4 v0, 0x7

    aget-wide v14, p1, v0

    mul-double v14, v14, v4

    add-double/2addr v12, v14

    const/16 v0, 0xb

    aget-wide v14, p1, v0

    mul-double v14, v14, v7

    add-double/2addr v12, v14

    const/16 v0, 0xf

    aget-wide v14, p1, v0

    mul-double v14, v14, v10

    add-double/2addr v12, v14

    aput-wide v12, p2, v9

    .line 263
    return-void
.end method

.method public static resetIdentityMatrix([D)V
    .locals 3
    .param p0, "matrix"    # [D

    .line 333
    const/16 v0, 0xe

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    const/16 v0, 0xd

    aput-wide v1, p0, v0

    const/16 v0, 0xc

    aput-wide v1, p0, v0

    const/16 v0, 0xb

    aput-wide v1, p0, v0

    const/16 v0, 0x9

    aput-wide v1, p0, v0

    const/16 v0, 0x8

    aput-wide v1, p0, v0

    const/4 v0, 0x7

    aput-wide v1, p0, v0

    const/4 v0, 0x6

    aput-wide v1, p0, v0

    const/4 v0, 0x4

    aput-wide v1, p0, v0

    const/4 v0, 0x3

    aput-wide v1, p0, v0

    const/4 v0, 0x2

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aput-wide v1, p0, v0

    .line 335
    const/16 v0, 0xf

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    aput-wide v1, p0, v0

    const/16 v0, 0xa

    aput-wide v1, p0, v0

    const/4 v0, 0x5

    aput-wide v1, p0, v0

    const/4 v0, 0x0

    aput-wide v1, p0, v0

    .line 336
    return-void
.end method

.method public static roundTo3Places(D)D
    .locals 4
    .param p0, "n"    # D

    .line 319
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static transpose([D)[D
    .locals 11
    .param p0, "m"    # [D

    .line 246
    const/16 v0, 0x10

    new-array v0, v0, [D

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    aget-wide v2, p0, v1

    const/4 v4, 0x1

    aput-wide v2, v0, v4

    const/16 v2, 0x8

    aget-wide v5, p0, v2

    const/4 v3, 0x2

    aput-wide v5, v0, v3

    const/16 v5, 0xc

    aget-wide v6, p0, v5

    const/4 v8, 0x3

    aput-wide v6, v0, v8

    aget-wide v6, p0, v4

    aput-wide v6, v0, v1

    const/4 v1, 0x5

    aget-wide v6, p0, v1

    aput-wide v6, v0, v1

    const/16 v1, 0x9

    aget-wide v6, p0, v1

    const/4 v4, 0x6

    aput-wide v6, v0, v4

    const/16 v6, 0xd

    aget-wide v9, p0, v6

    const/4 v7, 0x7

    aput-wide v9, v0, v7

    aget-wide v9, p0, v3

    aput-wide v9, v0, v2

    aget-wide v2, p0, v4

    aput-wide v2, v0, v1

    const/16 v1, 0xa

    aget-wide v2, p0, v1

    aput-wide v2, v0, v1

    const/16 v1, 0xe

    aget-wide v2, p0, v1

    const/16 v4, 0xb

    aput-wide v2, v0, v4

    aget-wide v2, p0, v8

    aput-wide v2, v0, v5

    aget-wide v2, p0, v7

    aput-wide v2, v0, v6

    aget-wide v2, p0, v4

    aput-wide v2, v0, v1

    const/16 v1, 0xf

    aget-wide v1, p0, v1

    const/16 v3, 0xf

    aput-wide v1, v0, v3

    return-object v0
.end method

.method public static v3Combine([D[DDD)[D
    .locals 6
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .param p2, "aScale"    # D
    .param p4, "bScale"    # D

    .line 299
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    mul-double v2, v2, p2

    aget-wide v4, p1, v1

    mul-double v4, v4, p4

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v2, p0, v1

    mul-double v2, v2, p2

    aget-wide v4, p1, v1

    mul-double v4, v4, p4

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    aget-wide v2, p0, v1

    mul-double v2, v2, p2

    aget-wide v4, p1, v1

    mul-double v4, v4, p4

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public static v3Cross([D[D)[D
    .locals 10
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 311
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x1

    aget-wide v2, p0, v1

    const/4 v4, 0x2

    aget-wide v5, p1, v4

    mul-double v2, v2, v5

    aget-wide v5, p0, v4

    aget-wide v7, p1, v1

    mul-double v5, v5, v7

    sub-double/2addr v2, v5

    const/4 v5, 0x0

    aput-wide v2, v0, v5

    aget-wide v2, p0, v4

    aget-wide v6, p1, v5

    mul-double v2, v2, v6

    aget-wide v6, p0, v5

    aget-wide v8, p1, v4

    mul-double v6, v6, v8

    sub-double/2addr v2, v6

    aput-wide v2, v0, v1

    aget-wide v2, p0, v5

    aget-wide v6, p1, v1

    mul-double v2, v2, v6

    aget-wide v6, p0, v1

    aget-wide v8, p1, v5

    mul-double v6, v6, v8

    sub-double/2addr v2, v6

    aput-wide v2, v0, v4

    return-object v0
.end method

.method public static v3Dot([D[D)D
    .locals 7
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 289
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    mul-double v1, v1, v3

    const/4 v0, 0x1

    aget-wide v3, p0, v0

    aget-wide v5, p1, v0

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    const/4 v0, 0x2

    aget-wide v3, p0, v0

    aget-wide v5, p1, v0

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    return-wide v1
.end method

.method public static v3Length([D)D
    .locals 7
    .param p0, "a"    # [D

    .line 269
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p0, v0

    mul-double v1, v1, v3

    const/4 v0, 0x1

    aget-wide v3, p0, v0

    aget-wide v5, p0, v0

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    const/4 v0, 0x2

    aget-wide v3, p0, v0

    aget-wide v5, p0, v0

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static v3Normalize([DD)[D
    .locals 6
    .param p0, "vector"    # [D
    .param p1, "norm"    # D

    .line 276
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 277
    .local v2, "im":D
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    aget-wide v4, p0, v1

    mul-double v4, v4, v2

    aput-wide v4, v0, v1

    const/4 v1, 0x1

    aget-wide v4, p0, v1

    mul-double v4, v4, v2

    aput-wide v4, v0, v1

    const/4 v1, 0x2

    aget-wide v4, p0, v1

    mul-double v4, v4, v2

    aput-wide v4, v0, v1

    return-object v0
.end method
