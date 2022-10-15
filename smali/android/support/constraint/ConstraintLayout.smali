.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$LayoutParams;,
        Landroid/support/constraint/ConstraintLayout$Measurer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_DRAW_CONSTRAINTS:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final MEASURE:Z = false

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-2.0.2"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field protected mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

.field private mConstraintSet:Landroid/support/constraint/ConstraintSet;

.field private mConstraintSetId:I

.field private mConstraintsChangedListener:Landroid/support/constraint/ConstraintsChangedListener;

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field protected mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field mMeasurer:Landroid/support/constraint/ConstraintLayout$Measurer;

.field private mMetrics:Landroid/support/constraint/solver/Metrics;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOnMeasureHeightMeasureSpec:I

.field private mOnMeasureWidthMeasureSpec:I

.field private mOptimizationLevel:I

.field private mTempMapIdToWidget:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 563
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 494
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 499
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 502
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 503
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 504
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 506
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 507
    const/16 v1, 0x101

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 508
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 509
    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    .line 511
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 513
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 516
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 517
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 518
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 519
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 520
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 521
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 522
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 933
    new-instance v2, Landroid/support/constraint/ConstraintLayout$Measurer;

    invoke-direct {v2, p0, p0}, Landroid/support/constraint/ConstraintLayout$Measurer;-><init>(Landroid/support/constraint/ConstraintLayout;Landroid/support/constraint/ConstraintLayout;)V

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mMeasurer:Landroid/support/constraint/ConstraintLayout$Measurer;

    .line 1545
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 1546
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 564
    invoke-direct {p0, v1, v0, v0}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    .line 565
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 568
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 494
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 499
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 502
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 503
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 504
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 506
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 507
    const/16 v1, 0x101

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 508
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 509
    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    .line 511
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 513
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 516
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 517
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 518
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 519
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 520
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 521
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 522
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 933
    new-instance v1, Landroid/support/constraint/ConstraintLayout$Measurer;

    invoke-direct {v1, p0, p0}, Landroid/support/constraint/ConstraintLayout$Measurer;-><init>(Landroid/support/constraint/ConstraintLayout;Landroid/support/constraint/ConstraintLayout;)V

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mMeasurer:Landroid/support/constraint/ConstraintLayout$Measurer;

    .line 1545
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 1546
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 569
    invoke-direct {p0, p2, v0, v0}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    .line 570
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 573
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 494
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 499
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 502
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 503
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 504
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 506
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 507
    const/16 v1, 0x101

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 508
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 509
    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    .line 511
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 513
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 516
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 517
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 518
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 519
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 520
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 521
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 522
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 933
    new-instance v1, Landroid/support/constraint/ConstraintLayout$Measurer;

    invoke-direct {v1, p0, p0}, Landroid/support/constraint/ConstraintLayout$Measurer;-><init>(Landroid/support/constraint/ConstraintLayout;Landroid/support/constraint/ConstraintLayout;)V

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mMeasurer:Landroid/support/constraint/ConstraintLayout$Measurer;

    .line 1545
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 1546
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 574
    invoke-direct {p0, p2, p3, v0}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    .line 575
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 579
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 494
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 499
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 502
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 503
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 504
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 506
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 507
    const/16 v1, 0x101

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 508
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 509
    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    .line 511
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 513
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 516
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 517
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 518
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 519
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 520
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 521
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 522
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 933
    new-instance v1, Landroid/support/constraint/ConstraintLayout$Measurer;

    invoke-direct {v1, p0, p0}, Landroid/support/constraint/ConstraintLayout$Measurer;-><init>(Landroid/support/constraint/ConstraintLayout;Landroid/support/constraint/ConstraintLayout;)V

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mMeasurer:Landroid/support/constraint/ConstraintLayout$Measurer;

    .line 1545
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 1546
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 580
    invoke-direct {p0, p2, p3, p4}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    .line 581
    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/ConstraintLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/constraint/ConstraintLayout;

    .line 482
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    return v0
.end method

.method static synthetic access$100(Landroid/support/constraint/ConstraintLayout;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/constraint/ConstraintLayout;

    .line 482
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getPaddingWidth()I
    .locals 5

    .line 1714
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1715
    .local v0, "widthPadding":I
    const/4 v2, 0x0

    .line 1717
    .local v2, "rtlPadding":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 1718
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingStart()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingEnd()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v2, v3, v1

    .line 1720
    :cond_0
    if-lez v2, :cond_1

    .line 1721
    move v0, v2

    .line 1723
    :cond_1
    return v0
.end method

.method private final getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 2
    .param p1, "id"    # I

    .line 1507
    if-nez p1, :cond_0

    .line 1508
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v0

    .line 1510
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1511
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 1512
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1513
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 1514
    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 1517
    :cond_1
    if-ne v0, p0, :cond_2

    .line 1518
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v1

    .line 1520
    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_0
    return-object v1
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 936
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    .line 937
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mMeasurer:Landroid/support/constraint/ConstraintLayout$Measurer;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMeasurer(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 938
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 939
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 940
    if-eqz p1, :cond_8

    .line 941
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 942
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 943
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 944
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 945
    .local v4, "attr":I
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v4, v5, :cond_0

    .line 946
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    goto :goto_3

    .line 947
    :cond_0
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v4, v5, :cond_1

    .line 948
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    goto :goto_3

    .line 949
    :cond_1
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v4, v5, :cond_2

    .line 950
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    goto :goto_3

    .line 951
    :cond_2
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v4, v5, :cond_3

    .line 952
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    goto :goto_3

    .line 953
    :cond_3
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v4, v5, :cond_4

    .line 954
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_3

    .line 955
    :cond_4
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layoutDescription:I

    const/4 v6, 0x0

    if-ne v4, v5, :cond_5

    .line 956
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 957
    .local v5, "id":I
    if-eqz v5, :cond_6

    .line 959
    :try_start_0
    invoke-virtual {p0, v5}, Landroid/support/constraint/ConstraintLayout;->parseLayoutDescription(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    goto :goto_2

    .line 960
    :catch_0
    move-exception v6

    .line 961
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    goto :goto_2

    .line 964
    .end local v5    # "id":I
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v4, v5, :cond_6

    .line 965
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 967
    .restart local v5    # "id":I
    :try_start_1
    new-instance v6, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v6}, Landroid/support/constraint/ConstraintSet;-><init>()V

    iput-object v6, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 968
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 971
    goto :goto_1

    .line 969
    :catch_1
    move-exception v6

    .line 970
    .restart local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 972
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_1
    iput v5, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    goto :goto_3

    .line 964
    .end local v5    # "id":I
    :cond_6
    :goto_2
    nop

    .line 943
    .end local v4    # "attr":I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 975
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 977
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "N":I
    :cond_8
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 978
    return-void
.end method

.method private markHierarchyDirty()V
    .locals 1

    .line 3237
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 3239
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 3240
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 3241
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 3242
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 3243
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 3244
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 3245
    return-void
.end method

.method private setChildrenConstraints()V
    .locals 13

    .line 1167
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v6

    .line 1169
    .local v6, "isInEditMode":Z
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v7

    .line 1172
    .local v7, "count":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_1

    .line 1173
    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1174
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 1175
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v2, :cond_0

    .line 1176
    goto :goto_1

    .line 1178
    :cond_0
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    .line 1172
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1181
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz v6, :cond_3

    .line 1185
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v7, :cond_3

    .line 1186
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1188
    .local v3, "view":Landroid/view/View;
    :try_start_0
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    .line 1189
    .local v4, "IdAsString":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1190
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1191
    .local v5, "slashIndex":I
    if-eq v5, v1, :cond_2

    .line 1192
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 1194
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v8

    invoke-direct {p0, v8}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    .end local v4    # "IdAsString":Ljava/lang/String;
    .end local v5    # "slashIndex":I
    goto :goto_3

    .line 1195
    :catch_0
    move-exception v4

    .line 1185
    .end local v3    # "view":Landroid/view/View;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1217
    .end local v2    # "i":I
    :cond_3
    iget v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    if-eq v2, v1, :cond_5

    .line 1218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v7, :cond_5

    .line 1219
    invoke-virtual {p0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1220
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    iget v4, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    if-ne v3, v4, :cond_4

    instance-of v3, v2, Landroid/support/constraint/Constraints;

    if-eqz v3, :cond_4

    .line 1221
    move-object v3, v2

    check-cast v3, Landroid/support/constraint/Constraints;

    invoke-virtual {v3}, Landroid/support/constraint/Constraints;->getConstraintSet()Landroid/support/constraint/ConstraintSet;

    move-result-object v3

    iput-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 1218
    .end local v2    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1226
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    if-eqz v1, :cond_6

    .line 1227
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/support/constraint/ConstraintSet;->applyToInternal(Landroid/support/constraint/ConstraintLayout;Z)V

    .line 1230
    :cond_6
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 1232
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1233
    .local v8, "helperCount":I
    if-lez v8, :cond_7

    .line 1234
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v8, :cond_7

    .line 1235
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintHelper;

    .line 1236
    .local v2, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v2, p0}, Landroid/support/constraint/ConstraintHelper;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 1234
    .end local v2    # "helper":Landroid/support/constraint/ConstraintHelper;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1241
    .end local v1    # "i":I
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v7, :cond_9

    .line 1242
    invoke-virtual {p0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1243
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/support/constraint/Placeholder;

    if-eqz v3, :cond_8

    .line 1244
    move-object v3, v2

    check-cast v3, Landroid/support/constraint/Placeholder;

    invoke-virtual {v3, p0}, Landroid/support/constraint/Placeholder;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 1241
    .end local v2    # "child":Landroid/view/View;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1248
    .end local v1    # "i":I
    :cond_9
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1249
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1250
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1251
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    if-ge v0, v7, :cond_a

    .line 1252
    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1253
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 1254
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1251
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1257
    .end local v0    # "i":I
    :cond_a
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_8
    if-ge v9, v7, :cond_c

    .line 1258
    invoke-virtual {p0, v9}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1259
    .local v10, "child":Landroid/view/View;
    invoke-virtual {p0, v10}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v11

    .line 1260
    .local v11, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v11, :cond_b

    .line 1261
    goto :goto_9

    .line 1263
    :cond_b
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1264
    .local v12, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 1265
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    move-object v0, p0

    move v1, v6

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 1257
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v12    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 1267
    .end local v9    # "i":I
    :cond_c
    return-void
.end method

.method private updateHierarchy()Z
    .locals 5

    .line 1150
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1152
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1153
    .local v1, "recompute":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1154
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1155
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1156
    const/4 v1, 0x1

    .line 1157
    goto :goto_1

    .line 1153
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1160
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 1161
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->setChildrenConstraints()V

    .line 1163
    :cond_2
    return v1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 994
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 995
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 996
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 998
    :cond_0
    return-void
.end method

.method protected applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 21
    .param p1, "isInEditMode"    # Z
    .param p2, "child"    # Landroid/view/View;
    .param p3, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p4, "layoutParams"    # Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Landroid/support/constraint/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 1275
    .local p5, "idToWidget":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    .line 1276
    const/4 v11, 0x0

    iput-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    .line 1278
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1279
    iget-boolean v2, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    const/4 v12, 0x1

    if-eqz v2, :cond_0

    .line 1280
    invoke-virtual {v8, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setInPlaceholder(Z)V

    .line 1281
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1283
    :cond_0
    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 1285
    instance-of v2, v1, Landroid/support/constraint/ConstraintHelper;

    if-eqz v2, :cond_1

    .line 1286
    move-object v2, v1

    check-cast v2, Landroid/support/constraint/ConstraintHelper;

    .line 1287
    .local v2, "helper":Landroid/support/constraint/ConstraintHelper;
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v3

    invoke-virtual {v2, v8, v3}, Landroid/support/constraint/ConstraintHelper;->resolveRtl(Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)V

    .line 1289
    .end local v2    # "helper":Landroid/support/constraint/ConstraintHelper;
    :cond_1
    iget-boolean v2, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    const/16 v3, 0x11

    const/4 v13, -0x1

    if-eqz v2, :cond_6

    .line 1290
    move-object v2, v8

    check-cast v2, Landroid/support/constraint/solver/widgets/Guideline;

    .line 1291
    .local v2, "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    iget v4, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 1292
    .local v4, "resolvedGuideBegin":I
    iget v5, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 1293
    .local v5, "resolvedGuideEnd":I
    iget v6, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 1294
    .local v6, "resolvedGuidePercent":F
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v3, :cond_2

    .line 1295
    iget v4, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1296
    iget v5, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1297
    iget v6, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1299
    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v6, v3

    if-eqz v3, :cond_3

    .line 1300
    invoke-virtual {v2, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_0

    .line 1301
    :cond_3
    if-eq v4, v13, :cond_4

    .line 1302
    invoke-virtual {v2, v4}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_0

    .line 1303
    :cond_4
    if-eq v5, v13, :cond_5

    .line 1304
    invoke-virtual {v2, v5}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 1306
    .end local v2    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    .end local v4    # "resolvedGuideBegin":I
    .end local v5    # "resolvedGuideEnd":I
    .end local v6    # "resolvedGuidePercent":F
    :cond_5
    :goto_0
    goto/16 :goto_10

    .line 1308
    :cond_6
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1309
    .local v2, "resolvedLeftToLeft":I
    iget v4, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1310
    .local v4, "resolvedLeftToRight":I
    iget v5, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1311
    .local v5, "resolvedRightToLeft":I
    iget v6, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1312
    .local v6, "resolvedRightToRight":I
    iget v7, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1313
    .local v7, "resolveGoneLeftMargin":I
    iget v14, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1314
    .local v14, "resolveGoneRightMargin":I
    iget v15, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1316
    .local v15, "resolvedHorizontalBias":F
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v11, v3, :cond_b

    .line 1319
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1320
    iget v3, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1321
    .end local v4    # "resolvedLeftToRight":I
    .local v3, "resolvedLeftToRight":I
    iget v5, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1322
    iget v6, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1323
    iget v7, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1324
    iget v14, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1325
    iget v15, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1327
    if-ne v2, v13, :cond_8

    if-ne v3, v13, :cond_8

    .line 1328
    iget v4, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v4, v13, :cond_7

    .line 1329
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    move v4, v3

    goto :goto_1

    .line 1330
    :cond_7
    iget v4, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v4, v13, :cond_8

    .line 1331
    iget v3, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    move v4, v3

    goto :goto_1

    .line 1334
    :cond_8
    move v4, v3

    .end local v3    # "resolvedLeftToRight":I
    .restart local v4    # "resolvedLeftToRight":I
    :goto_1
    if-ne v5, v13, :cond_a

    if-ne v6, v13, :cond_a

    .line 1335
    iget v3, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v3, v13, :cond_9

    .line 1336
    iget v5, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    move v11, v2

    move/from16 v16, v7

    move/from16 v17, v14

    move v14, v4

    move v7, v6

    move v6, v15

    move v15, v5

    goto :goto_2

    .line 1337
    :cond_9
    iget v3, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v3, v13, :cond_a

    .line 1338
    iget v6, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    move v11, v2

    move/from16 v16, v7

    move/from16 v17, v14

    move v14, v4

    move v7, v6

    move v6, v15

    move v15, v5

    goto :goto_2

    .line 1344
    :cond_a
    move v11, v2

    move/from16 v16, v7

    move/from16 v17, v14

    move v14, v4

    move v7, v6

    move v6, v15

    move v15, v5

    goto :goto_2

    .line 1316
    :cond_b
    move v11, v2

    move/from16 v16, v7

    move/from16 v17, v14

    move v14, v4

    move v7, v6

    move v6, v15

    move v15, v5

    .line 1344
    .end local v2    # "resolvedLeftToLeft":I
    .end local v4    # "resolvedLeftToRight":I
    .end local v5    # "resolvedRightToLeft":I
    .local v6, "resolvedHorizontalBias":F
    .local v7, "resolvedRightToRight":I
    .local v11, "resolvedLeftToLeft":I
    .local v14, "resolvedLeftToRight":I
    .local v15, "resolvedRightToLeft":I
    .local v16, "resolveGoneLeftMargin":I
    .local v17, "resolveGoneRightMargin":I
    :goto_2
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-eq v2, v13, :cond_d

    .line 1345
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1346
    .local v2, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v2, :cond_c

    .line 1347
    iget v3, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    iget v4, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {v8, v2, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connectCircularConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V

    .line 1349
    .end local v2    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_c
    move v2, v6

    move v12, v7

    goto/16 :goto_b

    .line 1351
    :cond_d
    if-eq v11, v13, :cond_f

    .line 1352
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1353
    .local v18, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_e

    .line 1354
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v4, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object/from16 v2, p3

    move/from16 v19, v4

    move-object/from16 v4, v18

    move/from16 v20, v6

    .end local v6    # "resolvedHorizontalBias":F
    .local v20, "resolvedHorizontalBias":F
    move/from16 v6, v19

    move v12, v7

    .end local v7    # "resolvedRightToRight":I
    .local v12, "resolvedRightToRight":I
    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_3

    .line 1353
    .end local v12    # "resolvedRightToRight":I
    .end local v20    # "resolvedHorizontalBias":F
    .restart local v6    # "resolvedHorizontalBias":F
    .restart local v7    # "resolvedRightToRight":I
    :cond_e
    move/from16 v20, v6

    move v12, v7

    .end local v6    # "resolvedHorizontalBias":F
    .end local v7    # "resolvedRightToRight":I
    .restart local v12    # "resolvedRightToRight":I
    .restart local v20    # "resolvedHorizontalBias":F
    goto :goto_3

    .line 1358
    .end local v12    # "resolvedRightToRight":I
    .end local v18    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v20    # "resolvedHorizontalBias":F
    .restart local v6    # "resolvedHorizontalBias":F
    .restart local v7    # "resolvedRightToRight":I
    :cond_f
    move/from16 v20, v6

    move v12, v7

    .end local v6    # "resolvedHorizontalBias":F
    .end local v7    # "resolvedRightToRight":I
    .restart local v12    # "resolvedRightToRight":I
    .restart local v20    # "resolvedHorizontalBias":F
    if-eq v14, v13, :cond_10

    .line 1359
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1360
    .restart local v18    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_11

    .line 1361
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_4

    .line 1358
    .end local v18    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_10
    :goto_3
    nop

    .line 1368
    :cond_11
    :goto_4
    if-eq v15, v13, :cond_12

    .line 1369
    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1370
    .restart local v18    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_13

    .line 1371
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    move/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_5

    .line 1375
    .end local v18    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_12
    if-eq v12, v13, :cond_13

    .line 1376
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1377
    .restart local v18    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_14

    .line 1378
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    move/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_6

    .line 1375
    .end local v18    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_13
    :goto_5
    nop

    .line 1385
    :cond_14
    :goto_6
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-eq v2, v13, :cond_15

    .line 1386
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1387
    .restart local v18    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_16

    .line 1388
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v7, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_7

    .line 1392
    .end local v18    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_15
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-eq v2, v13, :cond_16

    .line 1393
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1394
    .restart local v18    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_17

    .line 1395
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v7, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_8

    .line 1392
    .end local v18    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_16
    :goto_7
    nop

    .line 1402
    :cond_17
    :goto_8
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-eq v2, v13, :cond_18

    .line 1403
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1404
    .restart local v18    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_19

    .line 1405
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v7, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_9

    .line 1409
    .end local v18    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_18
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-eq v2, v13, :cond_19

    .line 1410
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1411
    .restart local v18    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_1a

    .line 1412
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v7, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_a

    .line 1409
    .end local v18    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_19
    :goto_9
    nop

    .line 1419
    :cond_1a
    :goto_a
    iget v2, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-eq v2, v13, :cond_1b

    .line 1420
    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1421
    .local v2, "view":Landroid/view/View;
    iget v3, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1422
    .local v3, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_1b

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v4, :cond_1b

    .line 1423
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1424
    .local v4, "targetParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    const/4 v5, 0x1

    iput-boolean v5, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1425
    iput-boolean v5, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1426
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    .line 1427
    .local v6, "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1428
    invoke-virtual {v3, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    .line 1429
    .local v7, "targetBaseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v0, 0x0

    invoke-virtual {v6, v7, v0, v13, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 1430
    invoke-virtual {v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 1431
    iget-object v0, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 1432
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1433
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1437
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v4    # "targetParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v6    # "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v7    # "targetBaseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_1b
    const/4 v0, 0x0

    move/from16 v2, v20

    .end local v20    # "resolvedHorizontalBias":F
    .local v2, "resolvedHorizontalBias":F
    cmpl-float v3, v2, v0

    if-ltz v3, :cond_1c

    .line 1438
    invoke-virtual {v8, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1440
    :cond_1c
    iget v3, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_1d

    .line 1441
    iget v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1445
    :cond_1d
    :goto_b
    if-eqz p1, :cond_1f

    iget v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    if-ne v0, v13, :cond_1e

    iget v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-eq v0, v13, :cond_1f

    .line 1447
    :cond_1e
    iget v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v8, v0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOrigin(II)V

    .line 1451
    :cond_1f
    iget-boolean v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    const/4 v3, -0x2

    if-nez v0, :cond_22

    .line 1452
    iget v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-ne v0, v13, :cond_21

    .line 1453
    iget-boolean v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    if-eqz v0, :cond_20

    .line 1454
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_c

    .line 1456
    :cond_20
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1458
    :goto_c
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iget v4, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1459
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iget v4, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_d

    .line 1461
    :cond_21
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1462
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_d

    .line 1465
    :cond_22
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1466
    iget v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1467
    iget v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-ne v0, v3, :cond_23

    .line 1468
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1471
    :cond_23
    :goto_d
    iget-boolean v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v0, :cond_26

    .line 1472
    iget v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v0, v13, :cond_25

    .line 1473
    iget-boolean v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    if-eqz v0, :cond_24

    .line 1474
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_e

    .line 1476
    :cond_24
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1478
    :goto_e
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1479
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v3, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_f

    .line 1481
    :cond_25
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1482
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_f

    .line 1485
    :cond_26
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1486
    iget v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1487
    iget v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v0, v3, :cond_27

    .line 1488
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1492
    :cond_27
    :goto_f
    iget-object v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    .line 1493
    iget v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    .line 1494
    iget v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalWeight(F)V

    .line 1495
    iget v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1496
    iget v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1497
    iget v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v4, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v5, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {v8, v0, v3, v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 1500
    iget v0, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v3, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v4, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v5, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {v8, v0, v3, v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    .line 1504
    .end local v2    # "resolvedHorizontalBias":F
    .end local v11    # "resolvedLeftToLeft":I
    .end local v12    # "resolvedRightToRight":I
    .end local v14    # "resolvedLeftToRight":I
    .end local v15    # "resolvedRightToLeft":I
    .end local v16    # "resolveGoneLeftMargin":I
    .end local v17    # "resolveGoneRightMargin":I
    :goto_10
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1928
    instance-of v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1954
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1955
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1956
    .local v1, "helperCount":I
    if-lez v1, :cond_0

    .line 1957
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1958
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintHelper;

    .line 1959
    .local v3, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v3, v0}, Landroid/support/constraint/ConstraintHelper;->updatePreDraw(Landroid/support/constraint/ConstraintLayout;)V

    .line 1957
    .end local v3    # "helper":Landroid/support/constraint/ConstraintHelper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1963
    .end local v1    # "helperCount":I
    .end local v2    # "i":I
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1964
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1965
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 1966
    .local v1, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 1967
    .local v2, "cw":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 1968
    .local v3, "ch":F
    const/high16 v4, 0x44870000    # 1080.0f

    .line 1969
    .local v4, "ow":F
    const/high16 v5, 0x44f00000    # 1920.0f

    .line 1970
    .local v5, "oh":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_4

    .line 1971
    invoke-virtual {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1972
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 1973
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    goto/16 :goto_2

    .line 1975
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 1976
    .local v8, "tag":Ljava/lang/Object;
    if-eqz v8, :cond_3

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 1977
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .line 1978
    .local v9, "coordinates":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1979
    .local v10, "split":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x4

    if-ne v11, v12, :cond_2

    .line 1980
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1981
    .local v11, "x":I
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1982
    .local v12, "y":I
    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1983
    .local v13, "w":I
    const/4 v14, 0x3

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1984
    .local v14, "h":I
    int-to-float v15, v11

    div-float/2addr v15, v4

    mul-float v15, v15, v2

    float-to-int v11, v15

    .line 1985
    int-to-float v15, v12

    div-float/2addr v15, v5

    mul-float v15, v15, v3

    float-to-int v12, v15

    .line 1986
    int-to-float v15, v13

    div-float/2addr v15, v4

    mul-float v15, v15, v2

    float-to-int v13, v15

    .line 1987
    int-to-float v15, v14

    div-float/2addr v15, v5

    mul-float v15, v15, v3

    float-to-int v14, v15

    .line 1988
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 1989
    .local v15, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1990
    int-to-float v0, v11

    move/from16 v22, v1

    .end local v1    # "count":I
    .local v22, "count":I
    int-to-float v1, v12

    move/from16 v23, v2

    .end local v2    # "cw":F
    .local v23, "cw":F
    add-int v2, v11, v13

    int-to-float v2, v2

    move/from16 v24, v3

    .end local v3    # "ch":F
    .local v24, "ch":F
    int-to-float v3, v12

    move-object/from16 v16, p1

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v15

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1991
    add-int v0, v11, v13

    int-to-float v0, v0

    int-to-float v1, v12

    add-int v2, v11, v13

    int-to-float v2, v2

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1992
    add-int v0, v11, v13

    int-to-float v0, v0

    add-int v1, v12, v14

    int-to-float v1, v1

    int-to-float v2, v11

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1993
    int-to-float v0, v11

    add-int v1, v12, v14

    int-to-float v1, v1

    int-to-float v2, v11

    int-to-float v3, v12

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1994
    const v0, -0xff0100

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1995
    int-to-float v0, v11

    int-to-float v1, v12

    add-int v2, v11, v13

    int-to-float v2, v2

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1996
    int-to-float v0, v11

    add-int v1, v12, v14

    int-to-float v1, v1

    add-int v2, v11, v13

    int-to-float v2, v2

    int-to-float v3, v12

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 1979
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v13    # "w":I
    .end local v14    # "h":I
    .end local v15    # "paint":Landroid/graphics/Paint;
    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .restart local v1    # "count":I
    .restart local v2    # "cw":F
    .restart local v3    # "ch":F
    :cond_2
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "count":I
    .end local v2    # "cw":F
    .end local v3    # "ch":F
    .restart local v22    # "count":I
    .restart local v23    # "cw":F
    .restart local v24    # "ch":F
    goto :goto_2

    .line 1976
    .end local v9    # "coordinates":Ljava/lang/String;
    .end local v10    # "split":[Ljava/lang/String;
    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .restart local v1    # "count":I
    .restart local v2    # "cw":F
    .restart local v3    # "ch":F
    :cond_3
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .line 1970
    .end local v1    # "count":I
    .end local v2    # "cw":F
    .end local v3    # "ch":F
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "tag":Ljava/lang/Object;
    .restart local v22    # "count":I
    .restart local v23    # "cw":F
    .restart local v24    # "ch":F
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    goto/16 :goto_1

    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .restart local v1    # "count":I
    .restart local v2    # "cw":F
    .restart local v3    # "ch":F
    :cond_4
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .line 2043
    .end local v1    # "count":I
    .end local v2    # "cw":F
    .end local v3    # "ch":F
    .end local v4    # "ow":F
    .end local v5    # "oh":F
    .end local v6    # "i":I
    :cond_5
    return-void
.end method

.method public fillMetrics(Landroid/support/constraint/solver/Metrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/support/constraint/solver/Metrics;

    .line 1541
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    .line 1542
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->fillMetrics(Landroid/support/constraint/solver/Metrics;)V

    .line 1543
    return-void
.end method

.method public forceLayout()V
    .locals 0

    .line 3232
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->markHierarchyDirty()V

    .line 3233
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 3234
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2

    .line 1912
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 482
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1904
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 482
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1920
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 553
    if-nez p1, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 554
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 555
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 559
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1146
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1136
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1099
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1089
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1896
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v0

    return v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .line 1946
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1530
    if-ne p1, p0, :cond_0

    .line 1531
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v0

    .line 1533
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_0
    return-object v0
.end method

.method protected isRtl()Z
    .locals 4

    .line 1702
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_2

    .line 1703
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1704
    .local v0, "isRtlSupported":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutDirection()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1706
    .end local v0    # "isRtlSupported":Z
    :cond_2
    return v1
.end method

.method public loadLayoutDescription(I)V
    .locals 3
    .param p1, "layoutDescription"    # I

    .line 2058
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2060
    :try_start_0
    new-instance v1, Landroid/support/constraint/ConstraintLayoutStates;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, p1}, Landroid/support/constraint/ConstraintLayoutStates;-><init>(Landroid/content/Context;Landroid/support/constraint/ConstraintLayout;I)V

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2061
    :catch_0
    move-exception v1

    .line 2062
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    .line 2063
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    goto :goto_1

    .line 2065
    :cond_0
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    .line 2067
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1819
    move-object v0, p0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 1820
    .local v1, "widgetsCount":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v2

    .line 1821
    .local v2, "isInEditMode":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1822
    invoke-virtual {p0, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1823
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1824
    .local v5, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v6, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1826
    .local v6, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v7, :cond_0

    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v7, :cond_0

    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isVirtualGroup:Z

    if-nez v7, :cond_0

    if-nez v2, :cond_0

    .line 1829
    goto :goto_1

    .line 1831
    :cond_0
    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v7, :cond_1

    .line 1832
    goto :goto_1

    .line 1834
    :cond_1
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v7

    .line 1835
    .local v7, "l":I
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v8

    .line 1836
    .local v8, "t":I
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    add-int/2addr v9, v7

    .line 1837
    .local v9, "r":I
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    add-int/2addr v10, v8

    .line 1843
    .local v10, "b":I
    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1844
    instance-of v11, v4, Landroid/support/constraint/Placeholder;

    if-eqz v11, :cond_2

    .line 1845
    move-object v11, v4

    check-cast v11, Landroid/support/constraint/Placeholder;

    .line 1846
    .local v11, "holder":Landroid/support/constraint/Placeholder;
    invoke-virtual {v11}, Landroid/support/constraint/Placeholder;->getContent()Landroid/view/View;

    move-result-object v12

    .line 1847
    .local v12, "content":Landroid/view/View;
    if-eqz v12, :cond_2

    .line 1848
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1849
    invoke-virtual {v12, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1821
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "l":I
    .end local v8    # "t":I
    .end local v9    # "r":I
    .end local v10    # "b":I
    .end local v11    # "holder":Landroid/support/constraint/Placeholder;
    .end local v12    # "content":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1853
    .end local v3    # "i":I
    :cond_3
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1854
    .local v3, "helperCount":I
    if-lez v3, :cond_4

    .line 1855
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_4

    .line 1856
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintHelper;

    .line 1857
    .local v5, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v5, p0}, Landroid/support/constraint/ConstraintHelper;->updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 1855
    .end local v5    # "helper":Landroid/support/constraint/ConstraintHelper;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1860
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1643
    const-wide/16 v0, 0x0

    .line 1648
    .local v0, "time":J
    iget-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    if-nez v2, :cond_1

    .line 1649
    iget v2, p0, Landroid/support/constraint/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    if-ne v2, p1, :cond_0

    iget v3, p0, Landroid/support/constraint/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    if-ne v3, p2, :cond_0

    .line 1650
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v6

    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v7

    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1651
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v8

    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v9

    .line 1650
    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v9}, Landroid/support/constraint/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    .line 1652
    return-void

    .line 1654
    :cond_0
    if-ne v2, p1, :cond_1

    .line 1655
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_1

    .line 1656
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/support/constraint/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 1657
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1658
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1662
    .local v2, "newSize":I
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 1663
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 1664
    iput p2, p0, Landroid/support/constraint/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 1665
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v7

    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1666
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v9

    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v10

    .line 1665
    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v10}, Landroid/support/constraint/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    .line 1667
    return-void

    .line 1671
    .end local v2    # "newSize":I
    :cond_1
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 1672
    iput p2, p0, Landroid/support/constraint/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 1679
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->isRtl()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 1681
    iget-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    if-eqz v2, :cond_2

    .line 1682
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1683
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->updateHierarchy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1684
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 1688
    :cond_2
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v3, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p0, v2, v3, p1, p2}, Landroid/support/constraint/ConstraintLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    .line 1689
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v6

    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v7

    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1690
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v8

    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v9

    .line 1689
    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v9}, Landroid/support/constraint/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    .line 1699
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 1016
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1017
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 1019
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 1020
    .local v0, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v1, p1, Landroid/support/constraint/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1021
    instance-of v1, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v1, :cond_1

    .line 1022
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1023
    .local v1, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    new-instance v3, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1024
    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1025
    iget-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 1028
    .end local v1    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_1
    instance-of v1, p1, Landroid/support/constraint/ConstraintHelper;

    if-eqz v1, :cond_2

    .line 1029
    move-object v1, p1

    check-cast v1, Landroid/support/constraint/ConstraintHelper;

    .line 1030
    .local v1, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v1}, Landroid/support/constraint/ConstraintHelper;->validateParams()V

    .line 1031
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1032
    .local v3, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iput-boolean v2, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 1033
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1034
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    .end local v1    # "helper":Landroid/support/constraint/ConstraintHelper;
    .end local v3    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1038
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1039
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1046
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1047
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 1049
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1050
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 1051
    .local v0, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 1052
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1053
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1054
    return-void
.end method

.method protected parseLayoutDescription(I)V
    .locals 2
    .param p1, "id"    # I

    .line 986
    new-instance v0, Landroid/support/constraint/ConstraintLayoutStates;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroid/support/constraint/ConstraintLayoutStates;-><init>(Landroid/content/Context;Landroid/support/constraint/ConstraintLayout;I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    .line 987
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1005
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1006
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1007
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 1009
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 3226
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->markHierarchyDirty()V

    .line 3227
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3228
    return-void
.end method

.method protected resolveMeasuredDimension(IIIIZZ)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "measuredWidth"    # I
    .param p4, "measuredHeight"    # I
    .param p5, "isWidthMeasuredTooSmall"    # Z
    .param p6, "isHeightMeasuredTooSmall"    # Z

    .line 1607
    const/4 v0, 0x0

    .line 1608
    .local v0, "childState":I
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mMeasurer:Landroid/support/constraint/ConstraintLayout$Measurer;

    iget v1, v1, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingHeight:I

    .line 1609
    .local v1, "heightPadding":I
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mMeasurer:Landroid/support/constraint/ConstraintLayout$Measurer;

    iget v2, v2, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingWidth:I

    .line 1611
    .local v2, "widthPadding":I
    add-int v3, p3, v2

    .line 1612
    .local v3, "androidLayoutWidth":I
    add-int v4, p4, v1

    .line 1614
    .local v4, "androidLayoutHeight":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_2

    .line 1615
    invoke-static {v3, p1, v0}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v5

    .line 1616
    .local v5, "resolvedWidthSize":I
    shl-int/lit8 v6, v0, 0x10

    invoke-static {v4, p2, v6}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v6

    .line 1618
    .local v6, "resolvedHeightSize":I
    const v7, 0xffffff

    and-int/2addr v5, v7

    .line 1619
    and-int/2addr v6, v7

    .line 1620
    iget v7, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1621
    iget v7, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1622
    const/high16 v7, 0x1000000

    if-eqz p5, :cond_0

    .line 1623
    or-int/2addr v5, v7

    .line 1625
    :cond_0
    if-eqz p6, :cond_1

    .line 1626
    or-int/2addr v6, v7

    .line 1628
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1629
    iput v5, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 1630
    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 1631
    .end local v5    # "resolvedWidthSize":I
    .end local v6    # "resolvedHeightSize":I
    goto :goto_0

    .line 1632
    :cond_2
    invoke-virtual {p0, v3, v4}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1633
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 1634
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 1636
    :goto_0
    return-void
.end method

.method protected resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 26
    .param p1, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "optimizationLevel"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightMeasureSpec"    # I

    .line 1558
    move-object/from16 v6, p0

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 1559
    .local v17, "widthMode":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1560
    .local v0, "widthSize":I
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1561
    .local v18, "heightMode":I
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1563
    .local v1, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1564
    .local v19, "paddingY":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 1565
    .local v20, "paddingBottom":I
    add-int v21, v19, v20

    .line 1566
    .local v21, "paddingHeight":I
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingWidth()I

    move-result v22

    .line 1568
    .local v22, "paddingWidth":I
    iget-object v7, v6, Landroid/support/constraint/ConstraintLayout;->mMeasurer:Landroid/support/constraint/ConstraintLayout$Measurer;

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v12, v22

    move/from16 v13, v21

    invoke-virtual/range {v7 .. v13}, Landroid/support/constraint/ConstraintLayout$Measurer;->captureLayoutInfos(IIIIII)V

    .line 1570
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v2, v4, :cond_3

    .line 1571
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingStart()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1572
    .local v2, "paddingStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingEnd()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1573
    .local v4, "paddingEnd":I
    if-gtz v2, :cond_1

    if-lez v4, :cond_0

    goto :goto_0

    .line 1580
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .local v3, "paddingX":I
    goto :goto_1

    .line 1574
    .end local v3    # "paddingX":I
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1575
    move v3, v4

    .restart local v3    # "paddingX":I
    goto :goto_1

    .line 1577
    .end local v3    # "paddingX":I
    :cond_2
    move v3, v2

    .line 1582
    .end local v2    # "paddingStart":I
    .end local v4    # "paddingEnd":I
    .restart local v3    # "paddingX":I
    :goto_1
    move/from16 v23, v3

    goto :goto_2

    .line 1583
    .end local v3    # "paddingX":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v23, v3

    .line 1586
    .local v23, "paddingX":I
    :goto_2
    sub-int v24, v0, v22

    .line 1587
    .end local v0    # "widthSize":I
    .local v24, "widthSize":I
    sub-int v25, v1, v21

    .line 1589
    .end local v1    # "heightSize":I
    .local v25, "heightSize":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v24

    move/from16 v4, v18

    move/from16 v5, v25

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintLayout;->setSelfDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;IIII)V

    .line 1590
    iget v13, v6, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    iget v14, v6, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, v17

    move/from16 v10, v24

    move/from16 v11, v18

    move/from16 v12, v25

    move/from16 v15, v23

    move/from16 v16, v19

    invoke-virtual/range {v7 .. v16}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measure(IIIIIIIII)J

    .line 1592
    return-void
.end method

.method public setConstraintSet(Landroid/support/constraint/ConstraintSet;)V
    .locals 0
    .param p1, "set"    # Landroid/support/constraint/ConstraintSet;

    .line 1937
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 1938
    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "value2"    # Ljava/lang/Object;

    .line 535
    if-nez p1, :cond_2

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 539
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 540
    .local v0, "name":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 541
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 542
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 544
    :cond_1
    move-object v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 545
    .local v2, "id":I
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "id":I
    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2
    .param p1, "id"    # I

    .line 588
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 589
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 590
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 591
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1121
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_0

    .line 1122
    return-void

    .line 1124
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 1125
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 1126
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1108
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    .line 1109
    return-void

    .line 1111
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 1112
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 1113
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1075
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_0

    .line 1076
    return-void

    .line 1078
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 1079
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 1080
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1062
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_0

    .line 1063
    return-void

    .line 1065
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 1066
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 1067
    return-void
.end method

.method public setOnConstraintsChanged(Landroid/support/constraint/ConstraintsChangedListener;)V
    .locals 1
    .param p1, "constraintsChangedListener"    # Landroid/support/constraint/ConstraintsChangedListener;

    .line 2046
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintsChangedListener:Landroid/support/constraint/ConstraintsChangedListener;

    .line 2047
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    if-eqz v0, :cond_0

    .line 2048
    invoke-virtual {v0, p1}, Landroid/support/constraint/ConstraintLayoutStates;->setOnConstraintsChanged(Landroid/support/constraint/ConstraintsChangedListener;)V

    .line 2050
    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .line 1885
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 1886
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 1887
    return-void
.end method

.method protected setSelfDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;IIII)V
    .locals 9
    .param p1, "layout"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "widthMode"    # I
    .param p3, "widthSize"    # I
    .param p4, "heightMode"    # I
    .param p5, "heightSize"    # I

    .line 1728
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mMeasurer:Landroid/support/constraint/ConstraintLayout$Measurer;

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingHeight:I

    .line 1729
    .local v0, "heightPadding":I
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mMeasurer:Landroid/support/constraint/ConstraintLayout$Measurer;

    iget v1, v1, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingWidth:I

    .line 1731
    .local v1, "widthPadding":I
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1732
    .local v2, "widthBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1734
    .local v3, "heightBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v4, 0x0

    .line 1735
    .local v4, "desiredWidth":I
    const/4 v5, 0x0

    .line 1736
    .local v5, "desiredHeight":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v6

    .line 1738
    .local v6, "childCount":I
    const/4 v7, 0x0

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1755
    :sswitch_0
    iget v8, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    sub-int/2addr v8, v1

    invoke-static {v8, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0

    .line 1748
    :sswitch_1
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1749
    if-nez v6, :cond_0

    .line 1750
    iget v8, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    .line 1740
    :sswitch_2
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1741
    move v4, p3

    .line 1742
    if-nez v6, :cond_0

    .line 1743
    iget v8, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1758
    :cond_0
    :goto_0
    sparse-switch p4, :sswitch_data_1

    goto :goto_1

    .line 1775
    :sswitch_3
    iget v8, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    sub-int/2addr v8, v0

    invoke-static {v8, p5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 1768
    :sswitch_4
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1769
    if-nez v6, :cond_1

    .line 1770
    iget v8, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 1760
    :sswitch_5
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1761
    move v5, p5

    .line 1762
    if-nez v6, :cond_1

    .line 1763
    iget v8, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1779
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v8

    if-ne v4, v8, :cond_2

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    if-eq v5, v8, :cond_3

    .line 1780
    :cond_2
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->invalidateMeasures()V

    .line 1782
    :cond_3
    invoke-virtual {p1, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 1783
    invoke-virtual {p1, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 1784
    iget v8, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    sub-int/2addr v8, v1

    invoke-virtual {p1, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxWidth(I)V

    .line 1785
    iget v8, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    sub-int/2addr v8, v0

    invoke-virtual {p1, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxHeight(I)V

    .line 1786
    invoke-virtual {p1, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1787
    invoke-virtual {p1, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1788
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1789
    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1790
    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1791
    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1792
    iget v7, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    sub-int/2addr v7, v1

    invoke-virtual {p1, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1793
    iget v7, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    sub-int/2addr v7, v0

    invoke-virtual {p1, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1794
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public setState(III)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .line 1805
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    if-eqz v0, :cond_0

    .line 1806
    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/constraint/ConstraintLayoutStates;->updateConstraints(IFF)V

    .line 1808
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 3254
    const/4 v0, 0x0

    return v0
.end method
