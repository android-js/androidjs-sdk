.class public Landroid/support/constraint/motion/KeyAttributes;
.super Landroid/support/constraint/motion/Key;
.source "KeyAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/KeyAttributes$Loader;
    }
.end annotation


# static fields
.field public static final KEY_TYPE:I = 0x1

.field static final NAME:Ljava/lang/String; = "KeyAttribute"

.field private static final TAG:Ljava/lang/String; = "KeyAttribute"


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mElevation:F

.field private mPivotX:F

.field private mPivotY:F

.field private mProgress:F

.field private mRotation:F

.field private mRotationX:F

.field private mRotationY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransitionEasing:Ljava/lang/String;

.field private mTransitionPathRotate:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private mTranslationZ:F

.field private mVisibility:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/support/constraint/motion/Key;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mVisibility:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 44
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    .line 45
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    .line 46
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    .line 47
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    .line 48
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    .line 49
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    .line 50
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    .line 51
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    .line 52
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    .line 53
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    .line 54
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    .line 55
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    .line 56
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    .line 57
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mType:I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/motion/KeyAttributes;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    return p0
.end method

.method static synthetic access$002(Landroid/support/constraint/motion/KeyAttributes;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    return p1
.end method

.method static synthetic access$100(Landroid/support/constraint/motion/KeyAttributes;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    return p0
.end method

.method static synthetic access$1000(Landroid/support/constraint/motion/KeyAttributes;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    return p0
.end method

.method static synthetic access$1002(Landroid/support/constraint/motion/KeyAttributes;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    return p1
.end method

.method static synthetic access$102(Landroid/support/constraint/motion/KeyAttributes;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    return p1
.end method

.method static synthetic access$1100(Landroid/support/constraint/motion/KeyAttributes;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    return p0
.end method

.method static synthetic access$1102(Landroid/support/constraint/motion/KeyAttributes;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    return p1
.end method

.method static synthetic access$1200(Landroid/support/constraint/motion/KeyAttributes;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    return p0
.end method

.method static synthetic access$1202(Landroid/support/constraint/motion/KeyAttributes;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    return p1
.end method

.method static synthetic access$1300(Landroid/support/constraint/motion/KeyAttributes;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    return p0
.end method

.method static synthetic access$1302(Landroid/support/constraint/motion/KeyAttributes;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    return p1
.end method

.method static synthetic access$1400(Landroid/support/constraint/motion/KeyAttributes;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    return p0
.end method

.method static synthetic access$1402(Landroid/support/constraint/motion/KeyAttributes;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    return p1
.end method

.method static synthetic access$1500(Landroid/support/constraint/motion/KeyAttributes;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    return p0
.end method

.method static synthetic access$1502(Landroid/support/constraint/motion/KeyAttributes;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    return p1
.end method

.method static synthetic access$200(Landroid/support/constraint/motion/KeyAttributes;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    return p0
.end method

.method static synthetic access$202(Landroid/support/constraint/motion/KeyAttributes;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    return p1
.end method

.method static synthetic access$300(Landroid/support/constraint/motion/KeyAttributes;)I
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    return p0
.end method

.method static synthetic access$302(Landroid/support/constraint/motion/KeyAttributes;I)I
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    return p1
.end method

.method static synthetic access$400(Landroid/support/constraint/motion/KeyAttributes;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    return p0
.end method

.method static synthetic access$402(Landroid/support/constraint/motion/KeyAttributes;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    return p1
.end method

.method static synthetic access$500(Landroid/support/constraint/motion/KeyAttributes;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    return p0
.end method

.method static synthetic access$502(Landroid/support/constraint/motion/KeyAttributes;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    return p1
.end method

.method static synthetic access$600(Landroid/support/constraint/motion/KeyAttributes;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    return p0
.end method

.method static synthetic access$602(Landroid/support/constraint/motion/KeyAttributes;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    return p1
.end method

.method static synthetic access$700(Landroid/support/constraint/motion/KeyAttributes;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    return p0
.end method

.method static synthetic access$702(Landroid/support/constraint/motion/KeyAttributes;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    return p1
.end method

.method static synthetic access$800(Landroid/support/constraint/motion/KeyAttributes;)F
    .locals 0

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    return p0
.end method

.method static synthetic access$802(Landroid/support/constraint/motion/KeyAttributes;F)F
    .locals 0

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    return p1
.end method

.method static synthetic access$902(Landroid/support/constraint/motion/KeyAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionEasing:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/motion/SplineSet;",
            ">;)V"
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/SplineSet;

    const-string v3, "CUSTOM"

    .line 190
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x7

    if-eqz v3, :cond_1

    .line 191
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    iget-object v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintAttribute;

    if-eqz v1, :cond_0

    .line 194
    check-cast v2, Landroid/support/constraint/motion/SplineSet$CustomSet;

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    invoke-virtual {v2, v3, v1}, Landroid/support/constraint/motion/SplineSet$CustomSet;->setPoint(ILandroid/support/constraint/ConstraintAttribute;)V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 198
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto/16 :goto_2

    :sswitch_1
    const-string v5, "transitionPathRotate"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto/16 :goto_2

    :sswitch_3
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto/16 :goto_2

    :sswitch_4
    const-string v4, "transformPivotY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x6

    goto :goto_2

    :sswitch_5
    const-string v4, "transformPivotX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_6
    const-string v4, "scaleY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x9

    goto :goto_2

    :sswitch_7
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_8
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xd

    goto :goto_2

    :sswitch_9
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xc

    goto :goto_2

    :sswitch_a
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xb

    goto :goto_2

    :sswitch_b
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xa

    goto :goto_2

    :sswitch_c
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_d
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN addValues \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyAttributes"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 265
    :pswitch_0
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 260
    :pswitch_1
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 255
    :pswitch_2
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 250
    :pswitch_3
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 245
    :pswitch_4
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 240
    :pswitch_5
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 235
    :pswitch_6
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 230
    :pswitch_7
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 225
    :pswitch_8
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 220
    :pswitch_9
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 215
    :pswitch_a
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 210
    :pswitch_b
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 205
    :pswitch_c
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    .line 200
    :pswitch_d
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2d5a2d1e -> :sswitch_5
        -0x2d5a2d1d -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alpha"

    .line 84
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "elevation"

    .line 87
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "rotation"

    .line 90
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_2
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "rotationX"

    .line 93
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_3
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "rotationY"

    .line 96
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_4
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "transformPivotX"

    .line 99
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_5
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "transformPivotY"

    .line 102
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_6
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "translationX"

    .line 105
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_7
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "translationY"

    .line 108
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_8
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "translationZ"

    .line 111
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_9
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "transitionPathRotate"

    .line 114
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_a
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "scaleX"

    .line 117
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_b
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "scaleY"

    .line 120
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_c
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "progress"

    .line 123
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_d
    iget-object v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 126
    iget-object v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_e
    return-void
.end method

.method getCurveFit()I
    .locals 1

    .line 77
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    sget-object v0, Landroid/support/constraint/R$styleable;->KeyAttribute:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    invoke-static {p0, p1}, Landroid/support/constraint/motion/KeyAttributes$Loader;->read(Landroid/support/constraint/motion/KeyAttributes;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 136
    :cond_0
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_1
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "elevation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_2
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_3
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 146
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_4
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    .line 149
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_5
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    .line 152
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transformPivotX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_6
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    .line 155
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transformPivotY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_7
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    .line 158
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_8
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    .line 161
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_9
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    .line 164
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationZ"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_a
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b

    .line 167
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transitionPathRotate"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_b
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c

    .line 170
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_c
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    .line 173
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_d
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_e

    .line 176
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_e
    iget-object v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 179
    iget-object v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_f
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 277
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "visibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "mTranslationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "curveFit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_8
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_9
    const-string v0, "pivotY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_a
    const-string v0, "pivotX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_b
    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    goto :goto_1

    :sswitch_c
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto :goto_1

    :sswitch_d
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_e
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_f
    const-string v0, "transitionEasing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto :goto_1

    :sswitch_10
    const-string v0, "motionProgress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 327
    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    goto/16 :goto_2

    .line 324
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    goto/16 :goto_2

    .line 321
    :pswitch_2
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    goto :goto_2

    .line 318
    :pswitch_3
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    goto :goto_2

    .line 315
    :pswitch_4
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toBoolean(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mVisibility:Z

    goto :goto_2

    .line 312
    :pswitch_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionEasing:Ljava/lang/String;

    goto :goto_2

    .line 309
    :pswitch_6
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    goto :goto_2

    .line 306
    :pswitch_7
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    goto :goto_2

    .line 303
    :pswitch_8
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    goto :goto_2

    .line 300
    :pswitch_9
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    goto :goto_2

    .line 297
    :pswitch_a
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    goto :goto_2

    .line 294
    :pswitch_b
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    goto :goto_2

    .line 291
    :pswitch_c
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    goto :goto_2

    .line 288
    :pswitch_d
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    goto :goto_2

    .line 285
    :pswitch_e
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    goto :goto_2

    .line 282
    :pswitch_f
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toInt(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    goto :goto_2

    .line 279
    :pswitch_10
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x72062ffd -> :sswitch_10
        -0x6c0d7d20 -> :sswitch_f
        -0x4a771f66 -> :sswitch_e
        -0x4a771f65 -> :sswitch_d
        -0x490b9c39 -> :sswitch_c
        -0x490b9c38 -> :sswitch_b
        -0x3ae243aa -> :sswitch_a
        -0x3ae243a9 -> :sswitch_9
        -0x3621dfb2 -> :sswitch_8
        -0x3621dfb1 -> :sswitch_7
        -0x266f082 -> :sswitch_6
        -0x42d1a3 -> :sswitch_5
        0x2382115 -> :sswitch_4
        0x589b15e -> :sswitch_3
        0x2283b8a2 -> :sswitch_2
        0x4e897cd6 -> :sswitch_1
        0x73b66312 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
