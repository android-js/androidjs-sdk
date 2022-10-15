.class public Landroid/support/constraint/motion/MotionScene;
.super Ljava/lang/Object;
.source "MotionScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/MotionScene$Transition;
    }
.end annotation


# static fields
.field static final ANTICIPATE:I = 0x4

.field static final BOUNCE:I = 0x5

.field private static final DEBUG:Z = false

.field static final EASE_IN:I = 0x1

.field static final EASE_IN_OUT:I = 0x0

.field static final EASE_OUT:I = 0x2

.field private static final INTERPOLATOR_REFRENCE_ID:I = -0x2

.field public static final LAYOUT_HONOR_REQUEST:I = 0x1

.field public static final LAYOUT_IGNORE_REQUEST:I = 0x0

.field static final LINEAR:I = 0x3

.field private static final SPLINE_STRING:I = -0x1

.field public static final TAG:Ljava/lang/String; = "MotionScene"

.field static final TRANSITION_BACKWARD:I = 0x0

.field static final TRANSITION_FORWARD:I = 0x1

.field public static final UNSET:I = -0x1


# instance fields
.field private DEBUG_DESKTOP:Z

.field private mAbstractTransitionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionScene$Transition;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSetIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/ConstraintSet;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

.field private mDefaultDuration:I

.field private mDefaultTransition:Landroid/support/constraint/motion/MotionScene$Transition;

.field private mDeriveMap:Landroid/util/SparseIntArray;

.field private mDisableAutoTransition:Z

.field private mIgnoreTouch:Z

.field private mLastTouchDown:Landroid/view/MotionEvent;

.field mLastTouchX:F

.field mLastTouchY:F

.field private mLayoutDuringTransition:I

.field private final mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

.field private mMotionOutsideRegion:Z

.field private mRtl:Z

.field mStateSet:Landroid/support/constraint/StateSet;

.field private mTransitionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionScene$Transition;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityTracker:Landroid/support/constraint/motion/MotionLayout$MotionTracker;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionLayout;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # Landroid/support/constraint/motion/MotionLayout;
    .param p3, "resourceID"    # I

    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    .line 70
    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene;->mDisableAutoTransition:Z

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 73
    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    .line 79
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene;->DEBUG_DESKTOP:Z

    .line 80
    const/16 v0, 0x190

    iput v0, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultDuration:I

    .line 81
    iput v1, p0, Landroid/support/constraint/motion/MotionScene;->mLayoutDuringTransition:I

    .line 85
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene;->mIgnoreTouch:Z

    .line 86
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene;->mMotionOutsideRegion:Z

    .line 891
    iput-object p2, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    .line 892
    invoke-direct {p0, p1, p3}, Landroid/support/constraint/motion/MotionScene;->load(Landroid/content/Context;I)V

    .line 894
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    sget v1, Landroid/support/constraint/R$id;->motion_base:I

    new-instance v2, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v2}, Landroid/support/constraint/ConstraintSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 895
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    sget v1, Landroid/support/constraint/R$id;->motion_base:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "motion_base"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/motion/MotionLayout;)V
    .locals 3
    .param p1, "layout"    # Landroid/support/constraint/motion/MotionLayout;

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    .line 70
    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene;->mDisableAutoTransition:Z

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 73
    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    .line 79
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene;->DEBUG_DESKTOP:Z

    .line 80
    const/16 v0, 0x190

    iput v0, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultDuration:I

    .line 81
    iput v1, p0, Landroid/support/constraint/motion/MotionScene;->mLayoutDuringTransition:I

    .line 85
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene;->mIgnoreTouch:Z

    .line 86
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionScene;->mMotionOutsideRegion:Z

    .line 887
    iput-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    .line 888
    return-void
.end method

.method static synthetic access$1000(Landroid/support/constraint/motion/MotionScene;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene;

    .line 60
    iget v0, p0, Landroid/support/constraint/motion/MotionScene;->mLayoutDuringTransition:I

    return v0
.end method

.method static synthetic access$1100(Landroid/support/constraint/motion/MotionScene;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene;

    .line 60
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/constraint/motion/MotionScene;)Landroid/support/constraint/motion/MotionLayout;
    .locals 1
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene;

    .line 60
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/constraint/motion/MotionScene;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionScene;

    .line 60
    iget v0, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultDuration:I

    return v0
.end method

.method private getId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idString"    # Ljava/lang/String;

    .line 1005
    const/4 v0, -0x1

    .line 1006
    .local v0, "id":I
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1007
    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1008
    .local v1, "tmp":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v3, v1, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1009
    iget-boolean v3, p0, Landroid/support/constraint/motion/MotionScene;->DEBUG_DESKTOP:Z

    if-eqz v3, :cond_0

    .line 1010
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id getMap res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1013
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1014
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 1015
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1017
    :cond_1
    const-string v1, "MotionScene"

    const-string v2, "error in parsing id"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_2
    :goto_0
    return v0
.end method

.method private getIndex(Landroid/support/constraint/motion/MotionScene$Transition;)I
    .locals 4
    .param p1, "transition"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 183
    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$300(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    .line 184
    .local v0, "id":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, "index":I
    :goto_0
    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 190
    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v3}, Landroid/support/constraint/motion/MotionScene$Transition;->access$300(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 191
    return v2

    .line 189
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_1
    return v1

    .line 185
    .end local v2    # "index":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The transition must have an id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private getRealID(I)I
    .locals 2
    .param p1, "stateid"    # I

    .line 220
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    if-eqz v0, :cond_0

    .line 221
    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/support/constraint/StateSet;->stateGetConstraintID(III)I

    move-result v0

    .line 222
    .local v0, "tmp":I
    if-eq v0, v1, :cond_0

    .line 223
    return v0

    .line 226
    .end local v0    # "tmp":I
    :cond_0
    return p1
.end method

.method private hasCycleDependency(I)Z
    .locals 4
    .param p1, "key"    # I

    .line 1522
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1523
    .local v0, "derived":I
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1524
    .local v1, "len":I
    :goto_0
    if-lez v0, :cond_2

    .line 1525
    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    .line 1526
    return v2

    .line 1528
    :cond_0
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "len":I
    .local v3, "len":I
    if-gez v1, :cond_1

    .line 1529
    return v2

    .line 1531
    :cond_1
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    move v1, v3

    goto :goto_0

    .line 1533
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private isProcessingTouch()Z
    .locals 1

    .line 414
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mVelocityTracker:Landroid/support/constraint/motion/MotionLayout$MotionTracker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private load(Landroid/content/Context;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .line 906
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 907
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 908
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 909
    .local v2, "document":Ljava/lang/String;
    const/4 v3, 0x0

    .line 911
    .local v3, "tagName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 912
    .local v4, "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    :try_start_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 913
    .local v5, "eventType":I
    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    .line 915
    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    .line 976
    :pswitch_1
    const/4 v3, 0x0

    .line 977
    goto/16 :goto_6

    .line 920
    :pswitch_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 921
    iget-boolean v7, p0, Landroid/support/constraint/motion/MotionScene;->DEBUG_DESKTOP:Z

    if-eqz v7, :cond_0

    .line 922
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsing = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 927
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, -0x1

    const-string v9, "MotionScene"

    sparse-switch v7, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    :try_start_1
    const-string v6, "StateSet"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_2

    :sswitch_1
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_2
    const-string v6, "OnSwipe"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_3
    const-string v6, "OnClick"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_4
    const-string v7, "Transition"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :sswitch_5
    const-string v6, "KeyFrameSet"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x6

    goto :goto_2

    :sswitch_6
    const-string v6, "ConstraintSet"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x5

    goto :goto_2

    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_1

    .line 970
    goto/16 :goto_4

    .line 966
    :pswitch_3
    new-instance v6, Landroid/support/constraint/motion/KeyFrames;

    invoke-direct {v6, p1, v1}, Landroid/support/constraint/motion/KeyFrames;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 967
    .local v6, "keyFrames":Landroid/support/constraint/motion/KeyFrames;
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1300(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    goto/16 :goto_5

    .line 963
    .end local v6    # "keyFrames":Landroid/support/constraint/motion/KeyFrames;
    :pswitch_4
    invoke-direct {p0, p1, v1}, Landroid/support/constraint/motion/MotionScene;->parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 964
    goto/16 :goto_5

    .line 960
    :pswitch_5
    new-instance v6, Landroid/support/constraint/StateSet;

    invoke-direct {v6, p1, v1}, Landroid/support/constraint/StateSet;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v6, p0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    .line 961
    goto/16 :goto_5

    .line 957
    :pswitch_6
    invoke-virtual {v4, p1, v1}, Landroid/support/constraint/motion/MotionScene$Transition;->addOnClick(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 958
    goto/16 :goto_5

    .line 949
    :pswitch_7
    if-nez v4, :cond_2

    .line 950
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    .line 951
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v7

    .line 952
    .local v7, "line":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " OnSwipe ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".xml:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "line":I
    :cond_2
    new-instance v6, Landroid/support/constraint/motion/TouchResponse;

    iget-object v7, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-direct {v6, p1, v7, v1}, Landroid/support/constraint/motion/TouchResponse;-><init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-static {v4, v6}, Landroid/support/constraint/motion/MotionScene$Transition;->access$202(Landroid/support/constraint/motion/MotionScene$Transition;Landroid/support/constraint/motion/TouchResponse;)Landroid/support/constraint/motion/TouchResponse;

    .line 955
    goto :goto_5

    .line 932
    :pswitch_8
    iget-object v6, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    new-instance v7, Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-direct {v7, p0, p1, v1}, Landroid/support/constraint/motion/MotionScene$Transition;-><init>(Landroid/support/constraint/motion/MotionScene;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v4, v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    iget-object v6, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-nez v6, :cond_3

    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1200(Landroid/support/constraint/motion/MotionScene$Transition;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 934
    iput-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 935
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 936
    iget-object v6, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v6}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v6

    iget-boolean v7, p0, Landroid/support/constraint/motion/MotionScene;->mRtl:Z

    invoke-virtual {v6, v7}, Landroid/support/constraint/motion/TouchResponse;->setRTL(Z)V

    .line 939
    :cond_3
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1200(Landroid/support/constraint/motion/MotionScene$Transition;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 940
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 941
    iput-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    goto :goto_3

    .line 943
    :cond_4
    iget-object v6, p0, Landroid/support/constraint/motion/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    :goto_3
    iget-object v6, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 929
    :pswitch_9
    invoke-direct {p0, p1, v1}, Landroid/support/constraint/motion/MotionScene;->parseMotionSceneTags(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 930
    goto :goto_5

    .line 970
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING UNKNOWN ATTRIBUTE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_5
    :goto_5
    goto :goto_6

    .line 917
    :pswitch_a
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 918
    nop

    .line 914
    :goto_6
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v6

    goto/16 :goto_0

    .line 913
    .end local v4    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    .end local v5    # "eventType":I
    :cond_6
    goto :goto_7

    .line 984
    :catch_0
    move-exception v4

    .line 985
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 982
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 983
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 986
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_7
    nop

    .line 987
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_6
        -0x49df9cec -> :sswitch_5
        0x100d4975 -> :sswitch_4
        0x12a432c9 -> :sswitch_3
        0x138aac7b -> :sswitch_2
        0x2f487256 -> :sswitch_1
        0x526c4e31 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1024
    new-instance v0, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 1025
    .local v0, "set":Landroid/support/constraint/ConstraintSet;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintSet;->setForceId(Z)V

    .line 1026
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 1027
    .local v2, "count":I
    const/4 v3, -0x1

    .line 1028
    .local v3, "id":I
    const/4 v4, -0x1

    .line 1029
    .local v4, "derivedId":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x1

    const/4 v7, -0x1

    if-ge v5, v2, :cond_2

    .line 1030
    invoke-interface {p2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 1031
    .local v8, "name":Ljava/lang/String;
    invoke-interface {p2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 1032
    .local v9, "value":Ljava/lang/String;
    iget-boolean v10, p0, Landroid/support/constraint/motion/MotionScene;->DEBUG_DESKTOP:Z

    if-eqz v10, :cond_0

    .line 1033
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "id string = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1035
    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v6, "id"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_1
    const-string v10, "deriveConstraintsFrom"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    goto :goto_3

    .line 1041
    :pswitch_0
    invoke-direct {p0, p1, v9}, Landroid/support/constraint/motion/MotionScene;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    goto :goto_3

    .line 1037
    :pswitch_1
    invoke-direct {p0, p1, v9}, Landroid/support/constraint/motion/MotionScene;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 1038
    iget-object v6, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    invoke-static {v9}, Landroid/support/constraint/motion/MotionScene;->stripID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    nop

    .line 1029
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1045
    .end local v5    # "i":I
    :cond_2
    if-eq v3, v7, :cond_5

    .line 1046
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget v1, v1, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-eqz v1, :cond_3

    .line 1047
    invoke-virtual {v0, v6}, Landroid/support/constraint/ConstraintSet;->setValidateOnParse(Z)V

    .line 1049
    :cond_3
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1050
    if-eq v4, v7, :cond_4

    .line 1051
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1053
    :cond_4
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1055
    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x59328327 -> :sswitch_1
        0xd1b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseMotionSceneTags(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 990
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 991
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Landroid/support/constraint/R$styleable;->MotionScene:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 992
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 993
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 994
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 995
    .local v4, "attr":I
    sget v5, Landroid/support/constraint/R$styleable;->MotionScene_defaultDuration:I

    if-ne v4, v5, :cond_0

    .line 996
    iget v5, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultDuration:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultDuration:I

    goto :goto_1

    .line 997
    :cond_0
    sget v5, Landroid/support/constraint/R$styleable;->MotionScene_layoutDuringTransition:I

    if-ne v4, v5, :cond_1

    .line 998
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/motion/MotionScene;->mLayoutDuringTransition:I

    .line 993
    .end local v4    # "attr":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1001
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1002
    return-void
.end method

.method private readConstraintChain(I)V
    .locals 5
    .param p1, "key"    # I

    .line 1540
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1541
    .local v0, "derivedFromId":I
    if-lez v0, :cond_1

    .line 1542
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/constraint/motion/MotionScene;->readConstraintChain(I)V

    .line 1543
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintSet;

    .line 1544
    .local v1, "cs":Landroid/support/constraint/ConstraintSet;
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintSet;

    .line 1545
    .local v2, "derivedFrom":Landroid/support/constraint/ConstraintSet;
    if-nez v2, :cond_0

    .line 1546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR! invalid deriveConstraintsFrom: @id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    .line 1547
    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1546
    const-string v4, "MotionScene"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    return-void

    .line 1550
    :cond_0
    invoke-virtual {v1, v2}, Landroid/support/constraint/ConstraintSet;->readFallback(Landroid/support/constraint/ConstraintSet;)V

    .line 1551
    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1553
    .end local v1    # "cs":Landroid/support/constraint/ConstraintSet;
    .end local v2    # "derivedFrom":Landroid/support/constraint/ConstraintSet;
    :cond_1
    return-void
.end method

.method public static stripID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .line 1557
    if-nez p0, :cond_0

    .line 1558
    const-string v0, ""

    return-object v0

    .line 1560
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1561
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 1562
    return-object p0

    .line 1564
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addOnClickListeners(Landroid/support/constraint/motion/MotionLayout;I)V
    .locals 4
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;
    .param p2, "currentState"    # I

    .line 243
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 244
    .local v1, "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 245
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;

    .line 246
    .local v3, "onClick":Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;
    invoke-virtual {v3, p1}, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->removeOnClickListeners(Landroid/support/constraint/motion/MotionLayout;)V

    .line 247
    .end local v3    # "onClick":Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;
    goto :goto_1

    .line 249
    .end local v1    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_0
    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 251
    .restart local v1    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 252
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;

    .line 253
    .restart local v3    # "onClick":Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;
    invoke-virtual {v3, p1}, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->removeOnClickListeners(Landroid/support/constraint/motion/MotionLayout;)V

    .line 254
    .end local v3    # "onClick":Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;
    goto :goto_3

    .line 256
    .end local v1    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_2
    goto :goto_2

    .line 258
    :cond_3
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 259
    .restart local v1    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 260
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;

    .line 261
    .restart local v3    # "onClick":Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;
    invoke-virtual {v3, p1, p2, v1}, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->addOnClickListeners(Landroid/support/constraint/motion/MotionLayout;ILandroid/support/constraint/motion/MotionScene$Transition;)V

    .line 262
    .end local v3    # "onClick":Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;
    goto :goto_5

    .line 264
    .end local v1    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_4
    goto :goto_4

    .line 265
    :cond_5
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 266
    .restart local v1    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 267
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$400(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;

    .line 268
    .restart local v3    # "onClick":Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;
    invoke-virtual {v3, p1, p2, v1}, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->addOnClickListeners(Landroid/support/constraint/motion/MotionLayout;ILandroid/support/constraint/motion/MotionScene$Transition;)V

    .line 269
    .end local v3    # "onClick":Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;
    goto :goto_7

    .line 271
    .end local v1    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_6
    goto :goto_6

    .line 272
    :cond_7
    return-void
.end method

.method public addTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 158
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionScene;->getIndex(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    .line 159
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 164
    :goto_0
    return-void
.end method

.method autoTransition(Landroid/support/constraint/motion/MotionLayout;I)Z
    .locals 7
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;
    .param p2, "currentState"    # I

    .line 357
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionScene;->isProcessingTouch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 358
    return v1

    .line 360
    :cond_0
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionScene;->mDisableAutoTransition:Z

    if-eqz v0, :cond_1

    .line 361
    return v1

    .line 364
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 365
    .local v2, "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$600(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    if-nez v3, :cond_2

    .line 366
    goto :goto_0

    .line 368
    :cond_2
    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-ne v3, v2, :cond_3

    .line 369
    goto :goto_0

    .line 371
    :cond_3
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    const/4 v4, 0x1

    if-ne p2, v3, :cond_6

    .line 372
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$600(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_4

    .line 373
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$600(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    .line 374
    :cond_4
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 375
    invoke-virtual {p1, v2}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 376
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$600(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 377
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->transitionToEnd()V

    .line 378
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 379
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    goto :goto_1

    .line 381
    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 382
    invoke-virtual {p1, v4}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 383
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 384
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 385
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 386
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->onNewStateAttachHandlers()V

    .line 388
    :goto_1
    return v4

    .line 390
    :cond_6
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    if-ne p2, v3, :cond_9

    .line 391
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$600(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_7

    .line 392
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$600(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    if-ne v3, v4, :cond_9

    .line 393
    :cond_7
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 394
    invoke-virtual {p1, v2}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 395
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$600(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 396
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->transitionToStart()V

    .line 397
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 398
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    goto :goto_2

    .line 400
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 401
    invoke-virtual {p1, v4}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 402
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 403
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 404
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 405
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->onNewStateAttachHandlers()V

    .line 407
    :goto_2
    return v4

    .line 409
    .end local v2    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_9
    goto/16 :goto_0

    .line 410
    :cond_a
    return v1
.end method

.method public bestTransitionFor(IFFLandroid/view/MotionEvent;)Landroid/support/constraint/motion/MotionScene$Transition;
    .locals 9
    .param p1, "currentState"    # I
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "mLastTouchDown"    # Landroid/view/MotionEvent;

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/motion/MotionScene$Transition;>;"
    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    .line 277
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionScene;->getTransitionsWithState(I)Ljava/util/List;

    move-result-object v0

    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, "max":F
    const/4 v2, 0x0

    .line 280
    .local v2, "best":Landroid/support/constraint/motion/MotionScene$Transition;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 281
    .local v3, "cache":Landroid/graphics/RectF;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 282
    .local v5, "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-static {v5}, Landroid/support/constraint/motion/MotionScene$Transition;->access$500(Landroid/support/constraint/motion/MotionScene$Transition;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 283
    goto :goto_0

    .line 285
    :cond_0
    invoke-static {v5}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 286
    invoke-static {v5}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v6

    iget-boolean v7, p0, Landroid/support/constraint/motion/MotionScene;->mRtl:Z

    invoke-virtual {v6, v7}, Landroid/support/constraint/motion/TouchResponse;->setRTL(Z)V

    .line 287
    invoke-static {v5}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v6

    iget-object v7, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v6, v7, v3}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    .line 288
    .local v6, "region":Landroid/graphics/RectF;
    if-eqz v6, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    if-nez v7, :cond_1

    .line 289
    goto :goto_0

    .line 291
    :cond_1
    invoke-static {v5}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v7

    iget-object v8, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v7, v8, v3}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    .line 292
    if-eqz v6, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    if-nez v7, :cond_2

    .line 293
    goto :goto_0

    .line 296
    :cond_2
    invoke-static {v5}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Landroid/support/constraint/motion/TouchResponse;->dot(FF)F

    move-result v7

    .line 301
    .local v7, "val":F
    invoke-static {v5}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v8

    if-ne v8, p1, :cond_3

    .line 302
    const/high16 v8, -0x40800000    # -1.0f

    mul-float v7, v7, v8

    goto :goto_1

    .line 304
    :cond_3
    const v8, 0x3f8ccccd    # 1.1f

    mul-float v7, v7, v8

    .line 307
    :goto_1
    cmpl-float v8, v7, v1

    if-lez v8, :cond_4

    .line 308
    move v1, v7

    .line 309
    move-object v2, v5

    .line 312
    .end local v5    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    .end local v6    # "region":Landroid/graphics/RectF;
    .end local v7    # "val":F
    :cond_4
    goto :goto_0

    .line 321
    :cond_5
    return-object v2

    .line 323
    .end local v1    # "max":F
    .end local v2    # "best":Landroid/support/constraint/motion/MotionScene$Transition;
    .end local v3    # "cache":Landroid/graphics/RectF;
    :cond_6
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    return-object v1
.end method

.method public disableAutoTransition(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .line 1597
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionScene;->mDisableAutoTransition:Z

    .line 1598
    return-void
.end method

.method public gatPathMotionArc()I
    .locals 1

    .line 1449
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1800(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method getConstraintSet(I)Landroid/support/constraint/ConstraintSet;
    .locals 1
    .param p1, "id"    # I

    .line 1080
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(III)Landroid/support/constraint/ConstraintSet;

    move-result-object v0

    return-object v0
.end method

.method getConstraintSet(III)Landroid/support/constraint/ConstraintSet;
    .locals 3
    .param p1, "id"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1084
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionScene;->DEBUG_DESKTOP:Z

    if-eqz v0, :cond_0

    .line 1085
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1086
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1088
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    if-eqz v0, :cond_1

    .line 1089
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/constraint/StateSet;->stateGetConstraintID(III)I

    move-result v0

    .line 1090
    .local v0, "cid":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1091
    move p1, v0

    .line 1094
    .end local v0    # "cid":I
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warning could not find ConstraintSet id/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " In MotionScene"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionScene"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet;

    return-object v0

    .line 1098
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet;

    return-object v0
.end method

.method public getConstraintSet(Landroid/content/Context;Ljava/lang/String;)Landroid/support/constraint/ConstraintSet;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .line 1062
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionScene;->DEBUG_DESKTOP:Z

    if-eqz v0, :cond_0

    .line 1063
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1064
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1066
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1067
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1068
    .local v1, "key":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 1069
    .local v2, "IdAsString":Ljava/lang/String;
    iget-boolean v3, p0, Landroid/support/constraint/motion/MotionScene;->DEBUG_DESKTOP:Z

    if-eqz v3, :cond_1

    .line 1070
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Id for <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> is <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> looking for <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1072
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1073
    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintSet;

    return-object v3

    .line 1066
    .end local v1    # "key":I
    .end local v2    # "IdAsString":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1076
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstraintSetIds()[I
    .locals 3

    .line 340
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 341
    .local v0, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 342
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v0, v1

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionScene$Transition;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1429
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_0

    .line 1430
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1700(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    return v0

    .line 1432
    :cond_0
    iget v0, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultDuration:I

    return v0
.end method

.method getEndId()I
    .locals 1

    .line 1381
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-nez v0, :cond_0

    .line 1382
    const/4 v0, -0x1

    return v0

    .line 1384
    :cond_0
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .line 1395
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1400(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1420
    return-object v1

    .line 1418
    :pswitch_0
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object v0

    .line 1416
    :pswitch_1
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    return-object v0

    .line 1414
    :pswitch_2
    return-object v1

    .line 1412
    :pswitch_3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object v0

    .line 1410
    :pswitch_4
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object v0

    .line 1408
    :pswitch_5
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object v0

    .line 1397
    :pswitch_6
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1500(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/constraint/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroid/support/constraint/motion/utils/Easing;

    move-result-object v0

    .line 1398
    .local v0, "easing":Landroid/support/constraint/motion/utils/Easing;
    new-instance v1, Landroid/support/constraint/motion/MotionScene$1;

    invoke-direct {v1, p0, v0}, Landroid/support/constraint/motion/MotionScene$1;-><init>(Landroid/support/constraint/motion/MotionScene;Landroid/support/constraint/motion/utils/Easing;)V

    return-object v1

    .line 1405
    .end local v0    # "easing":Landroid/support/constraint/motion/utils/Easing;
    :pswitch_7
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 1406
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1600(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v1

    .line 1405
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
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

.method getKeyFrame(Landroid/content/Context;III)Landroid/support/constraint/motion/Key;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "target"    # I
    .param p4, "position"    # I

    .line 1140
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1141
    return-object v1

    .line 1143
    :cond_0
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1300(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/KeyFrames;

    .line 1144
    .local v2, "keyFrames":Landroid/support/constraint/motion/KeyFrames;
    invoke-virtual {v2}, Landroid/support/constraint/motion/KeyFrames;->getKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1145
    .local v4, "integer":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne p3, v5, :cond_2

    .line 1146
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/support/constraint/motion/KeyFrames;->getKeyFramesForView(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 1147
    .local v5, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/motion/Key;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/motion/Key;

    .line 1148
    .local v7, "key":Landroid/support/constraint/motion/Key;
    iget v8, v7, Landroid/support/constraint/motion/Key;->mFramePosition:I

    if-ne v8, p4, :cond_1

    .line 1149
    iget v8, v7, Landroid/support/constraint/motion/Key;->mType:I

    if-ne v8, p2, :cond_1

    .line 1150
    return-object v7

    .line 1153
    .end local v7    # "key":Landroid/support/constraint/motion/Key;
    :cond_1
    goto :goto_2

    .line 1155
    .end local v4    # "integer":Ljava/lang/Integer;
    .end local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/motion/Key;>;"
    :cond_2
    goto :goto_1

    .line 1157
    .end local v2    # "keyFrames":Landroid/support/constraint/motion/KeyFrames;
    :cond_3
    goto :goto_0

    .line 1158
    :cond_4
    return-object v1
.end method

.method public getKeyFrames(Landroid/support/constraint/motion/MotionController;)V
    .locals 2
    .param p1, "motionController"    # Landroid/support/constraint/motion/MotionController;

    .line 1117
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-nez v0, :cond_1

    .line 1118
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_0

    .line 1119
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1300(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/KeyFrames;

    .line 1120
    .local v1, "keyFrames":Landroid/support/constraint/motion/KeyFrames;
    invoke-virtual {v1, p1}, Landroid/support/constraint/motion/KeyFrames;->addFrames(Landroid/support/constraint/motion/MotionController;)V

    .line 1121
    .end local v1    # "keyFrames":Landroid/support/constraint/motion/KeyFrames;
    goto :goto_0

    .line 1123
    :cond_0
    return-void

    .line 1125
    :cond_1
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1300(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/KeyFrames;

    .line 1126
    .restart local v1    # "keyFrames":Landroid/support/constraint/motion/KeyFrames;
    invoke-virtual {v1, p1}, Landroid/support/constraint/motion/KeyFrames;->addFrames(Landroid/support/constraint/motion/MotionController;)V

    .line 1127
    .end local v1    # "keyFrames":Landroid/support/constraint/motion/KeyFrames;
    goto :goto_1

    .line 1128
    :cond_2
    return-void
.end method

.method getMaxAcceleration()F
    .locals 1

    .line 1466
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/motion/TouchResponse;->getMaxAcceleration()F

    move-result v0

    return v0

    .line 1469
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getMaxVelocity()F
    .locals 1

    .line 1473
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/motion/TouchResponse;->getMaxVelocity()F

    move-result v0

    return v0

    .line 1476
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getMoveWhenScrollAtTop()Z
    .locals 1

    .line 1486
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/motion/TouchResponse;->getMoveWhenScrollAtTop()Z

    move-result v0

    return v0

    .line 1489
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPathPercent(Landroid/view/View;I)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 1234
    const/4 v0, 0x0

    return v0
.end method

.method getProgressDirection(FF)F
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 1365
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/motion/TouchResponse;->getProgressDirection(FF)F

    move-result v0

    return v0

    .line 1368
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStaggered()F
    .locals 1

    .line 1459
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_0

    .line 1460
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1900(Landroid/support/constraint/motion/MotionScene$Transition;)F

    move-result v0

    return v0

    .line 1462
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getStartId()I
    .locals 1

    .line 1374
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-nez v0, :cond_0

    .line 1375
    const/4 v0, -0x1

    return v0

    .line 1377
    :cond_0
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    return v0
.end method

.method public getTransitionById(I)Landroid/support/constraint/motion/MotionScene$Transition;
    .locals 3
    .param p1, "id"    # I

    .line 331
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 332
    .local v1, "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$300(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 333
    return-object v1

    .line 335
    .end local v1    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_0
    goto :goto_0

    .line 336
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getTransitionDirection(I)I
    .locals 3
    .param p1, "stateId"    # I

    .line 1162
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 1163
    .local v1, "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1164
    const/4 v0, 0x0

    return v0

    .line 1166
    .end local v1    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_0
    goto :goto_0

    .line 1167
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getTransitionsWithState(I)Ljava/util/List;
    .locals 4
    .param p1, "stateid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/support/constraint/motion/MotionScene$Transition;",
            ">;"
        }
    .end annotation

    .line 230
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionScene;->getRealID(I)I

    move-result p1

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/motion/MotionScene$Transition;>;"
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 233
    .local v2, "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    if-eq v3, p1, :cond_0

    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 234
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v2    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_1
    goto :goto_0

    .line 238
    :cond_2
    return-object v0
.end method

.method hasKeyFramePosition(Landroid/view/View;I)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 1178
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1179
    return v1

    .line 1181
    :cond_0
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1300(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/KeyFrames;

    .line 1182
    .local v2, "keyFrames":Landroid/support/constraint/motion/KeyFrames;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/KeyFrames;->getKeyFramesForView(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1183
    .local v3, "framePoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/motion/Key;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/motion/Key;

    .line 1184
    .local v5, "framePoint":Landroid/support/constraint/motion/Key;
    iget v6, v5, Landroid/support/constraint/motion/Key;->mFramePosition:I

    if-ne v6, p2, :cond_1

    .line 1185
    const/4 v0, 0x1

    return v0

    .line 1187
    .end local v5    # "framePoint":Landroid/support/constraint/motion/Key;
    :cond_1
    goto :goto_1

    .line 1188
    .end local v2    # "keyFrames":Landroid/support/constraint/motion/KeyFrames;
    .end local v3    # "framePoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/motion/Key;>;"
    :cond_2
    goto :goto_0

    .line 1189
    :cond_3
    return v1
.end method

.method public lookUpConstraintId(Ljava/lang/String;)I
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 1574
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public lookUpConstraintName(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .line 1583
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1584
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1585
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1587
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 1588
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1059
    return-void
.end method

.method processScrollMove(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 1346
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/motion/TouchResponse;->scrollMove(FF)V

    .line 1349
    :cond_0
    return-void
.end method

.method processScrollUp(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 1352
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/motion/TouchResponse;->scrollUp(FF)V

    .line 1355
    :cond_0
    return-void
.end method

.method processTouchEvent(Landroid/view/MotionEvent;ILandroid/support/constraint/motion/MotionLayout;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "currentState"    # I
    .param p3, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;

    .line 1255
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1256
    .local v0, "cache":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mVelocityTracker:Landroid/support/constraint/motion/MotionLayout$MotionTracker;

    if-nez v1, :cond_0

    .line 1257
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout;->obtainVelocityTracker()Landroid/support/constraint/motion/MotionLayout$MotionTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mVelocityTracker:Landroid/support/constraint/motion/MotionLayout$MotionTracker;

    .line 1259
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mVelocityTracker:Landroid/support/constraint/motion/MotionLayout$MotionTracker;

    invoke-interface {v1, p1}, Landroid/support/constraint/motion/MotionLayout$MotionTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1269
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p2, v2, :cond_9

    .line 1271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 1297
    :pswitch_1
    iget-boolean v4, p0, Landroid/support/constraint/motion/MotionScene;->mIgnoreTouch:Z

    if-eqz v4, :cond_1

    .line 1298
    goto/16 :goto_2

    .line 1300
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v6, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchY:F

    sub-float/2addr v4, v6

    .line 1301
    .local v4, "dy":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v7, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchX:F

    sub-float/2addr v6, v7

    .line 1305
    .local v6, "dx":F
    float-to-double v7, v6

    const-wide/16 v9, 0x0

    cmpl-double v11, v7, v9

    if-nez v11, :cond_2

    float-to-double v7, v4

    cmpl-double v11, v7, v9

    if-eqz v11, :cond_3

    :cond_2
    iget-object v7, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    if-nez v7, :cond_4

    .line 1306
    :cond_3
    return-void

    .line 1309
    :cond_4
    invoke-virtual {p0, p2, v6, v4, v7}, Landroid/support/constraint/motion/MotionScene;->bestTransitionFor(IFFLandroid/view/MotionEvent;)Landroid/support/constraint/motion/MotionScene$Transition;

    move-result-object v7

    .line 1314
    .local v7, "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    if-eqz v7, :cond_9

    .line 1316
    invoke-virtual {p3, v7}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 1317
    iget-object v8, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v8}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v8

    iget-object v9, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v8, v9, v0}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v8

    .line 1318
    .local v8, "region":Landroid/graphics/RectF;
    if-eqz v8, :cond_5

    iget-object v9, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 1319
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget-object v10, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    nop

    :goto_0
    iput-boolean v5, p0, Landroid/support/constraint/motion/MotionScene;->mMotionOutsideRegion:Z

    .line 1320
    iget-object v5, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v5}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v5

    iget v9, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchX:F

    iget v10, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchY:F

    invoke-virtual {v5, v9, v10}, Landroid/support/constraint/motion/TouchResponse;->setUpTouchEvent(FF)V

    goto :goto_2

    .line 1273
    .end local v4    # "dy":F
    .end local v6    # "dx":F
    .end local v7    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    .end local v8    # "region":Landroid/graphics/RectF;
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchX:F

    .line 1274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchY:F

    .line 1275
    iput-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 1276
    iput-boolean v5, p0, Landroid/support/constraint/motion/MotionScene;->mIgnoreTouch:Z

    .line 1277
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1278
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v2

    iget-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v2, v4, v0}, Landroid/support/constraint/motion/TouchResponse;->getLimitBoundsTo(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    .line 1279
    .local v2, "region":Landroid/graphics/RectF;
    if-eqz v2, :cond_6

    iget-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v6, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1280
    iput-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 1281
    iput-boolean v3, p0, Landroid/support/constraint/motion/MotionScene;->mIgnoreTouch:Z

    .line 1282
    return-void

    .line 1284
    :cond_6
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v1

    iget-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    invoke-virtual {v1, v4, v0}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 1285
    .end local v2    # "region":Landroid/graphics/RectF;
    .local v1, "region":Landroid/graphics/RectF;
    if-eqz v1, :cond_7

    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1286
    iput-boolean v3, p0, Landroid/support/constraint/motion/MotionScene;->mMotionOutsideRegion:Z

    goto :goto_1

    .line 1288
    :cond_7
    iput-boolean v5, p0, Landroid/support/constraint/motion/MotionScene;->mMotionOutsideRegion:Z

    .line 1290
    :goto_1
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchX:F

    iget v4, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchY:F

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/TouchResponse;->setDown(FF)V

    .line 1295
    .end local v1    # "region":Landroid/graphics/RectF;
    :cond_8
    return-void

    .line 1324
    :cond_9
    :goto_2
    iget-boolean v4, p0, Landroid/support/constraint/motion/MotionScene;->mIgnoreTouch:Z

    if-eqz v4, :cond_a

    .line 1325
    return-void

    .line 1327
    :cond_a
    iget-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v4, :cond_b

    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Landroid/support/constraint/motion/MotionScene;->mMotionOutsideRegion:Z

    if-nez v4, :cond_b

    .line 1328
    iget-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v4

    iget-object v5, p0, Landroid/support/constraint/motion/MotionScene;->mVelocityTracker:Landroid/support/constraint/motion/MotionLayout$MotionTracker;

    invoke-virtual {v4, p1, v5, p2, p0}, Landroid/support/constraint/motion/TouchResponse;->processTouchEvent(Landroid/view/MotionEvent;Landroid/support/constraint/motion/MotionLayout$MotionTracker;ILandroid/support/constraint/motion/MotionScene;)V

    .line 1331
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchX:F

    .line 1332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Landroid/support/constraint/motion/MotionScene;->mLastTouchY:F

    .line 1334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_c

    .line 1335
    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene;->mVelocityTracker:Landroid/support/constraint/motion/MotionLayout$MotionTracker;

    if-eqz v3, :cond_c

    .line 1336
    invoke-interface {v3}, Landroid/support/constraint/motion/MotionLayout$MotionTracker;->recycle()V

    .line 1337
    iput-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mVelocityTracker:Landroid/support/constraint/motion/MotionLayout$MotionTracker;

    .line 1338
    iget v1, p3, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq v1, v2, :cond_c

    .line 1339
    iget v1, p3, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    invoke-virtual {p0, p3, v1}, Landroid/support/constraint/motion/MotionScene;->autoTransition(Landroid/support/constraint/motion/MotionLayout;I)Z

    .line 1343
    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method readFallback(Landroid/support/constraint/motion/MotionLayout;)V
    .locals 4
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;

    .line 1501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1502
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1503
    .local v1, "key":I
    invoke-direct {p0, v1}, Landroid/support/constraint/motion/MotionScene;->hasCycleDependency(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1504
    const-string v2, "MotionScene"

    const-string v3, "Cannot be derived from yourself"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    return-void

    .line 1507
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/constraint/motion/MotionScene;->readConstraintChain(I)V

    .line 1501
    .end local v1    # "key":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1509
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1510
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintSet;

    .line 1511
    .local v1, "cs":Landroid/support/constraint/ConstraintSet;
    invoke-virtual {v1, p1}, Landroid/support/constraint/ConstraintSet;->readFallback(Landroid/support/constraint/ConstraintLayout;)V

    .line 1509
    .end local v1    # "cs":Landroid/support/constraint/ConstraintSet;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1513
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public removeTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 173
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/MotionScene;->getIndex(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    .line 174
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 175
    iget-object v1, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 177
    :cond_0
    return-void
.end method

.method public setConstraintSet(ILandroid/support/constraint/ConstraintSet;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "set"    # Landroid/support/constraint/ConstraintSet;

    .line 1108
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1109
    return-void
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .line 1441
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_0

    .line 1442
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene$Transition;->setDuration(I)V

    goto :goto_0

    .line 1444
    :cond_0
    iput p1, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultDuration:I

    .line 1446
    :goto_0
    return-void
.end method

.method public setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;

    .line 1196
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-nez v0, :cond_0

    .line 1197
    return-void

    .line 1199
    :cond_0
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$1300(Landroid/support/constraint/motion/MotionScene$Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/KeyFrames;

    .line 1203
    .local v1, "keyFrames":Landroid/support/constraint/motion/KeyFrames;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/constraint/motion/KeyFrames;->getKeyFramesForView(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1207
    .local v2, "framePoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/motion/Key;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/Key;

    .line 1211
    .local v4, "framePoint":Landroid/support/constraint/motion/Key;
    iget v5, v4, Landroid/support/constraint/motion/Key;->mFramePosition:I

    if-ne v5, p2, :cond_3

    .line 1212
    const/4 v5, 0x0

    .line 1213
    .local v5, "v":F
    if-eqz p4, :cond_1

    .line 1214
    move-object v6, p4

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1223
    :cond_1
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_2

    .line 1224
    const v5, 0x3c23d70a    # 0.01f

    .line 1226
    :cond_2
    const-string v6, "app:PerpendicularPath_percent"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1229
    .end local v4    # "framePoint":Landroid/support/constraint/motion/Key;
    .end local v5    # "v":F
    :cond_3
    goto :goto_1

    .line 1230
    .end local v1    # "keyFrames":Landroid/support/constraint/motion/KeyFrames;
    .end local v2    # "framePoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/motion/Key;>;"
    :cond_4
    goto :goto_0

    .line 1231
    :cond_5
    return-void
.end method

.method public setRtl(Z)V
    .locals 2
    .param p1, "rtl"    # Z

    .line 418
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionScene;->mRtl:Z

    .line 419
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/constraint/motion/MotionScene;->mRtl:Z

    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/TouchResponse;->setRTL(Z)V

    .line 423
    :cond_0
    return-void
.end method

.method setTransition(II)V
    .locals 7
    .param p1, "beginId"    # I
    .param p2, "endId"    # I

    .line 99
    move v0, p1

    .line 100
    .local v0, "start":I
    move v1, p2

    .line 101
    .local v1, "end":I
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v2, p1, v3, v3}, Landroid/support/constraint/StateSet;->stateGetConstraintID(III)I

    move-result v2

    .line 103
    .local v2, "tmp":I
    if-eq v2, v3, :cond_0

    .line 104
    move v0, v2

    .line 106
    :cond_0
    iget-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    invoke-virtual {v4, p2, v3, v3}, Landroid/support/constraint/StateSet;->stateGetConstraintID(III)I

    move-result v2

    .line 107
    if-eq v2, v3, :cond_1

    .line 108
    move v1, v2

    .line 116
    .end local v2    # "tmp":I
    :cond_1
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 117
    .local v4, "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v5

    if-ne v5, v1, :cond_2

    .line 118
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v5

    if-eq v5, v0, :cond_3

    .line 119
    :cond_2
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v5

    if-ne v5, p2, :cond_5

    .line 120
    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v5

    if-ne v5, p1, :cond_5

    .line 126
    :cond_3
    iput-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 127
    if-eqz v4, :cond_4

    invoke-static {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 128
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v2

    iget-boolean v3, p0, Landroid/support/constraint/motion/MotionScene;->mRtl:Z

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/TouchResponse;->setRTL(Z)V

    .line 130
    :cond_4
    return-void

    .line 132
    .end local v4    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_5
    goto :goto_0

    .line 134
    :cond_6
    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene;->mDefaultTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 135
    .local v2, "matchTransiton":Landroid/support/constraint/motion/MotionScene$Transition;
    iget-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 136
    .local v5, "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-static {v5}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v6

    if-ne v6, p2, :cond_7

    .line 137
    move-object v2, v5

    .line 140
    .end local v5    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_7
    goto :goto_1

    .line 141
    :cond_8
    new-instance v4, Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-direct {v4, p0, v2}, Landroid/support/constraint/motion/MotionScene$Transition;-><init>(Landroid/support/constraint/motion/MotionScene;Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 143
    .local v4, "t":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-static {v4, v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$102(Landroid/support/constraint/motion/MotionScene$Transition;I)I

    .line 144
    invoke-static {v4, v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$002(Landroid/support/constraint/motion/MotionScene$Transition;I)I

    .line 145
    if-eq v0, v3, :cond_9

    .line 146
    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_9
    iput-object v4, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 149
    return-void
.end method

.method public setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 213
    iput-object p1, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 214
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/constraint/motion/MotionScene;->mRtl:Z

    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/TouchResponse;->setRTL(Z)V

    .line 217
    :cond_0
    return-void
.end method

.method setupTouch()V
    .locals 1

    .line 1480
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/motion/TouchResponse;->setupTouch()V

    .line 1483
    :cond_0
    return-void
.end method

.method supportTouch()Z
    .locals 4

    .line 1241
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 1242
    .local v1, "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-static {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1243
    return v2

    .line 1245
    .end local v1    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_0
    goto :goto_0

    .line 1246
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$200(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public validateLayout(Landroid/support/constraint/motion/MotionLayout;)Z
    .locals 1
    .param p1, "layout"    # Landroid/support/constraint/motion/MotionLayout;

    .line 203
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    if-ne p1, v0, :cond_0

    iget-object v0, p1, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
