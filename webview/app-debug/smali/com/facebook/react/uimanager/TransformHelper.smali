.class public Lcom/facebook/react/uimanager/TransformHelper;
.super Ljava/lang/Object;
.source "TransformHelper.java"


# static fields
.field private static sHelperMatrix:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/facebook/react/uimanager/TransformHelper$1;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/TransformHelper$1;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/TransformHelper;->sHelperMatrix:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D
    .locals 5
    .param p0, "transformMap"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p1, "key"    # Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    .line 31
    .local v0, "inRadians":Z
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_2

    .line 32
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "stringValue":Ljava/lang/String;
    const-string v2, "rad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 35
    :cond_0
    const-string v2, "deg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 39
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v1, v2

    .line 40
    .local v1, "value":D
    goto :goto_1

    .line 41
    .end local v1    # "value":D
    :cond_2
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 43
    .restart local v1    # "value":D
    :goto_1
    if-eqz v0, :cond_3

    move-wide v3, v1

    goto :goto_2

    :cond_3
    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->degreesToRadians(D)D

    move-result-wide v3

    :goto_2
    return-wide v3
.end method

.method public static processTransform(Lcom/facebook/react/bridge/ReadableArray;[D)V
    .locals 18
    .param p0, "transforms"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p1, "result"    # [D

    .line 47
    sget-object v0, Lcom/facebook/react/uimanager/TransformHelper;->sHelperMatrix:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 48
    .local v0, "helperMatrix":[D
    invoke-static/range {p1 .. p1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->resetIdentityMatrix([D)V

    .line 50
    const/4 v1, 0x0

    .local v1, "transformIdx":I
    invoke-interface/range {p0 .. p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v8

    move v9, v1

    .end local v1    # "transformIdx":I
    .local v8, "size":I
    .local v9, "transformIdx":I
    :goto_0
    if-ge v9, v8, :cond_10

    .line 51
    move-object/from16 v10, p0

    invoke-interface {v10, v9}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v11

    .line 52
    .local v11, "transform":Lcom/facebook/react/bridge/ReadableMap;
    invoke-interface {v11}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v12

    .line 54
    .local v12, "transformType":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/react/uimanager/MatrixMathHelper;->resetIdentityMatrix([D)V

    .line 55
    const-string v1, "matrix"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-interface {v11, v12}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    .line 57
    .local v1, "matrix":Lcom/facebook/react/bridge/ReadableArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 58
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 60
    .end local v1    # "matrix":Lcom/facebook/react/bridge/ReadableArray;
    .end local v2    # "i":I
    :cond_0
    goto/16 :goto_4

    :cond_1
    const-string v1, "perspective"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-interface {v11, v12}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyPerspective([DD)V

    goto/16 :goto_4

    .line 62
    :cond_2
    const-string v1, "rotateX"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    nop

    .line 65
    invoke-static {v11, v12}, Lcom/facebook/react/uimanager/TransformHelper;->convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D

    move-result-wide v1

    .line 63
    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyRotateX([DD)V

    goto/16 :goto_4

    .line 66
    :cond_3
    const-string v1, "rotateY"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    nop

    .line 69
    invoke-static {v11, v12}, Lcom/facebook/react/uimanager/TransformHelper;->convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D

    move-result-wide v1

    .line 67
    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyRotateY([DD)V

    goto/16 :goto_4

    .line 70
    :cond_4
    const-string v1, "rotate"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "rotateZ"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_3

    .line 74
    :cond_5
    const-string v1, "scale"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 75
    invoke-interface {v11, v12}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 76
    .local v1, "scale":D
    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyScaleX([DD)V

    .line 77
    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyScaleY([DD)V

    .line 78
    .end local v1    # "scale":D
    goto/16 :goto_4

    :cond_6
    const-string v1, "scaleX"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 79
    invoke-interface {v11, v12}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyScaleX([DD)V

    goto/16 :goto_4

    .line 80
    :cond_7
    const-string v1, "scaleY"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 81
    invoke-interface {v11, v12}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyScaleY([DD)V

    goto/16 :goto_4

    .line 82
    :cond_8
    const-string v1, "translate"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_a

    .line 83
    invoke-interface {v11, v12}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v13

    .line 84
    .local v13, "value":Lcom/facebook/react/bridge/ReadableArray;
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v14

    .line 85
    .local v14, "x":D
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v16

    .line 86
    .local v16, "y":D
    invoke-interface {v13}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    const/4 v4, 0x2

    if-le v1, v4, :cond_9

    invoke-interface {v13, v4}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v1

    move-wide v6, v1

    goto :goto_2

    :cond_9
    move-wide v6, v2

    .line 87
    .local v6, "z":D
    :goto_2
    move-object v1, v0

    move-wide v2, v14

    move-wide/from16 v4, v16

    invoke-static/range {v1 .. v7}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyTranslate3D([DDDD)V

    .line 88
    .end local v6    # "z":D
    .end local v13    # "value":Lcom/facebook/react/bridge/ReadableArray;
    .end local v14    # "x":D
    .end local v16    # "y":D
    goto :goto_4

    :cond_a
    const-string v1, "translateX"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 89
    invoke-interface {v11, v12}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v0, v4, v5, v2, v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyTranslate2D([DDD)V

    goto :goto_4

    .line 90
    :cond_b
    const-string v1, "translateY"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 91
    invoke-interface {v11, v12}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyTranslate2D([DDD)V

    goto :goto_4

    .line 92
    :cond_c
    const-string v1, "skewX"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 93
    nop

    .line 95
    invoke-static {v11, v12}, Lcom/facebook/react/uimanager/TransformHelper;->convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D

    move-result-wide v1

    .line 93
    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applySkewX([DD)V

    goto :goto_4

    .line 96
    :cond_d
    const-string v1, "skewY"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 97
    nop

    .line 99
    invoke-static {v11, v12}, Lcom/facebook/react/uimanager/TransformHelper;->convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D

    move-result-wide v1

    .line 97
    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applySkewY([DD)V

    goto :goto_4

    .line 101
    :cond_e
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported transform type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_f
    :goto_3
    nop

    .line 73
    invoke-static {v11, v12}, Lcom/facebook/react/uimanager/TransformHelper;->convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D

    move-result-wide v1

    .line 71
    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyRotateZ([DD)V

    .line 105
    :goto_4
    move-object/from16 v1, p1

    invoke-static {v1, v1, v0}, Lcom/facebook/react/uimanager/MatrixMathHelper;->multiplyInto([D[D[D)V

    .line 50
    .end local v11    # "transform":Lcom/facebook/react/bridge/ReadableMap;
    .end local v12    # "transformType":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_10
    move-object/from16 v10, p0

    move-object/from16 v1, p1

    .line 107
    .end local v8    # "size":I
    .end local v9    # "transformIdx":I
    return-void
.end method
