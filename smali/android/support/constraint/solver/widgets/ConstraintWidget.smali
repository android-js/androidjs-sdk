.class public Landroid/support/constraint/solver/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    }
.end annotation


# static fields
.field public static final ANCHOR_BASELINE:I = 0x4

.field public static final ANCHOR_BOTTOM:I = 0x3

.field public static final ANCHOR_LEFT:I = 0x0

.field public static final ANCHOR_RIGHT:I = 0x1

.field public static final ANCHOR_TOP:I = 0x2

.field private static final AUTOTAG_CENTER:Z = false

.field public static final BOTH:I = 0x2

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static DEFAULT_BIAS:F = 0.0f

.field static final DIMENSION_HORIZONTAL:I = 0x0

.field static final DIMENSION_VERTICAL:I = 0x1

.field protected static final DIRECT:I = 0x2

.field public static final GONE:I = 0x8

.field public static final HORIZONTAL:I = 0x0

.field public static final INVISIBLE:I = 0x4

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_RATIO:I = 0x3

.field public static final MATCH_CONSTRAINT_RATIO_RESOLVED:I = 0x4

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field protected static final SOLVER:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field private static final USE_WRAP_DIMENSION_FOR_SPREAD:Z = false

.field public static final VERTICAL:I = 0x1

.field public static final VISIBLE:I = 0x0

.field private static final WRAP:I = -0x2


# instance fields
.field private OPTIMIZE_WRAP:Z

.field private OPTIMIZE_WRAP_ON_RESOLVED:Z

.field private hasBaseline:Z

.field public horizontalChainRun:Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

.field public horizontalGroup:I

.field public horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

.field private inPlaceholder:Z

.field public isTerminalWidget:[Z

.field protected mAnchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mBaselineDistance:I

.field public mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mBottomHasCentered:Z

.field public mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mCircleConstraintAngle:F

.field private mCompanionWidget:Ljava/lang/Object;

.field private mContainerItemSkip:I

.field private mDebugName:Ljava/lang/String;

.field public mDimensionRatio:F

.field protected mDimensionRatioSide:I

.field mDistToBottom:I

.field mDistToLeft:I

.field mDistToRight:I

.field mDistToTop:I

.field mGroupsToSolver:Z

.field mHeight:I

.field mHorizontalBiasPercent:F

.field mHorizontalChainFixedPosition:Z

.field mHorizontalChainStyle:I

.field mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field public mHorizontalResolution:I

.field mHorizontalWrapVisited:Z

.field private mInVirtuaLayout:Z

.field public mIsHeightWrapContent:Z

.field private mIsInBarrier:[Z

.field public mIsWidthWrapContent:Z

.field private mLastHorizontalMeasureSpec:I

.field private mLastVerticalMeasureSpec:I

.field public mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mLeftHasCentered:Z

.field public mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field public mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field protected mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field public mMatchConstraintDefaultHeight:I

.field public mMatchConstraintDefaultWidth:I

.field public mMatchConstraintMaxHeight:I

.field public mMatchConstraintMaxWidth:I

.field public mMatchConstraintMinHeight:I

.field public mMatchConstraintMinWidth:I

.field public mMatchConstraintPercentHeight:F

.field public mMatchConstraintPercentWidth:F

.field private mMaxDimension:[I

.field private mMeasureRequested:Z

.field protected mMinHeight:I

.field protected mMinWidth:I

.field protected mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field protected mOffsetX:I

.field protected mOffsetY:I

.field public mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field mRelX:I

.field mRelY:I

.field mResolvedDimensionRatio:F

.field mResolvedDimensionRatioSide:I

.field mResolvedHasRatio:Z

.field public mResolvedMatchConstraintDefault:[I

.field public mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mRightHasCentered:Z

.field public mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mTopHasCentered:Z

.field private mType:Ljava/lang/String;

.field mVerticalBiasPercent:F

.field mVerticalChainFixedPosition:Z

.field mVerticalChainStyle:I

.field mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field public mVerticalResolution:I

.field mVerticalWrapVisited:Z

.field private mVisibility:I

.field public mWeight:[F

.field mWidth:I

.field protected mX:I

.field protected mY:I

.field public measured:Z

.field private resolvedHorizontal:Z

.field private resolvedVertical:Z

.field public run:[Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

.field public verticalChainRun:Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

.field public verticalGroup:I

.field public verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

.field public wrapMeasure:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 392
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 62
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->run:[Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 66
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 67
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    .line 69
    new-array v3, v1, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 70
    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    .line 71
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 72
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 73
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    .line 74
    iput-boolean v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    .line 85
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 86
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 220
    const/4 v5, -0x1

    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 221
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 225
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 226
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 227
    new-array v6, v1, [I

    iput-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 229
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 230
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 231
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 232
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 233
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 234
    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 238
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 239
    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 241
    new-array v6, v1, [I

    fill-array-data v6, :array_2

    iput-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 242
    const/4 v6, 0x0

    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 243
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 246
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 320
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 321
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 339
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 340
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 341
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 342
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 343
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 344
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 345
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 346
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 354
    const/4 v8, 0x6

    new-array v8, v8, [Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v9, v8, v0

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v9, v8, v4

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v9, v8, v1

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v10, 0x3

    aput-object v9, v8, v10

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v9, v8, v3

    const/4 v3, 0x5

    aput-object v7, v8, v3

    iput-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 355
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 357
    new-array v3, v1, [Z

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 362
    new-array v3, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v3, v0

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v3, v4

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 365
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 368
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 369
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 370
    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 371
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 374
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 375
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 376
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelX:I

    .line 377
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelY:I

    .line 380
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 381
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 384
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 393
    sget v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 394
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 402
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 405
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 407
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 408
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 420
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 423
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 424
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 428
    new-array v3, v1, [F

    fill-array-data v3, :array_3

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 430
    new-array v3, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v2, v3, v0

    aput-object v2, v3, v4

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 431
    new-array v1, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v2, v1, v0

    aput-object v2, v1, v4

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 433
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 434
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 499
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalGroup:I

    .line 500
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalGroup:I

    .line 525
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 526
    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 561
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>(IIII)V

    .line 562
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 62
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->run:[Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 66
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 67
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    .line 69
    new-array v3, v1, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 70
    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    .line 71
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 72
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 73
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    .line 74
    iput-boolean v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    .line 85
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 86
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 220
    const/4 v5, -0x1

    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 221
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 225
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 226
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 227
    new-array v6, v1, [I

    iput-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 229
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 230
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 231
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 232
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 233
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 234
    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 238
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 239
    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 241
    new-array v6, v1, [I

    fill-array-data v6, :array_2

    iput-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 242
    const/4 v6, 0x0

    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 243
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 246
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 320
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 321
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 339
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 340
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 341
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 342
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 343
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 344
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 345
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 346
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 354
    const/4 v8, 0x6

    new-array v8, v8, [Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v9, v8, v0

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v9, v8, v4

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v9, v8, v1

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v10, 0x3

    aput-object v9, v8, v10

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v9, v8, v3

    const/4 v3, 0x5

    aput-object v7, v8, v3

    iput-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 355
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 357
    new-array v3, v1, [Z

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 362
    new-array v3, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v3, v0

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v3, v4

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 365
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 368
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 369
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 370
    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 371
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 374
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 375
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 376
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelX:I

    .line 377
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelY:I

    .line 380
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 381
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 384
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 393
    sget v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 394
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 402
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 405
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 407
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 408
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 420
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 423
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 424
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 428
    new-array v3, v1, [F

    fill-array-data v3, :array_3

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 430
    new-array v3, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v2, v3, v0

    aput-object v2, v3, v4

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 431
    new-array v1, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v2, v1, v0

    aput-object v2, v1, v4

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 433
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 434
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 499
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalGroup:I

    .line 500
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalGroup:I

    .line 542
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 543
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 544
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 545
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 546
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 547
    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "debugName"    # Ljava/lang/String;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 62
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->run:[Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 66
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 67
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    .line 69
    new-array v3, v1, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 70
    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    .line 71
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 72
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 73
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    .line 74
    iput-boolean v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    .line 85
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 86
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 220
    const/4 v5, -0x1

    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 221
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 225
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 226
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 227
    new-array v6, v1, [I

    iput-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 229
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 230
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 231
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 232
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 233
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 234
    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 238
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 239
    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 241
    new-array v6, v1, [I

    fill-array-data v6, :array_2

    iput-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 242
    const/4 v6, 0x0

    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 243
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 246
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 320
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 321
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 339
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 340
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 341
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 342
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 343
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 344
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 345
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 346
    new-instance v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 354
    const/4 v8, 0x6

    new-array v8, v8, [Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v9, v8, v0

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v9, v8, v4

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v9, v8, v1

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v10, 0x3

    aput-object v9, v8, v10

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v9, v8, v3

    const/4 v3, 0x5

    aput-object v7, v8, v3

    iput-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 355
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 357
    new-array v3, v1, [Z

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 362
    new-array v3, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v3, v0

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v3, v4

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 365
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 368
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 369
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 370
    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 371
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 374
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 375
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 376
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelX:I

    .line 377
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelY:I

    .line 380
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 381
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 384
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 393
    sget v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 394
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 402
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 405
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 407
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 408
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 420
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 423
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 424
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 428
    new-array v3, v1, [F

    fill-array-data v3, :array_3

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 430
    new-array v3, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v2, v3, v0

    aput-object v2, v3, v4

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 431
    new-array v1, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v2, v1, v0

    aput-object v2, v1, v4

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 433
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 434
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 499
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalGroup:I

    .line 500
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalGroup:I

    .line 529
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 530
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    .line 531
    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "debugName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 574
    invoke-direct {p0, p2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>(II)V

    .line 575
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "debugName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 550
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>(IIII)V

    .line 551
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method private addAnchors()V
    .locals 2

    .line 596
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    return-void
.end method

.method private applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZZZZLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V
    .locals 38
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "isHorizontal"    # Z
    .param p3, "parentWrapContent"    # Z
    .param p4, "oppositeParentWrapContent"    # Z
    .param p5, "isTerminal"    # Z
    .param p6, "parentMin"    # Landroid/support/constraint/solver/SolverVariable;
    .param p7, "parentMax"    # Landroid/support/constraint/solver/SolverVariable;
    .param p8, "dimensionBehaviour"    # Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .param p9, "wrapContent"    # Z
    .param p10, "beginAnchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p11, "endAnchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p12, "beginPosition"    # I
    .param p13, "dimension"    # I
    .param p14, "minDimension"    # I
    .param p15, "maxDimension"    # I
    .param p16, "bias"    # F
    .param p17, "useRatio"    # Z
    .param p18, "oppositeVariable"    # Z
    .param p19, "inChain"    # Z
    .param p20, "oppositeInChain"    # Z
    .param p21, "inBarrier"    # Z
    .param p22, "matchConstraintDefault"    # I
    .param p23, "oppositeMatchConstraintDefault"    # I
    .param p24, "matchMinDimension"    # I
    .param p25, "matchMaxDimension"    # I
    .param p26, "matchPercentDimension"    # F
    .param p27, "applyPosition"    # Z

    .line 2615
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v9, p15

    move/from16 v8, p23

    move/from16 v1, p24

    move/from16 v2, p25

    invoke-virtual {v10, v13}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v7

    .line 2616
    .local v7, "begin":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v10, v14}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 2617
    .local v6, "end":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p10 .. p10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 2618
    .local v5, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p11 .. p11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 2620
    .local v4, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2621
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v3

    iget-wide v11, v3, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    const-wide/16 v16, 0x1

    add-long v11, v11, v16

    iput-wide v11, v3, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 2624
    :cond_0
    invoke-virtual/range {p10 .. p10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v11

    .line 2625
    .local v11, "isBeginConnected":Z
    invoke-virtual/range {p11 .. p11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v12

    .line 2626
    .local v12, "isEndConnected":Z
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v16

    .line 2628
    .local v16, "isCenterConnected":Z
    const/4 v3, 0x0

    .line 2630
    .local v3, "variableSize":Z
    const/16 v17, 0x0

    .line 2631
    .local v17, "numConnections":I
    if-eqz v11, :cond_1

    .line 2632
    add-int/lit8 v17, v17, 0x1

    .line 2634
    :cond_1
    if-eqz v12, :cond_2

    .line 2635
    add-int/lit8 v17, v17, 0x1

    .line 2637
    :cond_2
    if-eqz v16, :cond_3

    .line 2638
    add-int/lit8 v17, v17, 0x1

    move/from16 v8, v17

    goto :goto_0

    .line 2637
    :cond_3
    move/from16 v8, v17

    .line 2641
    .end local v17    # "numConnections":I
    .local v8, "numConnections":I
    :goto_0
    if-eqz p17, :cond_4

    .line 2642
    const/16 v17, 0x3

    move/from16 v14, v17

    .end local p22    # "matchConstraintDefault":I
    .local v17, "matchConstraintDefault":I
    goto :goto_1

    .line 2641
    .end local v17    # "matchConstraintDefault":I
    .restart local p22    # "matchConstraintDefault":I
    :cond_4
    move/from16 v14, p22

    .line 2644
    .end local p22    # "matchConstraintDefault":I
    .local v14, "matchConstraintDefault":I
    :goto_1
    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    goto :goto_3

    .line 2658
    :pswitch_0
    const/4 v13, 0x4

    if-eq v14, v13, :cond_5

    const/4 v13, 0x1

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    :goto_2
    move v3, v13

    goto :goto_3

    .line 2654
    :pswitch_1
    const/4 v3, 0x0

    .line 2656
    goto :goto_3

    .line 2650
    :pswitch_2
    const/4 v3, 0x0

    .line 2652
    goto :goto_3

    .line 2646
    :pswitch_3
    const/4 v3, 0x0

    .line 2648
    nop

    .line 2663
    :goto_3
    iget v13, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    move-object/from16 v18, v4

    .end local v4    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v18, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    const/16 v4, 0x8

    if-ne v13, v4, :cond_6

    .line 2664
    const/4 v13, 0x0

    .line 2665
    .end local p13    # "dimension":I
    .local v13, "dimension":I
    const/4 v3, 0x0

    move/from16 v19, v3

    goto :goto_4

    .line 2663
    .end local v13    # "dimension":I
    .restart local p13    # "dimension":I
    :cond_6
    move/from16 v13, p13

    move/from16 v19, v3

    .line 2669
    .end local v3    # "variableSize":Z
    .end local p13    # "dimension":I
    .restart local v13    # "dimension":I
    .local v19, "variableSize":Z
    :goto_4
    if-eqz p27, :cond_8

    .line 2670
    if-nez v11, :cond_7

    if-nez v12, :cond_7

    if-nez v16, :cond_7

    .line 2671
    move/from16 v3, p12

    invoke-virtual {v10, v7, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    goto :goto_5

    .line 2670
    :cond_7
    move/from16 v3, p12

    .line 2672
    if-eqz v11, :cond_8

    if-nez v12, :cond_8

    .line 2673
    invoke-virtual/range {p10 .. p10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    invoke-virtual {v10, v7, v5, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2678
    :cond_8
    :goto_5
    const/4 v3, 0x3

    if-nez v19, :cond_c

    .line 2679
    if-eqz p9, :cond_a

    .line 2680
    const/4 v4, 0x0

    invoke-virtual {v10, v6, v7, v4, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2681
    if-lez v15, :cond_9

    .line 2682
    const/16 v3, 0x8

    invoke-virtual {v10, v6, v7, v15, v3}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_6

    .line 2681
    :cond_9
    const/16 v3, 0x8

    .line 2684
    :goto_6
    const v4, 0x7fffffff

    if-ge v9, v4, :cond_b

    .line 2685
    invoke-virtual {v10, v6, v7, v9, v3}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_7

    .line 2688
    :cond_a
    const/16 v3, 0x8

    invoke-virtual {v10, v6, v7, v13, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2759
    :cond_b
    :goto_7
    move/from16 v25, v2

    move-object/from16 v27, v5

    move/from16 v20, v13

    move/from16 v24, v14

    move-object/from16 v9, v18

    move/from16 v21, v19

    const/16 v13, 0x8

    const/16 v23, 0x0

    move/from16 v18, p5

    move/from16 v19, v1

    move-object v14, v6

    goto/16 :goto_d

    .line 2691
    :cond_c
    const/4 v3, 0x2

    if-eq v8, v3, :cond_f

    if-nez p17, :cond_f

    const/4 v3, 0x1

    if-eq v14, v3, :cond_d

    if-nez v14, :cond_f

    .line 2695
    :cond_d
    const/16 v19, 0x0

    .line 2696
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2697
    .local v3, "d":I
    if-lez v2, :cond_e

    .line 2698
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2700
    :cond_e
    const/16 v4, 0x8

    invoke-virtual {v10, v6, v7, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2701
    .end local v3    # "d":I
    move/from16 v25, v2

    move-object/from16 v27, v5

    move/from16 v20, v13

    move/from16 v24, v14

    move-object/from16 v9, v18

    move/from16 v21, v19

    const/16 v13, 0x8

    const/16 v23, 0x0

    move/from16 v18, p5

    move/from16 v19, v1

    move-object v14, v6

    goto/16 :goto_d

    .line 2702
    :cond_f
    const/4 v3, -0x2

    if-ne v1, v3, :cond_10

    .line 2703
    move v1, v13

    move v4, v1

    .end local p24    # "matchMinDimension":I
    .local v1, "matchMinDimension":I
    goto :goto_8

    .line 2702
    .end local v1    # "matchMinDimension":I
    .restart local p24    # "matchMinDimension":I
    :cond_10
    move v4, v1

    .line 2705
    .end local p24    # "matchMinDimension":I
    .local v4, "matchMinDimension":I
    :goto_8
    if-ne v2, v3, :cond_11

    .line 2706
    move v1, v13

    move v3, v1

    .end local p25    # "matchMaxDimension":I
    .local v1, "matchMaxDimension":I
    goto :goto_9

    .line 2705
    .end local v1    # "matchMaxDimension":I
    .restart local p25    # "matchMaxDimension":I
    :cond_11
    move v3, v2

    .line 2708
    .end local p25    # "matchMaxDimension":I
    .local v3, "matchMaxDimension":I
    :goto_9
    if-lez v13, :cond_12

    const/4 v1, 0x1

    if-eq v14, v1, :cond_12

    .line 2713
    const/4 v13, 0x0

    .line 2716
    :cond_12
    if-lez v4, :cond_13

    .line 2717
    const/16 v1, 0x8

    invoke-virtual {v10, v6, v7, v4, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2718
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 2720
    :cond_13
    if-lez v3, :cond_16

    .line 2721
    const/4 v1, 0x1

    .line 2722
    .local v1, "applyLimit":Z
    if-eqz p3, :cond_14

    const/4 v2, 0x1

    if-ne v14, v2, :cond_14

    .line 2723
    const/4 v1, 0x0

    .line 2725
    :cond_14
    if-eqz v1, :cond_15

    .line 2726
    const/16 v2, 0x8

    invoke-virtual {v10, v6, v7, v3, v2}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2728
    :cond_15
    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v13, v2

    .line 2730
    .end local v1    # "applyLimit":Z
    :cond_16
    const/4 v1, 0x1

    if-ne v14, v1, :cond_19

    .line 2731
    if-eqz p3, :cond_17

    .line 2732
    const/16 v2, 0x8

    invoke-virtual {v10, v6, v7, v13, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    const/4 v1, 0x5

    goto :goto_a

    .line 2733
    :cond_17
    const/16 v2, 0x8

    if-eqz p19, :cond_18

    .line 2734
    const/4 v1, 0x5

    invoke-virtual {v10, v6, v7, v13, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2735
    invoke-virtual {v10, v6, v7, v13, v2}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_a

    .line 2737
    :cond_18
    const/4 v1, 0x5

    invoke-virtual {v10, v6, v7, v13, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2738
    invoke-virtual {v10, v6, v7, v13, v2}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2759
    :goto_a
    move/from16 v25, v3

    move-object/from16 v27, v5

    move/from16 v20, v13

    move/from16 v24, v14

    move-object/from16 v9, v18

    move/from16 v21, v19

    const/16 v13, 0x8

    const/16 v23, 0x0

    move/from16 v18, p5

    move/from16 v19, v4

    move-object v14, v6

    goto/16 :goto_d

    .line 2740
    :cond_19
    const/4 v1, 0x5

    const/16 v2, 0x8

    move/from16 p13, v4

    const/4 v4, 0x2

    .end local v4    # "matchMinDimension":I
    .local p13, "matchMinDimension":I
    if-ne v14, v4, :cond_1c

    .line 2741
    const/16 v20, 0x0

    .line 2742
    .local v20, "percentBegin":Landroid/support/constraint/solver/SolverVariable;
    const/16 v21, 0x0

    .line 2743
    .local v21, "percentEnd":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p10 .. p10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_1b

    invoke-virtual/range {p10 .. p10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_1a

    goto :goto_b

    .line 2748
    :cond_1a
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 2749
    .end local v20    # "percentBegin":Landroid/support/constraint/solver/SolverVariable;
    .local v1, "percentBegin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    .end local v21    # "percentEnd":Landroid/support/constraint/solver/SolverVariable;
    .local v2, "percentEnd":Landroid/support/constraint/solver/SolverVariable;
    goto :goto_c

    .line 2745
    .end local v1    # "percentBegin":Landroid/support/constraint/solver/SolverVariable;
    .end local v2    # "percentEnd":Landroid/support/constraint/solver/SolverVariable;
    .restart local v20    # "percentBegin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v21    # "percentEnd":Landroid/support/constraint/solver/SolverVariable;
    :cond_1b
    :goto_b
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 2746
    .end local v20    # "percentBegin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v1    # "percentBegin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    .line 2751
    .end local v1    # "percentBegin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v20    # "percentBegin":Landroid/support/constraint/solver/SolverVariable;
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v1

    const/4 v4, 0x5

    const/16 v24, 0x8

    move-object v2, v6

    move/from16 v25, v3

    move/from16 p22, v13

    const/4 v13, 0x3

    .end local v3    # "matchMaxDimension":I
    .end local v13    # "dimension":I
    .local v25, "matchMaxDimension":I
    .local p22, "dimension":I
    move-object v3, v7

    move-object/from16 v9, v18

    const/16 v13, 0x8

    const/16 v23, 0x0

    move/from16 v18, p13

    .end local p13    # "matchMinDimension":I
    .local v9, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v18, "matchMinDimension":I
    move-object/from16 v4, v21

    move-object/from16 v27, v5

    .end local v5    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v27, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v5, v20

    move/from16 v24, v14

    move-object v14, v6

    .end local v6    # "end":Landroid/support/constraint/solver/SolverVariable;
    .local v14, "end":Landroid/support/constraint/solver/SolverVariable;
    .local v24, "matchConstraintDefault":I
    move/from16 v6, p26

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/solver/ArrayRow;->createRowDimensionRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2752
    const/16 v19, 0x0

    .line 2753
    .end local v20    # "percentBegin":Landroid/support/constraint/solver/SolverVariable;
    .end local v21    # "percentEnd":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v20, p22

    move/from16 v21, v19

    move/from16 v19, v18

    move/from16 v18, p5

    goto :goto_d

    .line 2754
    .end local v9    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v24    # "matchConstraintDefault":I
    .end local v25    # "matchMaxDimension":I
    .end local v27    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local p22    # "dimension":I
    .restart local v3    # "matchMaxDimension":I
    .restart local v5    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v6    # "end":Landroid/support/constraint/solver/SolverVariable;
    .restart local v13    # "dimension":I
    .local v14, "matchConstraintDefault":I
    .local v18, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local p13    # "matchMinDimension":I
    :cond_1c
    move/from16 v25, v3

    move-object/from16 v27, v5

    move/from16 p22, v13

    move/from16 v24, v14

    move-object/from16 v9, v18

    const/16 v13, 0x8

    const/16 v23, 0x0

    move/from16 v18, p13

    move-object v14, v6

    .end local v3    # "matchMaxDimension":I
    .end local v5    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v6    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v13    # "dimension":I
    .end local p13    # "matchMinDimension":I
    .restart local v9    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v14, "end":Landroid/support/constraint/solver/SolverVariable;
    .local v18, "matchMinDimension":I
    .restart local v24    # "matchConstraintDefault":I
    .restart local v25    # "matchMaxDimension":I
    .restart local v27    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local p22    # "dimension":I
    const/4 v1, 0x1

    move/from16 v20, p22

    move/from16 v21, v19

    move/from16 v19, v18

    move/from16 v18, v1

    .line 2759
    .end local p5    # "isTerminal":Z
    .end local p22    # "dimension":I
    .local v18, "isTerminal":Z
    .local v19, "matchMinDimension":I
    .local v20, "dimension":I
    .local v21, "variableSize":Z
    :goto_d
    if-eqz p27, :cond_5e

    if-eqz p19, :cond_1d

    move-object/from16 v5, p7

    move-object/from16 v4, p11

    move-object v3, v0

    move/from16 v33, v8

    move-object v0, v9

    move/from16 v32, v12

    move/from16 v9, v24

    move-object/from16 v8, v27

    const/4 v1, 0x0

    const/4 v2, 0x2

    move/from16 v24, v11

    move-object/from16 v11, p6

    goto/16 :goto_22

    .line 2792
    :cond_1d
    const/4 v6, 0x5

    .line 2794
    .local v6, "wrapStrength":I
    if-nez v11, :cond_1e

    if-nez v12, :cond_1e

    if-nez v16, :cond_1e

    move-object v3, v0

    move v13, v6

    move/from16 v33, v8

    move-object v0, v9

    move/from16 v32, v12

    move/from16 v9, v24

    move-object/from16 v8, v27

    move/from16 v24, v11

    move-object/from16 v11, p6

    goto/16 :goto_1e

    .line 2796
    :cond_1e
    if-eqz v11, :cond_1f

    if-nez v12, :cond_1f

    move-object v3, v0

    move v13, v6

    move/from16 v33, v8

    move-object v0, v9

    move/from16 v32, v12

    move/from16 v9, v24

    move-object/from16 v8, v27

    move/from16 v24, v11

    move-object/from16 v11, p6

    goto/16 :goto_1e

    .line 2798
    :cond_1f
    if-nez v11, :cond_23

    if-eqz v12, :cond_23

    .line 2799
    invoke-virtual/range {p11 .. p11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v14, v9, v1, v13}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2800
    if-eqz p3, :cond_22

    .line 2801
    iget-boolean v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    if-eqz v1, :cond_21

    iget-boolean v1, v7, Landroid/support/constraint/solver/SolverVariable;->isFinalValue:Z

    if-eqz v1, :cond_21

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_21

    .line 2802
    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2803
    .local v1, "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    if-eqz p2, :cond_20

    .line 2804
    move-object/from16 v5, p10

    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addHorizontalWrapMinVariable(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    goto :goto_e

    .line 2806
    :cond_20
    move-object/from16 v5, p10

    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addVerticalWrapMinVariable(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    .line 2808
    .end local v1    # "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    :goto_e
    move-object v3, v0

    move v13, v6

    move/from16 v33, v8

    move-object v0, v9

    move/from16 v32, v12

    move/from16 v9, v24

    move-object/from16 v8, v27

    move/from16 v24, v11

    move-object/from16 v11, p6

    goto/16 :goto_1e

    .line 2801
    :cond_21
    move-object/from16 v5, p10

    const/4 v4, 0x0

    .line 2812
    move-object/from16 v3, p6

    const/4 v1, 0x5

    invoke-virtual {v10, v7, v3, v4, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    move v13, v6

    move/from16 v33, v8

    move/from16 v32, v12

    move-object/from16 v8, v27

    move-object/from16 v37, v3

    move-object v3, v0

    move-object v0, v9

    move/from16 v9, v24

    move/from16 v24, v11

    move-object/from16 v11, v37

    goto/16 :goto_1e

    .line 2800
    :cond_22
    move-object/from16 v3, p6

    move-object/from16 v5, p10

    move v13, v6

    move/from16 v33, v8

    move/from16 v32, v12

    move-object/from16 v8, v27

    move-object/from16 v37, v3

    move-object v3, v0

    move-object v0, v9

    move/from16 v9, v24

    move/from16 v24, v11

    move-object/from16 v11, v37

    goto/16 :goto_1e

    .line 2798
    :cond_23
    move-object/from16 v3, p6

    move-object/from16 v5, p10

    const/4 v4, 0x0

    .line 2815
    if-eqz v11, :cond_58

    if-eqz v12, :cond_58

    .line 2816
    const/16 v23, 0x1

    .line 2817
    .local v23, "applyBoundsCheck":Z
    const/4 v1, 0x0

    .line 2818
    .local v1, "applyCentering":Z
    const/16 v28, 0x0

    .line 2819
    .local v28, "applyStrongChecks":Z
    const/4 v2, 0x0

    .line 2820
    .local v2, "applyRangeCheck":Z
    const/16 v29, 0x5

    .line 2821
    .local v29, "rangeCheckStrength":I
    const/16 v30, 0x4

    .line 2822
    .local v30, "boundsCheckStrength":I
    const/16 v31, 0x6

    .line 2824
    .local v31, "centeringStrength":I
    nop

    .line 2825
    const/16 v29, 0x5

    .line 2827
    iget-object v4, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2828
    .local v4, "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v13, p11

    move/from16 p5, v1

    move/from16 v37, v24

    move/from16 v24, v11

    move/from16 v11, v37

    .end local v1    # "applyCentering":Z
    .local v11, "matchConstraintDefault":I
    .local v24, "isBeginConnected":Z
    .local p5, "applyCentering":Z
    iget-object v1, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2829
    .local v1, "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v32, v12

    .end local v12    # "isEndConnected":Z
    .local v32, "isEndConnected":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v12

    .line 2831
    .local v12, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v21, :cond_36

    .line 2832
    if-nez v11, :cond_28

    .line 2833
    if-nez v25, :cond_25

    if-nez v19, :cond_25

    .line 2834
    const/16 v28, 0x1

    .line 2835
    const/16 v17, 0x8

    .line 2836
    .end local v29    # "rangeCheckStrength":I
    .local v17, "rangeCheckStrength":I
    const/16 v26, 0x8

    .line 2838
    .end local v30    # "boundsCheckStrength":I
    .local v26, "boundsCheckStrength":I
    move/from16 p13, v2

    move-object/from16 v15, v27

    .end local v2    # "applyRangeCheck":Z
    .end local v27    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v15, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local p13, "applyRangeCheck":Z
    iget-boolean v2, v15, Landroid/support/constraint/solver/SolverVariable;->isFinalValue:Z

    if-eqz v2, :cond_24

    iget-boolean v2, v9, Landroid/support/constraint/solver/SolverVariable;->isFinalValue:Z

    if-eqz v2, :cond_24

    .line 2839
    invoke-virtual/range {p10 .. p10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v10, v7, v15, v2, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2840
    invoke-virtual/range {p11 .. p11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v14, v9, v2, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2841
    return-void

    .line 2850
    :cond_24
    move/from16 v2, p5

    move/from16 v29, v17

    move/from16 v30, v26

    move/from16 v26, p13

    goto :goto_f

    .line 2833
    .end local v15    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v17    # "rangeCheckStrength":I
    .end local v26    # "boundsCheckStrength":I
    .end local p13    # "applyRangeCheck":Z
    .restart local v2    # "applyRangeCheck":Z
    .restart local v27    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v29    # "rangeCheckStrength":I
    .restart local v30    # "boundsCheckStrength":I
    :cond_25
    move/from16 p13, v2

    move-object/from16 v15, v27

    .line 2844
    .end local v2    # "applyRangeCheck":Z
    .end local v27    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v15    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local p13    # "applyRangeCheck":Z
    const/4 v2, 0x1

    .line 2845
    .end local p5    # "applyCentering":Z
    .local v2, "applyCentering":Z
    const/4 v3, 0x5

    .line 2846
    .end local v29    # "rangeCheckStrength":I
    .local v3, "rangeCheckStrength":I
    const/16 v17, 0x5

    .line 2847
    .end local v30    # "boundsCheckStrength":I
    .local v17, "boundsCheckStrength":I
    const/16 v23, 0x1

    .line 2848
    const/16 v26, 0x1

    move/from16 v29, v3

    move/from16 v30, v17

    .line 2850
    .end local v3    # "rangeCheckStrength":I
    .end local v17    # "boundsCheckStrength":I
    .end local p13    # "applyRangeCheck":Z
    .local v26, "applyRangeCheck":Z
    .restart local v29    # "rangeCheckStrength":I
    .restart local v30    # "boundsCheckStrength":I
    :goto_f
    instance-of v3, v4, Landroid/support/constraint/solver/widgets/Barrier;

    if-nez v3, :cond_27

    instance-of v3, v1, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v3, :cond_26

    goto :goto_10

    :cond_26
    move-object/from16 v35, v1

    move/from16 v17, v2

    move-object/from16 v27, v4

    move-object/from16 p13, v7

    move/from16 v33, v8

    move-object v0, v9

    move/from16 p5, v11

    move/from16 v2, v26

    move-object/from16 v9, p7

    move v11, v6

    goto/16 :goto_15

    .line 2851
    :cond_27
    :goto_10
    const/16 v30, 0x4

    move-object/from16 v35, v1

    move/from16 v17, v2

    move-object/from16 v27, v4

    move-object/from16 p13, v7

    move/from16 v33, v8

    move-object v0, v9

    move/from16 p5, v11

    move/from16 v2, v26

    move-object/from16 v9, p7

    move v11, v6

    goto/16 :goto_15

    .line 2853
    .end local v15    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v26    # "applyRangeCheck":Z
    .local v2, "applyRangeCheck":Z
    .restart local v27    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local p5    # "applyCentering":Z
    :cond_28
    move/from16 p13, v2

    move-object/from16 v15, v27

    .end local v2    # "applyRangeCheck":Z
    .end local v27    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v15    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local p13    # "applyRangeCheck":Z
    const/4 v2, 0x1

    if-ne v11, v2, :cond_29

    .line 2854
    const/4 v2, 0x1

    .line 2855
    .end local p5    # "applyCentering":Z
    .local v2, "applyCentering":Z
    const/4 v3, 0x1

    .line 2856
    .end local p13    # "applyRangeCheck":Z
    .local v3, "applyRangeCheck":Z
    const/16 v29, 0x8

    move-object/from16 v35, v1

    move/from16 v17, v2

    move v2, v3

    move-object/from16 v27, v4

    move-object/from16 p13, v7

    move/from16 v33, v8

    move-object v0, v9

    move/from16 p5, v11

    move-object/from16 v9, p7

    move v11, v6

    goto/16 :goto_15

    .line 2857
    .end local v2    # "applyCentering":Z
    .end local v3    # "applyRangeCheck":Z
    .restart local p5    # "applyCentering":Z
    .restart local p13    # "applyRangeCheck":Z
    :cond_29
    const/4 v2, 0x3

    if-ne v11, v2, :cond_35

    .line 2858
    iget v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2c

    .line 2859
    const/4 v2, 0x1

    .line 2860
    .end local p5    # "applyCentering":Z
    .restart local v2    # "applyCentering":Z
    const/4 v3, 0x1

    .line 2861
    .end local p13    # "applyRangeCheck":Z
    .restart local v3    # "applyRangeCheck":Z
    const/16 v28, 0x1

    .line 2862
    const/16 v29, 0x8

    .line 2863
    const/16 v30, 0x5

    .line 2864
    if-eqz p20, :cond_2b

    .line 2865
    const/16 v30, 0x5

    .line 2866
    const/16 v31, 0x4

    .line 2867
    if-eqz p3, :cond_2a

    .line 2868
    const/16 v31, 0x5

    move-object/from16 v35, v1

    move/from16 v17, v2

    move v2, v3

    move-object/from16 v27, v4

    move-object/from16 p13, v7

    move/from16 v33, v8

    move-object v0, v9

    move/from16 p5, v11

    move-object/from16 v9, p7

    move v11, v6

    goto/16 :goto_15

    .line 2867
    :cond_2a
    move-object/from16 v35, v1

    move/from16 v17, v2

    move v2, v3

    move-object/from16 v27, v4

    move-object/from16 p13, v7

    move/from16 v33, v8

    move-object v0, v9

    move/from16 p5, v11

    move-object/from16 v9, p7

    move v11, v6

    goto/16 :goto_15

    .line 2871
    :cond_2b
    const/16 v31, 0x8

    move-object/from16 v35, v1

    move/from16 v17, v2

    move v2, v3

    move-object/from16 v27, v4

    move-object/from16 p13, v7

    move/from16 v33, v8

    move-object v0, v9

    move/from16 p5, v11

    move-object/from16 v9, p7

    move v11, v6

    goto/16 :goto_15

    .line 2874
    .end local v2    # "applyCentering":Z
    .end local v3    # "applyRangeCheck":Z
    .restart local p5    # "applyCentering":Z
    .restart local p13    # "applyRangeCheck":Z
    :cond_2c
    const/4 v2, 0x1

    .line 2875
    .end local p5    # "applyCentering":Z
    .restart local v2    # "applyCentering":Z
    const/4 v3, 0x1

    .line 2876
    .end local p13    # "applyRangeCheck":Z
    .restart local v3    # "applyRangeCheck":Z
    const/16 v28, 0x1

    .line 2877
    if-eqz p17, :cond_30

    .line 2880
    move/from16 p5, v2

    move/from16 v33, v8

    const/4 v2, 0x2

    move/from16 v8, p23

    .end local v2    # "applyCentering":Z
    .end local v8    # "numConnections":I
    .local v33, "numConnections":I
    .restart local p5    # "applyCentering":Z
    if-eq v8, v2, :cond_2e

    const/4 v2, 0x1

    if-ne v8, v2, :cond_2d

    goto :goto_11

    :cond_2d
    const/16 v17, 0x0

    goto :goto_12

    :cond_2e
    :goto_11
    const/16 v17, 0x1

    :goto_12
    move/from16 v2, v17

    .line 2882
    .local v2, "otherSideInvariable":Z
    if-nez v2, :cond_2f

    .line 2883
    const/16 v29, 0x8

    .line 2884
    const/16 v30, 0x5

    .line 2886
    .end local v2    # "otherSideInvariable":Z
    :cond_2f
    move/from16 v17, p5

    move-object/from16 v35, v1

    move v2, v3

    move-object/from16 v27, v4

    move-object/from16 p13, v7

    move-object v0, v9

    move/from16 p5, v11

    move-object/from16 v9, p7

    move v11, v6

    goto/16 :goto_15

    .line 2887
    .end local v33    # "numConnections":I
    .end local p5    # "applyCentering":Z
    .local v2, "applyCentering":Z
    .restart local v8    # "numConnections":I
    :cond_30
    move/from16 p5, v2

    move/from16 v33, v8

    move/from16 v8, p23

    .end local v2    # "applyCentering":Z
    .end local v8    # "numConnections":I
    .restart local v33    # "numConnections":I
    .restart local p5    # "applyCentering":Z
    const/16 v29, 0x5

    .line 2888
    if-lez v25, :cond_31

    .line 2889
    const/16 v30, 0x5

    move/from16 v17, p5

    move-object/from16 v35, v1

    move v2, v3

    move-object/from16 v27, v4

    move-object/from16 p13, v7

    move-object v0, v9

    move/from16 p5, v11

    move-object/from16 v9, p7

    move v11, v6

    goto/16 :goto_15

    .line 2890
    :cond_31
    if-nez v25, :cond_34

    if-nez v19, :cond_34

    .line 2891
    if-nez p20, :cond_32

    .line 2892
    const/16 v30, 0x8

    move/from16 v17, p5

    move-object/from16 v35, v1

    move v2, v3

    move-object/from16 v27, v4

    move-object/from16 p13, v7

    move-object v0, v9

    move/from16 p5, v11

    move-object/from16 v9, p7

    move v11, v6

    goto/16 :goto_15

    .line 2894
    :cond_32
    if-eq v4, v12, :cond_33

    if-eq v1, v12, :cond_33

    .line 2895
    const/4 v2, 0x4

    move/from16 v29, v2

    .end local v29    # "rangeCheckStrength":I
    .local v2, "rangeCheckStrength":I
    goto :goto_13

    .line 2897
    .end local v2    # "rangeCheckStrength":I
    .restart local v29    # "rangeCheckStrength":I
    :cond_33
    const/4 v2, 0x5

    move/from16 v29, v2

    .line 2899
    :goto_13
    const/16 v30, 0x4

    move/from16 v17, p5

    move-object/from16 v35, v1

    move v2, v3

    move-object/from16 v27, v4

    move-object/from16 p13, v7

    move-object v0, v9

    move/from16 p5, v11

    move-object/from16 v9, p7

    move v11, v6

    goto/16 :goto_15

    .line 2929
    :cond_34
    move/from16 v17, p5

    move-object/from16 v35, v1

    move v2, v3

    move-object/from16 v27, v4

    move-object/from16 p13, v7

    move-object v0, v9

    move/from16 p5, v11

    move-object/from16 v9, p7

    move v11, v6

    goto/16 :goto_15

    .line 2857
    .end local v3    # "applyRangeCheck":Z
    .end local v33    # "numConnections":I
    .restart local v8    # "numConnections":I
    .restart local p13    # "applyRangeCheck":Z
    :cond_35
    move/from16 v33, v8

    move/from16 v8, p23

    .end local v8    # "numConnections":I
    .restart local v33    # "numConnections":I
    move/from16 v17, p5

    move/from16 v2, p13

    move-object/from16 v35, v1

    move-object/from16 v27, v4

    move-object/from16 p13, v7

    move-object v0, v9

    move/from16 p5, v11

    move-object/from16 v9, p7

    move v11, v6

    goto/16 :goto_15

    .line 2906
    .end local v15    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v33    # "numConnections":I
    .end local p13    # "applyRangeCheck":Z
    .local v2, "applyRangeCheck":Z
    .restart local v8    # "numConnections":I
    .restart local v27    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_36
    move/from16 p13, v2

    move/from16 v33, v8

    move-object/from16 v15, v27

    move/from16 v8, p23

    .end local v2    # "applyRangeCheck":Z
    .end local v8    # "numConnections":I
    .end local v27    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v15    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v33    # "numConnections":I
    .restart local p13    # "applyRangeCheck":Z
    const/16 v17, 0x1

    .line 2907
    .end local p5    # "applyCentering":Z
    .local v17, "applyCentering":Z
    const/16 v26, 0x1

    .line 2910
    .end local p13    # "applyRangeCheck":Z
    .restart local v26    # "applyRangeCheck":Z
    iget-boolean v2, v15, Landroid/support/constraint/solver/SolverVariable;->isFinalValue:Z

    if-eqz v2, :cond_3a

    iget-boolean v2, v9, Landroid/support/constraint/solver/SolverVariable;->isFinalValue:Z

    if-eqz v2, :cond_3a

    .line 2911
    invoke-virtual/range {p10 .. p10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v22

    .line 2912
    invoke-virtual/range {p11 .. p11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v27

    const/16 v34, 0x8

    .line 2911
    move-object v3, v1

    .end local v1    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v3, "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v1, p1

    move-object v2, v7

    move-object/from16 v35, v3

    move/from16 p5, v11

    move-object/from16 v11, p6

    .end local v3    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "matchConstraintDefault":I
    .local v35, "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local p5, "matchConstraintDefault":I
    move-object v3, v15

    move-object v0, v4

    .end local v4    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v0, "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v4, v22

    move/from16 v5, p16

    move v11, v6

    .end local v6    # "wrapStrength":I
    .local v11, "wrapStrength":I
    move-object v6, v9

    move-object/from16 p13, v7

    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .local p13, "begin":Landroid/support/constraint/solver/SolverVariable;
    move-object v7, v14

    move/from16 v8, v27

    move-object/from16 v27, v0

    move-object v0, v9

    .end local v9    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v0, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v27, "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v9, v34

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2913
    if-eqz p3, :cond_38

    if-eqz v18, :cond_38

    .line 2914
    const/4 v1, 0x0

    .line 2915
    .local v1, "margin":I
    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_37

    .line 2916
    invoke-virtual/range {p11 .. p11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 2918
    :cond_37
    move-object/from16 v9, p7

    if-eq v0, v9, :cond_39

    .line 2922
    invoke-virtual {v10, v9, v14, v1, v11}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_14

    .line 2913
    .end local v1    # "margin":I
    :cond_38
    move-object/from16 v9, p7

    .line 2925
    :cond_39
    :goto_14
    return-void

    .line 2910
    .end local v0    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v27    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v35    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local p5    # "matchConstraintDefault":I
    .end local p13    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .local v1, "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v4    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "wrapStrength":I
    .restart local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v9    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v11, "matchConstraintDefault":I
    :cond_3a
    move-object/from16 v35, v1

    move-object/from16 v27, v4

    move-object/from16 p13, v7

    move-object v0, v9

    move/from16 p5, v11

    move-object/from16 v9, p7

    move v11, v6

    .line 2929
    .end local v1    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v4    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v6    # "wrapStrength":I
    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v9    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v0    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v11, "wrapStrength":I
    .restart local v27    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v35    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local p5    # "matchConstraintDefault":I
    .restart local p13    # "begin":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v2, v26

    .end local v26    # "applyRangeCheck":Z
    .restart local v2    # "applyRangeCheck":Z
    :goto_15
    if-eqz v2, :cond_3b

    if-ne v15, v0, :cond_3b

    move-object/from16 v8, v27

    .end local v27    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v8, "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eq v8, v12, :cond_3c

    .line 2931
    const/4 v2, 0x0

    .line 2932
    const/16 v23, 0x0

    move/from16 v1, v23

    move/from16 v23, v2

    goto :goto_16

    .line 2929
    .end local v8    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v27    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3b
    move-object/from16 v8, v27

    .line 2935
    .end local v27    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3c
    move/from16 v1, v23

    move/from16 v23, v2

    .end local v2    # "applyRangeCheck":Z
    .local v1, "applyBoundsCheck":Z
    .local v23, "applyRangeCheck":Z
    :goto_16
    if-eqz v17, :cond_3f

    .line 2936
    if-nez v21, :cond_3d

    if-nez p18, :cond_3d

    if-nez p20, :cond_3d

    move v7, v11

    move-object/from16 v11, p6

    .end local v11    # "wrapStrength":I
    .local v7, "wrapStrength":I
    if-ne v15, v11, :cond_3e

    if-ne v0, v9, :cond_3e

    .line 2939
    const/16 v2, 0x8

    .line 2940
    .end local v31    # "centeringStrength":I
    .local v2, "centeringStrength":I
    const/16 v3, 0x8

    .line 2941
    .end local v29    # "rangeCheckStrength":I
    .local v3, "rangeCheckStrength":I
    const/4 v1, 0x0

    .line 2942
    const/4 v4, 0x0

    move/from16 v27, v1

    move/from16 v31, v2

    move/from16 v29, v3

    move/from16 v26, v4

    .end local p3    # "parentWrapContent":Z
    .local v4, "parentWrapContent":Z
    goto :goto_17

    .line 2936
    .end local v2    # "centeringStrength":I
    .end local v3    # "rangeCheckStrength":I
    .end local v4    # "parentWrapContent":Z
    .end local v7    # "wrapStrength":I
    .restart local v11    # "wrapStrength":I
    .restart local v29    # "rangeCheckStrength":I
    .restart local v31    # "centeringStrength":I
    .restart local p3    # "parentWrapContent":Z
    :cond_3d
    move v7, v11

    move-object/from16 v11, p6

    .line 2944
    .end local v11    # "wrapStrength":I
    .restart local v7    # "wrapStrength":I
    :cond_3e
    move/from16 v26, p3

    move/from16 v27, v1

    .end local v1    # "applyBoundsCheck":Z
    .end local p3    # "parentWrapContent":Z
    .local v26, "parentWrapContent":Z
    .local v27, "applyBoundsCheck":Z
    :goto_17
    invoke-virtual/range {p10 .. p10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 2945
    invoke-virtual/range {p11 .. p11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    .line 2944
    move-object/from16 v1, p1

    move-object/from16 v2, p13

    move-object v3, v15

    const/4 v6, 0x0

    move/from16 v5, p16

    const/4 v13, 0x0

    move-object v6, v0

    move v13, v7

    .end local v7    # "wrapStrength":I
    .local v13, "wrapStrength":I
    move-object v7, v14

    move-object/from16 v36, v8

    .end local v8    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v36, "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v8, v34

    move/from16 v9, v31

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    move/from16 v1, v27

    goto :goto_18

    .line 2935
    .end local v13    # "wrapStrength":I
    .end local v26    # "parentWrapContent":Z
    .end local v27    # "applyBoundsCheck":Z
    .end local v36    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v1    # "applyBoundsCheck":Z
    .restart local v8    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v11    # "wrapStrength":I
    .restart local p3    # "parentWrapContent":Z
    :cond_3f
    move-object/from16 v36, v8

    move v13, v11

    move-object/from16 v11, p6

    .end local v8    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "wrapStrength":I
    .restart local v13    # "wrapStrength":I
    .restart local v36    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v26, p3

    .line 2948
    .end local p3    # "parentWrapContent":Z
    .restart local v26    # "parentWrapContent":Z
    :goto_18
    move-object/from16 v3, p0

    move-object/from16 v2, v36

    .end local v36    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_40

    invoke-virtual/range {p11 .. p11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasDependents()Z

    move-result v4

    if-nez v4, :cond_40

    .line 2949
    return-void

    .line 2952
    :cond_40
    if-eqz v23, :cond_44

    .line 2953
    if-eqz v26, :cond_42

    if-eq v15, v0, :cond_42

    if-nez v21, :cond_42

    .line 2955
    instance-of v4, v2, Landroid/support/constraint/solver/widgets/Barrier;

    if-nez v4, :cond_41

    move-object/from16 v4, v35

    .end local v35    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v4, "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v5, v4, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v5, :cond_43

    goto :goto_19

    .end local v4    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v35    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_41
    move-object/from16 v4, v35

    .line 2956
    .end local v35    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v4    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_19
    const/4 v5, 0x6

    .end local v29    # "rangeCheckStrength":I
    .local v5, "rangeCheckStrength":I
    goto :goto_1a

    .line 2953
    .end local v4    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v5    # "rangeCheckStrength":I
    .restart local v29    # "rangeCheckStrength":I
    .restart local v35    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_42
    move-object/from16 v4, v35

    .line 2959
    .end local v35    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v4    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_43
    move/from16 v5, v29

    .end local v29    # "rangeCheckStrength":I
    .restart local v5    # "rangeCheckStrength":I
    :goto_1a
    invoke-virtual/range {p10 .. p10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    move-object/from16 v7, p13

    .end local p13    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .local v7, "begin":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v10, v7, v15, v6, v5}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2960
    invoke-virtual/range {p11 .. p11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v10, v14, v0, v6, v5}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    move/from16 v29, v5

    goto :goto_1b

    .line 2952
    .end local v4    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v5    # "rangeCheckStrength":I
    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v29    # "rangeCheckStrength":I
    .restart local v35    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local p13    # "begin":Landroid/support/constraint/solver/SolverVariable;
    :cond_44
    move-object/from16 v7, p13

    move-object/from16 v4, v35

    .line 2963
    .end local v35    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local p13    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v4    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    :goto_1b
    if-eqz v26, :cond_45

    if-eqz p21, :cond_45

    instance-of v5, v2, Landroid/support/constraint/solver/widgets/Barrier;

    if-nez v5, :cond_45

    instance-of v5, v4, Landroid/support/constraint/solver/widgets/Barrier;

    if-nez v5, :cond_45

    .line 2967
    const/16 v30, 0x6

    .line 2968
    const/16 v29, 0x6

    .line 2969
    const/4 v1, 0x1

    move/from16 v5, v29

    move/from16 v6, v30

    goto :goto_1c

    .line 2972
    :cond_45
    move/from16 v5, v29

    move/from16 v6, v30

    .end local v29    # "rangeCheckStrength":I
    .end local v30    # "boundsCheckStrength":I
    .restart local v5    # "rangeCheckStrength":I
    .local v6, "boundsCheckStrength":I
    :goto_1c
    if-eqz v1, :cond_51

    .line 2973
    if-eqz v28, :cond_4e

    if-eqz p20, :cond_46

    if-eqz p4, :cond_4e

    .line 2974
    :cond_46
    move v8, v6

    .line 2975
    .local v8, "strength":I
    if-eq v2, v12, :cond_47

    if-ne v4, v12, :cond_48

    .line 2976
    :cond_47
    const/4 v8, 0x6

    .line 2978
    :cond_48
    instance-of v9, v2, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v9, :cond_49

    instance-of v9, v4, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v9, :cond_4a

    .line 2979
    :cond_49
    const/4 v8, 0x5

    .line 2981
    :cond_4a
    instance-of v9, v2, Landroid/support/constraint/solver/widgets/Barrier;

    if-nez v9, :cond_4b

    instance-of v9, v4, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v9, :cond_4c

    .line 2982
    :cond_4b
    const/4 v8, 0x5

    .line 2984
    :cond_4c
    if-eqz p20, :cond_4d

    .line 2985
    const/4 v8, 0x5

    .line 2987
    :cond_4d
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2990
    .end local v8    # "strength":I
    :cond_4e
    if-eqz v26, :cond_50

    .line 2991
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2992
    if-eqz p17, :cond_50

    if-nez p20, :cond_50

    if-eq v2, v12, :cond_4f

    if-ne v4, v12, :cond_50

    .line 2995
    :cond_4f
    const/4 v6, 0x4

    .line 2998
    :cond_50
    invoke-virtual/range {p10 .. p10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    invoke-virtual {v10, v7, v15, v8, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2999
    invoke-virtual/range {p11 .. p11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v10, v14, v0, v8, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 3002
    :cond_51
    if-eqz v26, :cond_53

    .line 3003
    const/4 v8, 0x0

    .line 3004
    .local v8, "margin":I
    if-ne v11, v15, :cond_52

    .line 3005
    invoke-virtual/range {p10 .. p10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    .line 3007
    :cond_52
    if-eq v15, v11, :cond_53

    .line 3011
    invoke-virtual {v10, v7, v11, v8, v13}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 3015
    .end local v8    # "margin":I
    :cond_53
    if-eqz v26, :cond_57

    if-eqz v21, :cond_57

    move-object v8, v15

    .end local v15    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v8, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    if-nez p14, :cond_56

    if-nez v19, :cond_56

    .line 3019
    if-eqz v21, :cond_55

    move/from16 v9, p5

    const/4 v15, 0x3

    .end local p5    # "matchConstraintDefault":I
    .local v9, "matchConstraintDefault":I
    if-ne v9, v15, :cond_54

    .line 3020
    move/from16 p3, v1

    const/16 v1, 0x8

    const/4 v15, 0x0

    .end local v1    # "applyBoundsCheck":Z
    .local p3, "applyBoundsCheck":Z
    invoke-virtual {v10, v14, v7, v15, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_1f

    .line 3019
    .end local p3    # "applyBoundsCheck":Z
    .restart local v1    # "applyBoundsCheck":Z
    :cond_54
    move/from16 p3, v1

    const/4 v15, 0x0

    .end local v1    # "applyBoundsCheck":Z
    .restart local p3    # "applyBoundsCheck":Z
    goto :goto_1d

    .end local v9    # "matchConstraintDefault":I
    .end local p3    # "applyBoundsCheck":Z
    .restart local v1    # "applyBoundsCheck":Z
    .restart local p5    # "matchConstraintDefault":I
    :cond_55
    move/from16 v9, p5

    move/from16 p3, v1

    const/4 v15, 0x0

    .line 3022
    .end local v1    # "applyBoundsCheck":Z
    .end local p5    # "matchConstraintDefault":I
    .restart local v9    # "matchConstraintDefault":I
    .restart local p3    # "applyBoundsCheck":Z
    :goto_1d
    invoke-virtual {v10, v14, v7, v15, v13}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_1f

    .line 3015
    .end local v9    # "matchConstraintDefault":I
    .end local p3    # "applyBoundsCheck":Z
    .restart local v1    # "applyBoundsCheck":Z
    .restart local p5    # "matchConstraintDefault":I
    :cond_56
    move/from16 v9, p5

    move/from16 p3, v1

    .end local v1    # "applyBoundsCheck":Z
    .end local p5    # "matchConstraintDefault":I
    .restart local v9    # "matchConstraintDefault":I
    .restart local p3    # "applyBoundsCheck":Z
    goto :goto_1f

    .end local v8    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v9    # "matchConstraintDefault":I
    .end local p3    # "applyBoundsCheck":Z
    .restart local v1    # "applyBoundsCheck":Z
    .restart local v15    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local p5    # "matchConstraintDefault":I
    :cond_57
    move/from16 v9, p5

    move/from16 p3, v1

    move-object v8, v15

    .end local v1    # "applyBoundsCheck":Z
    .end local v15    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local p5    # "matchConstraintDefault":I
    .restart local v8    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v9    # "matchConstraintDefault":I
    .restart local p3    # "applyBoundsCheck":Z
    goto :goto_1f

    .line 2815
    .end local v0    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v2    # "beginWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v4    # "endWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v5    # "rangeCheckStrength":I
    .end local v13    # "wrapStrength":I
    .end local v17    # "applyCentering":Z
    .end local v23    # "applyRangeCheck":Z
    .end local v26    # "parentWrapContent":Z
    .end local v28    # "applyStrongChecks":Z
    .end local v31    # "centeringStrength":I
    .end local v32    # "isEndConnected":Z
    .end local v33    # "numConnections":I
    .local v6, "wrapStrength":I
    .local v8, "numConnections":I
    .local v9, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v11, "isBeginConnected":Z
    .local v12, "isEndConnected":Z
    .local v24, "matchConstraintDefault":I
    .local v27, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local p3, "parentWrapContent":Z
    :cond_58
    move v13, v6

    move/from16 v33, v8

    move/from16 v32, v12

    move-object/from16 v8, v27

    move-object/from16 v37, v3

    move-object v3, v0

    move-object v0, v9

    move/from16 v9, v24

    move/from16 v24, v11

    move-object/from16 v11, v37

    .line 3027
    .end local v6    # "wrapStrength":I
    .end local v11    # "isBeginConnected":Z
    .end local v12    # "isEndConnected":Z
    .end local v27    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v0    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v8, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v9, "matchConstraintDefault":I
    .restart local v13    # "wrapStrength":I
    .local v24, "isBeginConnected":Z
    .restart local v32    # "isEndConnected":Z
    .restart local v33    # "numConnections":I
    :goto_1e
    move/from16 v26, p3

    .end local p3    # "parentWrapContent":Z
    .restart local v26    # "parentWrapContent":Z
    :goto_1f
    if-eqz v26, :cond_5c

    if-eqz v18, :cond_5c

    .line 3028
    const/4 v1, 0x0

    .line 3029
    .local v1, "margin":I
    move-object/from16 v4, p11

    iget-object v2, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_59

    .line 3030
    invoke-virtual/range {p11 .. p11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 3032
    :cond_59
    move-object/from16 v5, p7

    if-eq v0, v5, :cond_5d

    .line 3033
    iget-boolean v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    if-eqz v2, :cond_5b

    iget-boolean v2, v14, Landroid/support/constraint/solver/SolverVariable;->isFinalValue:Z

    if-eqz v2, :cond_5b

    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v2, :cond_5b

    .line 3034
    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 3035
    .local v2, "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    if-eqz p2, :cond_5a

    .line 3036
    invoke-virtual {v2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addHorizontalWrapMaxVariable(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    goto :goto_20

    .line 3038
    :cond_5a
    invoke-virtual {v2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addVerticalWrapMaxVariable(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    .line 3040
    :goto_20
    return-void

    .line 3045
    .end local v2    # "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    :cond_5b
    invoke-virtual {v10, v5, v14, v1, v13}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_21

    .line 3027
    .end local v1    # "margin":I
    :cond_5c
    move-object/from16 v5, p7

    move-object/from16 v4, p11

    .line 3048
    :cond_5d
    :goto_21
    return-void

    .line 2759
    .end local v0    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v13    # "wrapStrength":I
    .end local v26    # "parentWrapContent":Z
    .end local v32    # "isEndConnected":Z
    .end local v33    # "numConnections":I
    .local v8, "numConnections":I
    .local v9, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v11    # "isBeginConnected":Z
    .restart local v12    # "isEndConnected":Z
    .local v24, "matchConstraintDefault":I
    .restart local v27    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local p3    # "parentWrapContent":Z
    :cond_5e
    move-object/from16 v5, p7

    move-object/from16 v4, p11

    move-object v3, v0

    move/from16 v33, v8

    move-object v0, v9

    move/from16 v32, v12

    move/from16 v9, v24

    move-object/from16 v8, v27

    const/4 v1, 0x0

    const/4 v2, 0x2

    move/from16 v24, v11

    move-object/from16 v11, p6

    .line 2765
    .end local v11    # "isBeginConnected":Z
    .end local v12    # "isEndConnected":Z
    .end local v27    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v0    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v8, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v9, "matchConstraintDefault":I
    .local v24, "isBeginConnected":Z
    .restart local v32    # "isEndConnected":Z
    .restart local v33    # "numConnections":I
    :goto_22
    move/from16 v6, v33

    .end local v33    # "numConnections":I
    .local v6, "numConnections":I
    if-ge v6, v2, :cond_63

    if-eqz p3, :cond_63

    if-eqz v18, :cond_63

    .line 2766
    const/16 v2, 0x8

    invoke-virtual {v10, v7, v11, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2767
    if-nez p2, :cond_60

    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v2, :cond_5f

    goto :goto_23

    :cond_5f
    const/4 v13, 0x0

    goto :goto_24

    :cond_60
    :goto_23
    const/4 v13, 0x1

    :goto_24
    move v2, v13

    .line 2768
    .local v2, "applyEnd":Z
    if-nez p2, :cond_62

    iget-object v12, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v12, :cond_62

    .line 2771
    iget-object v12, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2772
    .local v12, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v15, 0x0

    cmpl-float v13, v13, v15

    if-eqz v13, :cond_61

    iget-object v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v13, v13, v1

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v15, :cond_61

    iget-object v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v15, 0x1

    aget-object v13, v13, v15

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v15, :cond_61

    .line 2775
    const/4 v2, 0x1

    goto :goto_25

    .line 2777
    :cond_61
    const/4 v2, 0x0

    .line 2780
    .end local v12    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_62
    :goto_25
    if-eqz v2, :cond_63

    .line 2784
    const/16 v12, 0x8

    invoke-virtual {v10, v5, v14, v1, v12}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2787
    .end local v2    # "applyEnd":Z
    :cond_63
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isChainHead(I)Z
    .locals 4
    .param p1, "orientation"    # I

    .line 2143
    mul-int/lit8 v0, p1, 0x2

    .line 2144
    .local v0, "offset":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v2, v0

    if-eq v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-object v1, v2, v1

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public addChildrenToSolverByDependency(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Ljava/util/HashSet;IZ)V
    .locals 9
    .param p1, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p4, "orientation"    # I
    .param p5, "addSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;",
            "Landroid/support/constraint/solver/LinearSystem;",
            "Ljava/util/HashSet<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;IZ)V"
        }
    .end annotation

    .line 3246
    .local p3, "widgets":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    if-eqz p5, :cond_1

    .line 3247
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3248
    return-void

    .line 3250
    :cond_0
    invoke-static {p1, p2, p0}, Landroid/support/constraint/solver/widgets/Optimizer;->checkMatchParent(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 3251
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3252
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addToSolver(Landroid/support/constraint/solver/LinearSystem;Z)V

    .line 3254
    :cond_1
    if-nez p4, :cond_4

    .line 3255
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    .line 3256
    .local v0, "dependents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/constraint/solver/widgets/ConstraintAnchor;>;"
    if-eqz v0, :cond_2

    .line 3257
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 3258
    .local v2, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3259
    .end local v2    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_0

    .line 3261
    :cond_2
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    .line 3262
    if-eqz v0, :cond_3

    .line 3263
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 3264
    .restart local v2    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3265
    .end local v2    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_1

    .line 3267
    .end local v0    # "dependents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/constraint/solver/widgets/ConstraintAnchor;>;"
    :cond_3
    goto/16 :goto_5

    .line 3268
    :cond_4
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    .line 3269
    .restart local v0    # "dependents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/constraint/solver/widgets/ConstraintAnchor;>;"
    if-eqz v0, :cond_5

    .line 3270
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 3271
    .restart local v2    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3272
    .end local v2    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_2

    .line 3274
    :cond_5
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    .line 3275
    if-eqz v0, :cond_6

    .line 3276
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 3277
    .restart local v2    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3278
    .end local v2    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_3

    .line 3280
    :cond_6
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    .line 3281
    if-eqz v0, :cond_7

    .line 3282
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 3283
    .restart local v2    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Ljava/util/HashSet;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3284
    .end local v2    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_4

    .line 3288
    .end local v0    # "dependents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/constraint/solver/widgets/ConstraintAnchor;>;"
    .end local p0    # "this":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_7
    :goto_5
    return-void

    .line 3283
    .end local p1    # "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .end local p2    # "system":Landroid/support/constraint/solver/LinearSystem;
    .end local p3    # "widgets":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .end local p4    # "orientation":I
    .end local p5    # "addSelf":Z
    :catchall_0
    move-exception p1

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method addFirst()Z
    .locals 1

    .line 2519
    instance-of v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;Z)V
    .locals 73
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "optimize"    # Z

    .line 2168
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v13

    .line 2169
    .local v13, "left":Landroid/support/constraint/solver/SolverVariable;
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v12

    .line 2170
    .local v12, "right":Landroid/support/constraint/solver/SolverVariable;
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v11

    .line 2171
    .local v11, "top":Landroid/support/constraint/solver/SolverVariable;
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v10

    .line 2172
    .local v10, "bottom":Landroid/support/constraint/solver/SolverVariable;
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    .line 2174
    .local v9, "baseline":Landroid/support/constraint/solver/SolverVariable;
    const/4 v0, 0x0

    .line 2175
    .local v0, "horizontalParentWrapContent":Z
    const/4 v1, 0x0

    .line 2176
    .local v1, "verticalParentWrapContent":Z
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v8, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 2177
    if-eqz v2, :cond_0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v5

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 2178
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v8

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v1, v2

    move v4, v0

    move v3, v1

    goto :goto_2

    .line 2176
    :cond_2
    move v4, v0

    move v3, v1

    .line 2181
    .end local v0    # "horizontalParentWrapContent":Z
    .end local v1    # "verticalParentWrapContent":Z
    .local v3, "verticalParentWrapContent":Z
    .local v4, "horizontalParentWrapContent":Z
    :goto_2
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasDependencies()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aget-boolean v1, v0, v5

    if-nez v1, :cond_3

    aget-boolean v0, v0, v8

    if-nez v0, :cond_3

    .line 2183
    return-void

    .line 2186
    :cond_3
    iget-boolean v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    if-nez v0, :cond_4

    iget-boolean v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    if-eqz v1, :cond_a

    .line 2194
    :cond_4
    if-eqz v0, :cond_6

    .line 2195
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v14, v13, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 2196
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v12, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 2197
    if-eqz v4, :cond_6

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_6

    .line 2198
    iget-boolean v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    if-eqz v1, :cond_5

    .line 2199
    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2200
    .local v0, "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addVerticalWrapMinVariable(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    .line 2201
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addHorizontalWrapMaxVariable(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    .line 2202
    .end local v0    # "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    goto :goto_3

    .line 2203
    :cond_5
    const/4 v1, 0x5

    .line 2204
    .local v1, "wrapStrength":I
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {v14, v0, v12, v5, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2208
    .end local v1    # "wrapStrength":I
    :cond_6
    :goto_3
    iget-boolean v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    if-eqz v0, :cond_9

    .line 2209
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v14, v11, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 2210
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v10, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 2211
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasDependents()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2212
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 2214
    :cond_7
    if-eqz v3, :cond_9

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_9

    .line 2215
    iget-boolean v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    if-eqz v1, :cond_8

    .line 2216
    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 2217
    .restart local v0    # "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addVerticalWrapMinVariable(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    .line 2218
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addVerticalWrapMaxVariable(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    .line 2219
    .end local v0    # "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    goto :goto_4

    .line 2220
    :cond_8
    const/4 v1, 0x5

    .line 2221
    .restart local v1    # "wrapStrength":I
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {v14, v0, v10, v5, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2225
    .end local v1    # "wrapStrength":I
    :cond_9
    :goto_4
    iget-boolean v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    if-eqz v0, :cond_a

    .line 2226
    iput-boolean v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 2227
    iput-boolean v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 2233
    return-void

    .line 2237
    :cond_a
    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    const-wide/16 v6, 0x1

    if-eqz v0, :cond_b

    .line 2238
    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v16, v3

    .end local v3    # "verticalParentWrapContent":Z
    .local v16, "verticalParentWrapContent":Z
    iget-wide v2, v0, Landroid/support/constraint/solver/Metrics;->widgets:J

    add-long/2addr v2, v6

    iput-wide v2, v0, Landroid/support/constraint/solver/Metrics;->widgets:J

    goto :goto_5

    .line 2237
    .end local v16    # "verticalParentWrapContent":Z
    .restart local v3    # "verticalParentWrapContent":Z
    :cond_b
    move/from16 v16, v3

    .line 2246
    .end local v3    # "verticalParentWrapContent":Z
    .restart local v16    # "verticalParentWrapContent":Z
    :goto_5
    if-eqz p2, :cond_f

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v0, :cond_f

    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v1, :cond_f

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_f

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_f

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_f

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_f

    .line 2250
    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v0, :cond_c

    .line 2251
    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v1, v0, Landroid/support/constraint/solver/Metrics;->graphSolved:J

    add-long/2addr v1, v6

    iput-wide v1, v0, Landroid/support/constraint/solver/Metrics;->graphSolved:J

    .line 2253
    :cond_c
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v13, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 2254
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v12, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 2255
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v11, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 2256
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v10, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 2257
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v9, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 2258
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_e

    .line 2259
    if-eqz v4, :cond_d

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2260
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 2261
    .local v0, "parentMax":Landroid/support/constraint/solver/SolverVariable;
    const/16 v1, 0x8

    invoke-virtual {v14, v0, v12, v5, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2263
    .end local v0    # "parentMax":Landroid/support/constraint/solver/SolverVariable;
    :cond_d
    if-eqz v16, :cond_e

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2264
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 2265
    .restart local v0    # "parentMax":Landroid/support/constraint/solver/SolverVariable;
    const/16 v1, 0x8

    invoke-virtual {v14, v0, v10, v5, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2268
    .end local v0    # "parentMax":Landroid/support/constraint/solver/SolverVariable;
    :cond_e
    iput-boolean v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 2269
    iput-boolean v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 2270
    return-void

    .line 2272
    :cond_f
    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v0, :cond_10

    .line 2273
    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v1, v0, Landroid/support/constraint/solver/Metrics;->linearSolved:J

    add-long/2addr v1, v6

    iput-wide v1, v0, Landroid/support/constraint/solver/Metrics;->linearSolved:J

    .line 2276
    :cond_10
    const/4 v0, 0x0

    .line 2277
    .local v0, "inHorizontalChain":Z
    const/4 v1, 0x0

    .line 2279
    .local v1, "inVerticalChain":Z
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v2, :cond_15

    .line 2281
    invoke-direct {v15, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2282
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v15, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 2283
    const/4 v0, 0x1

    goto :goto_6

    .line 2285
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    .line 2289
    :goto_6
    invoke-direct {v15, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2290
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v15, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 2291
    const/4 v1, 0x1

    goto :goto_7

    .line 2293
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v1

    .line 2296
    :goto_7
    if-nez v0, :cond_13

    if-eqz v4, :cond_13

    iget v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_13

    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v2, :cond_13

    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v2, :cond_13

    .line 2301
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 2302
    .local v2, "parentRight":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v14, v2, v12, v5, v8}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2305
    .end local v2    # "parentRight":Landroid/support/constraint/solver/SolverVariable;
    :cond_13
    if-nez v1, :cond_14

    if-eqz v16, :cond_14

    iget v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_14

    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v2, :cond_14

    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v2, :cond_14

    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v2, :cond_14

    .line 2310
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 2311
    .local v2, "parentBottom":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v14, v2, v10, v5, v8}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2315
    .end local v2    # "parentBottom":Landroid/support/constraint/solver/SolverVariable;
    :cond_14
    move/from16 v56, v0

    move/from16 v57, v1

    goto :goto_8

    .line 2279
    :cond_15
    move/from16 v56, v0

    move/from16 v57, v1

    .line 2315
    .end local v0    # "inHorizontalChain":Z
    .end local v1    # "inVerticalChain":Z
    .local v56, "inHorizontalChain":Z
    .local v57, "inVerticalChain":Z
    :goto_8
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2316
    .local v0, "width":I
    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_16

    .line 2317
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 2319
    :cond_16
    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 2320
    .local v1, "height":I
    iget v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v1, v2, :cond_17

    .line 2321
    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 2325
    :cond_17
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v5

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v3, :cond_18

    const/4 v2, 0x1

    goto :goto_9

    :cond_18
    const/4 v2, 0x0

    :goto_9
    move v3, v2

    .line 2327
    .local v3, "horizontalDimensionFixed":Z
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v8

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v6, :cond_19

    const/4 v2, 0x1

    goto :goto_a

    :cond_19
    const/4 v2, 0x0

    .line 2332
    .local v2, "verticalDimensionFixed":Z
    :goto_a
    const/4 v6, 0x0

    .line 2333
    .local v6, "useRatio":Z
    iget v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    iput v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2334
    iget v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    iput v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2336
    iget v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 2337
    .local v8, "matchConstraintDefaultWidth":I
    iget v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 2339
    .local v5, "matchConstraintDefaultHeight":I
    const/16 v17, 0x0

    move/from16 v21, v0

    .end local v0    # "width":I
    .local v21, "width":I
    cmpl-float v7, v7, v17

    if-lez v7, :cond_21

    iget v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v0, 0x8

    if-eq v7, v0, :cond_21

    .line 2340
    const/4 v6, 0x1

    .line 2341
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v7, :cond_1a

    if-nez v8, :cond_1a

    .line 2343
    const/4 v8, 0x3

    .line 2345
    :cond_1a
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aget-object v0, v0, v7

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v7, :cond_1b

    if-nez v5, :cond_1b

    .line 2347
    const/4 v5, 0x3

    .line 2350
    :cond_1b
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v17, v1

    .end local v1    # "height":I
    .local v17, "height":I
    const/4 v1, 0x3

    if-ne v0, v7, :cond_1c

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aget-object v0, v0, v7

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v7, :cond_1c

    if-ne v8, v1, :cond_1c

    if-ne v5, v1, :cond_1c

    .line 2354
    move/from16 v0, v16

    .end local v16    # "verticalParentWrapContent":Z
    .local v0, "verticalParentWrapContent":Z
    invoke-virtual {v15, v4, v0, v3, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setupDimensionRatio(ZZZZ)V

    move/from16 v23, v0

    goto/16 :goto_b

    .line 2350
    .end local v0    # "verticalParentWrapContent":Z
    .restart local v16    # "verticalParentWrapContent":Z
    :cond_1c
    move/from16 v0, v16

    .line 2355
    .end local v16    # "verticalParentWrapContent":Z
    .restart local v0    # "verticalParentWrapContent":Z
    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v7, v7, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v1, :cond_1e

    const/4 v1, 0x3

    if-ne v8, v1, :cond_1e

    .line 2357
    const/4 v1, 0x0

    iput v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2358
    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iget v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    int-to-float v7, v7

    mul-float v1, v1, v7

    float-to-int v1, v1

    .line 2359
    .end local v21    # "width":I
    .local v1, "width":I
    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v16, 0x1

    aget-object v7, v7, v16

    move/from16 v23, v0

    .end local v0    # "verticalParentWrapContent":Z
    .local v23, "verticalParentWrapContent":Z
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v0, :cond_1d

    .line 2360
    const/4 v8, 0x4

    .line 2361
    const/4 v6, 0x0

    move v0, v1

    move/from16 v58, v5

    move/from16 v59, v8

    move/from16 v28, v17

    move v8, v6

    goto/16 :goto_c

    .line 2359
    :cond_1d
    move v0, v1

    move/from16 v58, v5

    move/from16 v59, v8

    move/from16 v28, v17

    move v8, v6

    goto :goto_c

    .line 2355
    .end local v1    # "width":I
    .end local v23    # "verticalParentWrapContent":Z
    .restart local v0    # "verticalParentWrapContent":Z
    .restart local v21    # "width":I
    :cond_1e
    move/from16 v23, v0

    .line 2363
    .end local v0    # "verticalParentWrapContent":Z
    .restart local v23    # "verticalParentWrapContent":Z
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v7, :cond_22

    const/4 v0, 0x3

    if-ne v5, v0, :cond_22

    .line 2365
    iput v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2366
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    .line 2368
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v0, v1

    iput v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2370
    :cond_1f
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v1, v0

    .line 2371
    .end local v17    # "height":I
    .local v1, "height":I
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v7, :cond_20

    .line 2372
    const/4 v5, 0x4

    .line 2373
    const/4 v6, 0x0

    move/from16 v28, v1

    move/from16 v58, v5

    move/from16 v59, v8

    move/from16 v0, v21

    move v8, v6

    goto :goto_c

    .line 2371
    :cond_20
    move/from16 v28, v1

    move/from16 v58, v5

    move/from16 v59, v8

    move/from16 v0, v21

    move v8, v6

    goto :goto_c

    .line 2339
    .end local v23    # "verticalParentWrapContent":Z
    .restart local v16    # "verticalParentWrapContent":Z
    :cond_21
    move/from16 v17, v1

    move/from16 v23, v16

    .line 2378
    .end local v1    # "height":I
    .end local v16    # "verticalParentWrapContent":Z
    .restart local v17    # "height":I
    .restart local v23    # "verticalParentWrapContent":Z
    :cond_22
    :goto_b
    move/from16 v58, v5

    move/from16 v59, v8

    move/from16 v28, v17

    move/from16 v0, v21

    move v8, v6

    .end local v5    # "matchConstraintDefaultHeight":I
    .end local v6    # "useRatio":Z
    .end local v17    # "height":I
    .end local v21    # "width":I
    .local v0, "width":I
    .local v8, "useRatio":Z
    .local v28, "height":I
    .local v58, "matchConstraintDefaultHeight":I
    .local v59, "matchConstraintDefaultWidth":I
    :goto_c
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v5, 0x0

    aput v59, v1, v5

    .line 2379
    const/4 v5, 0x1

    aput v58, v1, v5

    .line 2380
    iput-boolean v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 2382
    if-eqz v8, :cond_24

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-eqz v1, :cond_23

    const/4 v5, -0x1

    if-ne v1, v5, :cond_24

    :cond_23
    const/16 v17, 0x1

    goto :goto_d

    :cond_24
    const/16 v17, 0x0

    .line 2385
    .local v17, "useHorizontalRatio":Z
    :goto_d
    if-eqz v8, :cond_26

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_25

    const/4 v5, -0x1

    if-ne v1, v5, :cond_26

    :cond_25
    const/16 v45, 0x1

    goto :goto_e

    :cond_26
    const/16 v45, 0x0

    .line 2389
    .local v45, "useVerticalRatio":Z
    :goto_e
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v5, :cond_27

    instance-of v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_f

    :cond_27
    const/4 v1, 0x0

    :goto_f
    move/from16 v29, v1

    .line 2391
    .local v29, "wrapContent":Z
    if-eqz v29, :cond_28

    .line 2392
    const/4 v0, 0x0

    move/from16 v60, v0

    goto :goto_10

    .line 2391
    :cond_28
    move/from16 v60, v0

    .line 2395
    .end local v0    # "width":I
    .local v60, "width":I
    :goto_10
    const/4 v0, 0x1

    .line 2396
    .local v0, "applyPosition":Z
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2397
    const/4 v0, 0x0

    move/from16 v30, v0

    goto :goto_11

    .line 2396
    :cond_29
    move/from16 v30, v0

    .line 2400
    .end local v0    # "applyPosition":Z
    .local v30, "applyPosition":Z
    :goto_11
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    const/4 v1, 0x0

    aget-boolean v61, v0, v1

    .line 2401
    .local v61, "isInHorizontalBarrier":Z
    const/4 v1, 0x1

    aget-boolean v62, v0, v1

    .line 2403
    .local v62, "isInVerticalBarrier":Z
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    const/4 v5, 0x2

    const/16 v31, 0x0

    if-eq v0, v5, :cond_32

    iget-boolean v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    if-nez v0, :cond_32

    .line 2404
    if-eqz p2, :cond_2e

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v0, :cond_2e

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_2e

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v0, :cond_2a

    const/16 v6, 0x8

    goto/16 :goto_12

    .line 2411
    :cond_2a
    if-eqz p2, :cond_2d

    .line 2412
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v13, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 2413
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v12, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 2414
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_2c

    .line 2415
    if-eqz v4, :cond_2b

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2b

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2419
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 2420
    .local v0, "parentMax":Landroid/support/constraint/solver/SolverVariable;
    const/16 v6, 0x8

    invoke-virtual {v14, v0, v12, v1, v6}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    move/from16 v63, v2

    move/from16 v65, v3

    move/from16 v66, v4

    move/from16 v67, v8

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v70, v11

    move-object/from16 v71, v12

    move-object/from16 v72, v13

    move/from16 v64, v23

    goto/16 :goto_16

    .line 2415
    .end local v0    # "parentMax":Landroid/support/constraint/solver/SolverVariable;
    :cond_2b
    const/16 v6, 0x8

    move/from16 v63, v2

    move/from16 v65, v3

    move/from16 v66, v4

    move/from16 v67, v8

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v70, v11

    move-object/from16 v71, v12

    move-object/from16 v72, v13

    move/from16 v64, v23

    goto/16 :goto_16

    .line 2414
    :cond_2c
    const/16 v6, 0x8

    move/from16 v63, v2

    move/from16 v65, v3

    move/from16 v66, v4

    move/from16 v67, v8

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v70, v11

    move-object/from16 v71, v12

    move-object/from16 v72, v13

    move/from16 v64, v23

    goto/16 :goto_16

    .line 2411
    :cond_2d
    const/16 v6, 0x8

    move/from16 v63, v2

    move/from16 v65, v3

    move/from16 v66, v4

    move/from16 v67, v8

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v70, v11

    move-object/from16 v71, v12

    move-object/from16 v72, v13

    move/from16 v64, v23

    goto/16 :goto_16

    .line 2404
    :cond_2e
    const/16 v6, 0x8

    .line 2405
    :goto_12
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_2f

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    move-object v7, v0

    goto :goto_13

    :cond_2f
    move-object/from16 v7, v31

    .line 2406
    .local v7, "parentMax":Landroid/support/constraint/solver/SolverVariable;
    :goto_13
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_30

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    goto :goto_14

    :cond_30
    move-object/from16 v0, v31

    :goto_14
    const/16 v16, 0x8

    move-object v6, v0

    .line 2407
    .local v6, "parentMin":Landroid/support/constraint/solver/SolverVariable;
    const/16 v18, 0x1

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/16 v20, 0x0

    aget-boolean v21, v0, v20

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v22, v0, v20

    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move/from16 v27, v2

    .end local v2    # "verticalDimensionFixed":Z
    .local v27, "verticalDimensionFixed":Z
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v32, v2

    iget v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    move/from16 v33, v2

    iget v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v35, v5, v20

    iget v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    const/16 v19, 0x1

    aget-object v0, v0, v19

    move-object/from16 v36, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_31

    const/16 v37, 0x1

    goto :goto_15

    :cond_31
    const/16 v37, 0x0

    :goto_15
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v24, v0

    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v25, v0

    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v63, v27

    move-object/from16 v16, v32

    move/from16 v27, v33

    move/from16 v32, v2

    .end local v27    # "verticalDimensionFixed":Z
    .local v63, "verticalDimensionFixed":Z
    move/from16 v2, v18

    move/from16 v65, v3

    move/from16 v64, v23

    .end local v3    # "horizontalDimensionFixed":Z
    .end local v23    # "verticalParentWrapContent":Z
    .local v64, "verticalParentWrapContent":Z
    .local v65, "horizontalDimensionFixed":Z
    move v3, v4

    move/from16 v66, v4

    .end local v4    # "horizontalParentWrapContent":Z
    .local v66, "horizontalParentWrapContent":Z
    move/from16 v4, v64

    move/from16 v18, v5

    move/from16 v5, v21

    move/from16 v67, v8

    .end local v8    # "useRatio":Z
    .local v67, "useRatio":Z
    move-object/from16 v8, v22

    move-object/from16 v68, v9

    .end local v9    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .local v68, "baseline":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v9, v29

    move-object/from16 v69, v10

    .end local v10    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .local v69, "bottom":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v10, v36

    move-object/from16 v70, v11

    .end local v11    # "top":Landroid/support/constraint/solver/SolverVariable;
    .local v70, "top":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v11, v16

    move-object/from16 v71, v12

    .end local v12    # "right":Landroid/support/constraint/solver/SolverVariable;
    .local v71, "right":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v12, v27

    move-object/from16 v72, v13

    .end local v13    # "left":Landroid/support/constraint/solver/SolverVariable;
    .local v72, "left":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v13, v60

    move/from16 v14, v32

    move/from16 v15, v35

    move/from16 v16, v18

    move/from16 v18, v37

    move/from16 v19, v56

    move/from16 v20, v57

    move/from16 v21, v61

    move/from16 v22, v59

    move/from16 v23, v58

    move/from16 v27, v30

    invoke-direct/range {v0 .. v27}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZZZZLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    .line 2411
    .end local v6    # "parentMin":Landroid/support/constraint/solver/SolverVariable;
    .end local v7    # "parentMax":Landroid/support/constraint/solver/SolverVariable;
    goto :goto_16

    .line 2403
    .end local v63    # "verticalDimensionFixed":Z
    .end local v64    # "verticalParentWrapContent":Z
    .end local v65    # "horizontalDimensionFixed":Z
    .end local v66    # "horizontalParentWrapContent":Z
    .end local v67    # "useRatio":Z
    .end local v68    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .end local v69    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v70    # "top":Landroid/support/constraint/solver/SolverVariable;
    .end local v71    # "right":Landroid/support/constraint/solver/SolverVariable;
    .end local v72    # "left":Landroid/support/constraint/solver/SolverVariable;
    .restart local v2    # "verticalDimensionFixed":Z
    .restart local v3    # "horizontalDimensionFixed":Z
    .restart local v4    # "horizontalParentWrapContent":Z
    .restart local v8    # "useRatio":Z
    .restart local v9    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v10    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v11    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v12    # "right":Landroid/support/constraint/solver/SolverVariable;
    .restart local v13    # "left":Landroid/support/constraint/solver/SolverVariable;
    .restart local v23    # "verticalParentWrapContent":Z
    :cond_32
    move/from16 v63, v2

    move/from16 v65, v3

    move/from16 v66, v4

    move/from16 v67, v8

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v70, v11

    move-object/from16 v71, v12

    move-object/from16 v72, v13

    move/from16 v64, v23

    .line 2426
    .end local v2    # "verticalDimensionFixed":Z
    .end local v3    # "horizontalDimensionFixed":Z
    .end local v4    # "horizontalParentWrapContent":Z
    .end local v8    # "useRatio":Z
    .end local v9    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .end local v10    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v11    # "top":Landroid/support/constraint/solver/SolverVariable;
    .end local v12    # "right":Landroid/support/constraint/solver/SolverVariable;
    .end local v13    # "left":Landroid/support/constraint/solver/SolverVariable;
    .end local v23    # "verticalParentWrapContent":Z
    .restart local v63    # "verticalDimensionFixed":Z
    .restart local v64    # "verticalParentWrapContent":Z
    .restart local v65    # "horizontalDimensionFixed":Z
    .restart local v66    # "horizontalParentWrapContent":Z
    .restart local v67    # "useRatio":Z
    .restart local v68    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v69    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v70    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v71    # "right":Landroid/support/constraint/solver/SolverVariable;
    .restart local v72    # "left":Landroid/support/constraint/solver/SolverVariable;
    :goto_16
    const/4 v0, 0x1

    .line 2427
    .local v0, "applyVerticalConstraints":Z
    if-eqz p2, :cond_36

    move-object/from16 v7, p0

    iget-object v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v1, :cond_37

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v1, :cond_37

    iget-object v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v1, :cond_37

    .line 2428
    iget-object v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v8, p1

    move-object/from16 v9, v70

    .end local v70    # "top":Landroid/support/constraint/solver/SolverVariable;
    .local v9, "top":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v8, v9, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 2429
    iget-object v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v10, v69

    .end local v69    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v10    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v8, v10, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 2430
    iget-object v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v11, v68

    .end local v68    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .local v11, "baseline":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v8, v11, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 2431
    iget-object v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_35

    .line 2432
    if-nez v57, :cond_34

    if-eqz v64, :cond_34

    iget-object v2, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_33

    .line 2436
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 2437
    .local v1, "parentMax":Landroid/support/constraint/solver/SolverVariable;
    const/16 v2, 0x8

    const/4 v12, 0x0

    invoke-virtual {v8, v1, v10, v12, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_18

    .line 2432
    .end local v1    # "parentMax":Landroid/support/constraint/solver/SolverVariable;
    :cond_33
    const/16 v2, 0x8

    goto :goto_17

    :cond_34
    const/16 v2, 0x8

    const/4 v3, 0x1

    :goto_17
    const/4 v12, 0x0

    goto :goto_18

    .line 2431
    :cond_35
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v12, 0x0

    .line 2440
    :goto_18
    const/4 v0, 0x0

    goto :goto_19

    .line 2427
    .end local v9    # "top":Landroid/support/constraint/solver/SolverVariable;
    .end local v10    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v11    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v68    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v69    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v70    # "top":Landroid/support/constraint/solver/SolverVariable;
    :cond_36
    move-object/from16 v7, p0

    :cond_37
    move-object/from16 v8, p1

    move-object/from16 v11, v68

    move-object/from16 v10, v69

    move-object/from16 v9, v70

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v12, 0x0

    .line 2442
    .end local v68    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .end local v69    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .end local v70    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v9    # "top":Landroid/support/constraint/solver/SolverVariable;
    .restart local v10    # "bottom":Landroid/support/constraint/solver/SolverVariable;
    .restart local v11    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    :goto_19
    iget v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_38

    .line 2449
    const/4 v0, 0x0

    move v13, v0

    goto :goto_1a

    .line 2442
    :cond_38
    move v13, v0

    .line 2451
    .end local v0    # "applyVerticalConstraints":Z
    .local v13, "applyVerticalConstraints":Z
    :goto_1a
    if-eqz v13, :cond_43

    iget-boolean v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    if-nez v0, :cond_43

    .line 2453
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v3

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_39

    instance-of v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    goto :goto_1b

    :cond_39
    const/4 v0, 0x0

    .line 2455
    .end local v29    # "wrapContent":Z
    .local v0, "wrapContent":Z
    :goto_1b
    if-eqz v0, :cond_3a

    .line 2456
    const/16 v28, 0x0

    move/from16 v1, v28

    goto :goto_1c

    .line 2455
    :cond_3a
    move/from16 v1, v28

    .line 2459
    .end local v28    # "height":I
    .local v1, "height":I
    :goto_1c
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_3b

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    goto :goto_1d

    :cond_3b
    move-object/from16 v4, v31

    .line 2460
    .local v4, "parentMax":Landroid/support/constraint/solver/SolverVariable;
    :goto_1d
    iget-object v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_3c

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    move-object/from16 v34, v5

    goto :goto_1e

    :cond_3c
    move-object/from16 v34, v31

    .line 2462
    .local v34, "parentMin":Landroid/support/constraint/solver/SolverVariable;
    :goto_1e
    iget v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v5, :cond_3d

    iget v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    if-ne v5, v2, :cond_41

    .line 2464
    :cond_3d
    iget-object v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_3f

    .line 2465
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v5

    invoke-virtual {v8, v11, v9, v5, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2466
    iget-object v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 2467
    .local v5, "baselineTarget":Landroid/support/constraint/solver/SolverVariable;
    const/4 v6, 0x0

    .line 2468
    .local v6, "baselineMargin":I
    invoke-virtual {v8, v11, v5, v6, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2469
    const/16 v30, 0x0

    .line 2470
    if-eqz v64, :cond_3e

    .line 2474
    iget-object v2, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 2475
    .local v2, "end":Landroid/support/constraint/solver/SolverVariable;
    const/4 v14, 0x5

    .line 2476
    .local v14, "wrapStrength":I
    invoke-virtual {v8, v4, v2, v12, v14}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2478
    .end local v2    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v5    # "baselineTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v6    # "baselineMargin":I
    .end local v14    # "wrapStrength":I
    :cond_3e
    move/from16 v2, v30

    goto :goto_20

    :cond_3f
    iget v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    if-ne v5, v2, :cond_40

    .line 2480
    invoke-virtual {v8, v11, v9, v12, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_1f

    .line 2482
    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v5

    invoke-virtual {v8, v11, v9, v5, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2486
    :cond_41
    :goto_1f
    move/from16 v2, v30

    .end local v30    # "applyPosition":Z
    .local v2, "applyPosition":Z
    :goto_20
    const/16 v30, 0x0

    iget-object v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v33, v5, v3

    iget-object v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v36, v5, v3

    iget-object v6, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v14, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v15, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget v12, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    move-object/from16 v68, v11

    .end local v11    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v68    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v43, v11, v3

    iget v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    const/16 v16, 0x0

    aget-object v5, v5, v16

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v3, :cond_42

    const/16 v46, 0x1

    goto :goto_21

    :cond_42
    const/16 v46, 0x0

    :goto_21
    iget v3, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v52, v3

    iget v3, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v53, v3

    iget v3, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    move/from16 v54, v3

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move/from16 v31, v64

    move/from16 v32, v66

    move-object/from16 v35, v4

    move/from16 v37, v0

    move-object/from16 v38, v6

    move-object/from16 v39, v14

    move/from16 v40, v15

    move/from16 v41, v1

    move/from16 v42, v12

    move/from16 v44, v11

    move/from16 v47, v57

    move/from16 v48, v56

    move/from16 v49, v62

    move/from16 v50, v58

    move/from16 v51, v59

    move/from16 v55, v2

    invoke-direct/range {v28 .. v55}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZZZZLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    move/from16 v29, v0

    move/from16 v28, v1

    move/from16 v30, v2

    goto :goto_22

    .line 2451
    .end local v0    # "wrapContent":Z
    .end local v1    # "height":I
    .end local v2    # "applyPosition":Z
    .end local v4    # "parentMax":Landroid/support/constraint/solver/SolverVariable;
    .end local v34    # "parentMin":Landroid/support/constraint/solver/SolverVariable;
    .end local v68    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v11    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v28    # "height":I
    .restart local v29    # "wrapContent":Z
    .restart local v30    # "applyPosition":Z
    :cond_43
    move-object/from16 v68, v11

    .line 2492
    .end local v11    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    .restart local v68    # "baseline":Landroid/support/constraint/solver/SolverVariable;
    :goto_22
    if-eqz v67, :cond_45

    .line 2493
    const/16 v11, 0x8

    .line 2494
    .local v11, "strength":I
    iget v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    .line 2495
    iget v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, p1

    move-object v1, v10

    move-object v2, v9

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/LinearSystem;->addRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FI)V

    goto :goto_23

    .line 2497
    :cond_44
    iget v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, p1

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    move-object v3, v10

    move-object v4, v9

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/LinearSystem;->addRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FI)V

    .line 2501
    .end local v11    # "strength":I
    :cond_45
    :goto_23
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2502
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    iget v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    invoke-virtual {v8, v7, v0, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addCenterPoint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V

    .line 2510
    :cond_46
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 2511
    iput-boolean v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 2512
    return-void
.end method

.method public allowedInBarrier()Z
    .locals 2

    .line 1602
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V
    .locals 1
    .param p1, "constraintFrom"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p3, "constraintTo"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1652
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1653
    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 9
    .param p1, "constraintFrom"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p3, "constraintTo"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p4, "margin"    # I

    .line 1666
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_e

    .line 1669
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_9

    .line 1670
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1671
    .local v0, "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1672
    .local v2, "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1673
    .local v3, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1674
    .local v4, "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v5, 0x0

    .line 1675
    .local v5, "centerX":Z
    const/4 v6, 0x0

    .line 1676
    .local v6, "centerY":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    .line 1677
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 1680
    :cond_1
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7, p2, v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1682
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7, p2, v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1684
    const/4 v5, 0x1

    .line 1686
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-nez v7, :cond_5

    :cond_3
    if-eqz v4, :cond_4

    .line 1687
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    .line 1690
    :cond_4
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7, p2, v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1692
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7, p2, v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1694
    const/4 v6, 0x1

    .line 1696
    :cond_5
    :goto_1
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    .line 1697
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    .line 1698
    .local v7, "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 1699
    .end local v7    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    .line 1700
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    .line 1701
    .restart local v7    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .end local v7    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_2

    .line 1702
    :cond_7
    if-eqz v6, :cond_8

    .line 1703
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    .line 1704
    .restart local v7    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_3

    .line 1702
    .end local v7    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_8
    :goto_2
    nop

    .line 1706
    .end local v0    # "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v2    # "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v5    # "centerX":Z
    .end local v6    # "centerY":Z
    :goto_3
    goto/16 :goto_9

    :cond_9
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p3, v0, :cond_c

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_a

    goto :goto_4

    .line 1714
    :cond_a
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p3, v0, :cond_b

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_d

    .line 1716
    :cond_b
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1718
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1720
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1721
    .local v0, "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 1722
    .end local v0    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto/16 :goto_9

    .line 1708
    :cond_c
    :goto_4
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1710
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    :try_start_0
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1712
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1713
    .restart local v0    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 1714
    .end local v0    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_d
    goto/16 :goto_9

    .line 1723
    .end local p0    # "this":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_e
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v0, :cond_10

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p3, v0, :cond_f

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_10

    .line 1726
    :cond_f
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1727
    .local v0, "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1728
    .local v2, "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1729
    .local v3, "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 1730
    invoke-virtual {v3, v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 1731
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1732
    .local v4, "centerX":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 1733
    .end local v0    # "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v2    # "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "centerX":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto/16 :goto_9

    :cond_10
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v0, :cond_12

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p3, v0, :cond_11

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_12

    .line 1736
    :cond_11
    invoke-virtual {p2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1737
    .local v0, "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1738
    .local v2, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 1739
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1740
    .local v3, "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 1741
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1742
    .local v4, "centerY":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v4, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 1743
    .end local v0    # "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v2    # "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "centerY":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto/16 :goto_9

    :cond_12
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v0, :cond_13

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_13

    .line 1746
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1747
    .local v0, "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1748
    .local v2, "leftTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 1749
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1750
    .local v3, "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1751
    .local v4, "rightTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3, v4, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 1752
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1753
    .local v5, "centerX":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 1754
    .end local v0    # "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v2    # "leftTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "rightTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v5    # "centerX":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto/16 :goto_9

    :cond_13
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v0, :cond_14

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_14

    .line 1757
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1758
    .local v0, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1759
    .local v2, "topTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 1760
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1761
    .local v3, "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1762
    .local v4, "bottomTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3, v4, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 1763
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1764
    .local v5, "centerY":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 1765
    .end local v0    # "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v2    # "topTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "bottomTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v5    # "centerY":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto/16 :goto_9

    .line 1766
    :cond_14
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1767
    .local v0, "fromAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1768
    .local v1, "toAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isValidConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1771
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v2, :cond_17

    .line 1772
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1773
    .local v2, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1774
    .restart local v3    # "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v2, :cond_15

    .line 1775
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1777
    :cond_15
    if-eqz v3, :cond_16

    .line 1778
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1780
    :cond_16
    const/4 p4, 0x0

    .line 1781
    .end local v2    # "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto/16 :goto_8

    :cond_17
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v2, :cond_1c

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v2, :cond_18

    goto :goto_7

    .line 1807
    :cond_18
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v2, :cond_1a

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v2, :cond_19

    goto :goto_6

    :cond_19
    :goto_5
    goto :goto_8

    .line 1809
    :cond_1a
    :goto_6
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1810
    .local v2, "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    if-eq v3, v1, :cond_1b

    .line 1811
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1813
    :cond_1b
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1814
    .local v3, "opposite":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1815
    .local v4, "centerX":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1816
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1817
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    goto :goto_8

    .line 1783
    .end local v2    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "opposite":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "centerX":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_1c
    :goto_7
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1784
    .local v2, "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v2, :cond_1d

    .line 1785
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1787
    :cond_1d
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1788
    .local v3, "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    if-eq v4, v1, :cond_1e

    .line 1789
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1791
    :cond_1e
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1792
    .local v4, "opposite":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1793
    .restart local v5    # "centerY":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1794
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1795
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    goto :goto_5

    .line 1831
    .end local v2    # "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "opposite":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v5    # "centerY":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_1f
    :goto_8
    invoke-virtual {v0, v1, p4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)Z

    .line 1834
    .end local v0    # "fromAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v1    # "toAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_20
    :goto_9
    return-void

    .line 1710
    .end local p1    # "constraintFrom":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .end local p2    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local p3    # "constraintTo":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .end local p4    # "margin":I
    :catchall_0
    move-exception p1

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V
    .locals 3
    .param p1, "from"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p2, "to"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .param p3, "margin"    # I

    .line 1633
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1634
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1636
    :cond_0
    return-void
.end method

.method public connectCircularConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V
    .locals 6
    .param p1, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "angle"    # F
    .param p3, "radius"    # I

    .line 677
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 679
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 680
    return-void
.end method

.method public copy(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "src"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 3091
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 3092
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 3094
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 3095
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 3097
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    .line 3098
    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 3100
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 3101
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 3102
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 3103
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 3104
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 3105
    iget-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    .line 3106
    iget-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    .line 3108
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 3109
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 3111
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 3112
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 3113
    iget-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline:Z

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 3114
    iget-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->inPlaceholder:Z

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->inPlaceholder:Z

    .line 3119
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 3120
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 3121
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 3122
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 3123
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 3124
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 3125
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 3126
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 3127
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 3128
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_0
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 3130
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 3131
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 3132
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 3133
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 3135
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 3136
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 3137
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelX:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelX:I

    .line 3138
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelY:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelY:I

    .line 3140
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 3141
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 3143
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 3144
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 3145
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 3147
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 3148
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 3150
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 3151
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 3152
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 3153
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 3154
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 3156
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    .line 3157
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToLeft:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToLeft:I

    .line 3158
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToRight:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToRight:I

    .line 3159
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    .line 3160
    iget-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    .line 3161
    iget-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    .line 3163
    iget-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    .line 3164
    iget-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    .line 3166
    iget-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 3167
    iget-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 3169
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 3170
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 3171
    iget-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 3172
    iget-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 3173
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v5, v4, v2

    aput v5, v0, v2

    .line 3174
    aget v4, v4, v3

    aput v4, v0, v3

    .line 3176
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v5, v4, v2

    aput-object v5, v0, v2

    .line 3177
    aget-object v4, v4, v3

    aput-object v4, v0, v3

    .line 3179
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v5, v4, v2

    aput-object v5, v0, v2

    .line 3180
    aget-object v2, v4, v3

    aput-object v2, v0, v3

    .line 3182
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_1
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 3183
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_2
    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 3184
    return-void
.end method

.method public createObjectVariables(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 5
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;

    .line 771
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 772
    .local v0, "left":Landroid/support/constraint/solver/SolverVariable;
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 773
    .local v1, "top":Landroid/support/constraint/solver/SolverVariable;
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 774
    .local v2, "right":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 775
    .local v3, "bottom":Landroid/support/constraint/solver/SolverVariable;
    iget v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v4, :cond_0

    .line 776
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    .line 778
    :cond_0
    return-void
.end method

.method public ensureMeasureRequested()V
    .locals 1

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 175
    return-void
.end method

.method public ensureWidgetRuns()V
    .locals 1

    .line 565
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    if-nez v0, :cond_0

    .line 566
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-direct {v0, p0}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 568
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-nez v0, :cond_1

    .line 569
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-direct {v0, p0}, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    .line 571
    :cond_1
    return-void
.end method

.method public getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 2
    .param p1, "anchorType"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1930
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1958
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1956
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 1950
    :pswitch_1
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1947
    :pswitch_2
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1953
    :pswitch_3
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1944
    :pswitch_4
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1941
    :pswitch_5
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1938
    :pswitch_6
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1935
    :pswitch_7
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1932
    :pswitch_8
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public getAnchors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .line 1075
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBaselineDistance()I
    .locals 1

    .line 1056
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    return v0
.end method

.method public getBiasPercent(I)F
    .locals 1
    .param p1, "orientation"    # I

    .line 1032
    if-nez p1, :cond_0

    .line 1033
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return v0

    .line 1034
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1035
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return v0

    .line 1037
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getBottom()I
    .locals 2

    .line 973
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .locals 1

    .line 1066
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    return-object v0
.end method

.method public getContainerItemSkip()I
    .locals 1

    .line 1537
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    return v0
.end method

.method public getDebugName()Ljava/lang/String;
    .locals 1

    .line 724
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    return-object v0
.end method

.method public getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1
    .param p1, "orientation"    # I

    .line 1986
    if-nez p1, :cond_0

    .line 1987
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    return-object v0

    .line 1988
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1989
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    return-object v0

    .line 1991
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDimensionRatio()F
    .locals 1

    .line 1303
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    return v0
.end method

.method public getDimensionRatioSide()I
    .locals 1

    .line 1312
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    return v0
.end method

.method public getHasBaseline()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline:Z

    return v0
.end method

.method public getHeight()I
    .locals 2

    .line 880
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 881
    const/4 v0, 0x0

    return v0

    .line 883
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    return v0
.end method

.method public getHorizontalBiasPercent()F
    .locals 1

    .line 1011
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return v0
.end method

.method public getHorizontalChainControlWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 7

    .line 2070
    const/4 v0, 0x0

    .line 2071
    .local v0, "found":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2072
    move-object v1, p0

    .line 2074
    .local v1, "tmp":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_0
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 2075
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 2076
    .local v2, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 2077
    .local v4, "targetOwner":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_1
    if-nez v4, :cond_1

    move-object v5, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    .line 2078
    .local v5, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 2079
    move-object v0, v1

    .line 2080
    goto :goto_5

    .line 2082
    :cond_2
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v5, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 2083
    .local v3, "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-eq v6, v1, :cond_4

    .line 2084
    move-object v0, v1

    goto :goto_4

    .line 2086
    :cond_4
    move-object v1, v5

    .line 2088
    .end local v2    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "targetOwner":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v5    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_4
    goto :goto_0

    .line 2090
    .end local v1    # "tmp":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_5
    :goto_5
    return-object v0
.end method

.method public getHorizontalChainStyle()I
    .locals 1

    .line 1575
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    return v0
.end method

.method public getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 1967
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getHorizontalMargin()I
    .locals 2

    .line 980
    const/4 v0, 0x0

    .line 981
    .local v0, "margin":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    .line 982
    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    .line 984
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_1

    .line 985
    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    .line 987
    :cond_1
    return v0
.end method

.method public getLastHorizontalMeasureSpec()I
    .locals 1

    .line 322
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    return v0
.end method

.method public getLastVerticalMeasureSpec()I
    .locals 1

    .line 323
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 946
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    return v0
.end method

.method public getLength(I)I
    .locals 1
    .param p1, "orientation"    # I

    .line 893
    if-nez p1, :cond_0

    .line 894
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    return v0

    .line 895
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 896
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    return v0

    .line 898
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    .line 257
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .line 261
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 937
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 928
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    return v0
.end method

.method public getNextChainMember(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 2
    .param p1, "orientation"    # I

    .line 2052
    if-nez p1, :cond_0

    .line 2053
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_1

    .line 2054
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0

    .line 2056
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2057
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_1

    .line 2058
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0

    .line 2061
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOptimizerWrapHeight()I
    .locals 4

    .line 857
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 858
    .local v0, "h":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_2

    .line 859
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v1, v2, :cond_0

    .line 860
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 861
    :cond_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v1, :cond_1

    .line 862
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 863
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    goto :goto_0

    .line 865
    :cond_1
    const/4 v0, 0x0

    .line 867
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 868
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 871
    :cond_2
    return v0
.end method

.method public getOptimizerWrapWidth()I
    .locals 3

    .line 839
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 840
    .local v0, "w":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_2

    .line 841
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 842
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 843
    :cond_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v1, :cond_1

    .line 844
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 845
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    goto :goto_0

    .line 847
    :cond_1
    const/4 v0, 0x0

    .line 849
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 850
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 853
    :cond_2
    return v0
.end method

.method public getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    .line 621
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getPreviousChainMember(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 2
    .param p1, "orientation"    # I

    .line 2033
    if-nez p1, :cond_0

    .line 2034
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_1

    .line 2035
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0

    .line 2037
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2038
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_1

    .line 2039
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0

    .line 2042
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getRelativePositioning(I)I
    .locals 1
    .param p1, "orientation"    # I

    .line 1472
    if-nez p1, :cond_0

    .line 1473
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelX:I

    return v0

    .line 1474
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1475
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelY:I

    return v0

    .line 1477
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getRight()I
    .locals 2

    .line 964
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getRootX()I
    .locals 2

    .line 909
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getRootY()I
    .locals 2

    .line 919
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRun(I)Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;
    .locals 1
    .param p1, "orientation"    # I

    .line 77
    if-nez p1, :cond_0

    .line 78
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 80
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    return-object v0

    .line 82
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .line 955
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 688
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalBiasPercent()F
    .locals 1

    .line 1021
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return v0
.end method

.method public getVerticalChainControlWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 7

    .line 2113
    const/4 v0, 0x0

    .line 2114
    .local v0, "found":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2115
    move-object v1, p0

    .line 2116
    .local v1, "tmp":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_0
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 2117
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 2118
    .local v2, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 2119
    .local v4, "targetOwner":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_1
    if-nez v4, :cond_1

    move-object v5, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    .line 2120
    .local v5, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 2121
    move-object v0, v1

    .line 2122
    goto :goto_5

    .line 2124
    :cond_2
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v5, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 2125
    .local v3, "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-eq v6, v1, :cond_4

    .line 2126
    move-object v0, v1

    goto :goto_4

    .line 2128
    :cond_4
    move-object v1, v5

    .line 2130
    .end local v2    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v3    # "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "targetOwner":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v5    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_4
    goto :goto_0

    .line 2133
    .end local v1    # "tmp":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_5
    :goto_5
    return-object v0
.end method

.method public getVerticalChainStyle()I
    .locals 1

    .line 1595
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    return v0
.end method

.method public getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 1976
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getVerticalMargin()I
    .locals 2

    .line 994
    const/4 v0, 0x0

    .line 995
    .local v0, "margin":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    .line 996
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    .line 998
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_1

    .line 999
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    .line 1001
    :cond_1
    return v0
.end method

.method public getVisibility()I
    .locals 1

    .line 715
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 832
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 833
    const/4 v0, 0x0

    return v0

    .line 835
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    return v0
.end method

.method public getX()I
    .locals 2

    .line 808
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_0

    .line 809
    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    add-int/2addr v0, v1

    return v0

    .line 811
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    return v0
.end method

.method public getY()I
    .locals 2

    .line 820
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_0

    .line 821
    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    add-int/2addr v0, v1

    return v0

    .line 823
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    return v0
.end method

.method public hasBaseline()Z
    .locals 1

    .line 1047
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline:Z

    return v0
.end method

.method public hasDanglingDimension(I)Z
    .locals 5
    .param p1, "orientation"    # I

    .line 188
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 189
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v3, v4

    .line 190
    .local v3, "horizontalTargets":I
    if-ge v3, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 192
    .end local v3    # "horizontalTargets":I
    :cond_3
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    add-int/2addr v3, v4

    .line 193
    .local v3, "verticalTargets":I
    if-ge v3, v0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    return v1
.end method

.method public hasDependencies()Z
    .locals 4

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "mAnchorsSize":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 179
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 180
    .local v2, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasDependents()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    const/4 v3, 0x1

    return v3

    .line 178
    .end local v2    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "i":I
    .end local v1    # "mAnchorsSize":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 3
    .param p1, "startType"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p3, "endType"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p4, "margin"    # I
    .param p5, "goneMargin"    # I

    .line 1620
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1621
    .local v0, "startAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1622
    .local v1, "endAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p4, p5, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 1623
    return-void
.end method

.method public isHeightWrapContent()Z
    .locals 1

    .line 666
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    return v0
.end method

.method public isInHorizontalChain()Z
    .locals 2

    .line 2019
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_2

    .line 2021
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2023
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInPlaceholder()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->inPlaceholder:Z

    return v0
.end method

.method public isInVerticalChain()Z
    .locals 2

    .line 2100
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_2

    .line 2102
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2104
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInVirtualLayout()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    return v0
.end method

.method public isMeasureRequested()Z
    .locals 2

    .line 313
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMeasureRequested:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResolvedHorizontally()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isResolvedVertically()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRoot()Z
    .locals 1

    .line 612
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpreadHeight()Z
    .locals 3

    .line 281
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSpreadWidth()Z
    .locals 3

    .line 273
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isWidthWrapContent()Z
    .locals 1

    .line 648
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    return v0
.end method

.method public oppositeDimensionDependsOn(I)Z
    .locals 6
    .param p1, "orientation"    # I

    .line 503
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 504
    .local v2, "oppositeOrientation":I
    :goto_0
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v3, p1

    .line 505
    .local v4, "dimensionBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    aget-object v3, v3, v2

    .line 506
    .local v3, "oppositeDimensionBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_1

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public oppositeDimensionsTied()Z
    .locals 4

    .line 512
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v3

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public reset()V
    .locals 6

    .line 438
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 439
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 440
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 441
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 442
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 443
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 444
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 445
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 447
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 448
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 449
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 450
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 451
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 452
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 453
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 454
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 455
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 456
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 457
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 458
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 459
    sget v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 460
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 461
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v4, v3, v2

    .line 462
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 463
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 464
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 465
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 466
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 467
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 468
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 469
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 470
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 471
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 472
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 473
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    .line 474
    aput v3, v0, v5

    .line 475
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 476
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 477
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    .line 478
    aput v3, v0, v5

    .line 479
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 480
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 481
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 482
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 483
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 484
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 485
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 486
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 487
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 488
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 489
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 490
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 491
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v5, v0, v2

    .line 492
    aput-boolean v5, v0, v5

    .line 493
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 494
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aput-boolean v2, v0, v2

    .line 495
    aput-boolean v2, v0, v5

    .line 496
    iput-boolean v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 497
    return-void
.end method

.method public resetAllConstraints()V
    .locals 1

    .line 1839
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 1840
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1841
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1842
    return-void
.end method

.method public resetAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V
    .locals 10
    .param p1, "anchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1851
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1852
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_0

    .line 1853
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1854
    .local v0, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1855
    return-void

    .line 1859
    .end local v0    # "parent":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    :cond_0
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1860
    .local v0, "left":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1861
    .local v1, "right":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1862
    .local v2, "top":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1863
    .local v3, "bottom":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1864
    .local v4, "center":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1865
    .local v5, "centerX":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    .line 1867
    .local v6, "centerY":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/high16 v7, 0x3f000000    # 0.5f

    if-ne p1, v4, :cond_3

    .line 1868
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1869
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 1870
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1871
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1873
    :cond_1
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1874
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    if-ne v8, v9, :cond_2

    .line 1875
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1876
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1878
    :cond_2
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1879
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto/16 :goto_1

    .line 1880
    :cond_3
    if-ne p1, v5, :cond_5

    .line 1881
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1882
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v8, v9, :cond_4

    .line 1883
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1884
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1886
    :cond_4
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_1

    .line 1887
    :cond_5
    if-ne p1, v6, :cond_7

    .line 1888
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1889
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v8, v9, :cond_6

    .line 1890
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1891
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1893
    :cond_6
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_1

    .line 1894
    :cond_7
    if-eq p1, v0, :cond_a

    if-ne p1, v1, :cond_8

    goto :goto_0

    .line 1898
    :cond_8
    if-eq p1, v2, :cond_9

    if-ne p1, v3, :cond_b

    .line 1899
    :cond_9
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-ne v7, v8, :cond_b

    .line 1900
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    goto :goto_1

    .line 1895
    :cond_a
    :goto_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-ne v7, v8, :cond_b

    .line 1896
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1903
    :cond_b
    :goto_1
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1904
    return-void
.end method

.method public resetAnchors()V
    .locals 4

    .line 1910
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 1911
    .local v0, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_0

    .line 1912
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1913
    .local v1, "parentContainer":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1914
    return-void

    .line 1917
    .end local v1    # "parentContainer":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mAnchorsSize":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1918
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1919
    .local v3, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1917
    .end local v3    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1921
    .end local v1    # "i":I
    .end local v2    # "mAnchorsSize":I
    :cond_1
    return-void
.end method

.method public resetFinalResolution()V
    .locals 3

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 166
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "mAnchorsSize":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 168
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 169
    .local v2, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetFinalResolution()V

    .line 167
    .end local v2    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    .end local v1    # "mAnchorsSize":I
    :cond_0
    return-void
.end method

.method public resetSolverVariables(Landroid/support/constraint/solver/Cache;)V
    .locals 1
    .param p1, "cache"    # Landroid/support/constraint/solver/Cache;

    .line 582
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 583
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 584
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 585
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 586
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 587
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 588
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 589
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 590
    return-void
.end method

.method public setBaselineDistance(I)V
    .locals 1
    .param p1, "baseline"    # I

    .line 1501
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 1502
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 1503
    return-void
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .locals 0
    .param p1, "companion"    # Ljava/lang/Object;

    .line 1512
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 1513
    return-void
.end method

.method public setContainerItemSkip(I)V
    .locals 1
    .param p1, "skip"    # I

    .line 1524
    if-ltz p1, :cond_0

    .line 1525
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    goto :goto_0

    .line 1527
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 1529
    :goto_0
    return-void
.end method

.method public setDebugName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 731
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 732
    return-void
.end method

.method public setDebugSolverName(Landroid/support/constraint/solver/LinearSystem;Ljava/lang/String;)V
    .locals 7
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "name"    # Ljava/lang/String;

    .line 751
    iput-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 752
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 753
    .local v0, "left":Landroid/support/constraint/solver/SolverVariable;
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 754
    .local v1, "top":Landroid/support/constraint/solver/SolverVariable;
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 755
    .local v2, "right":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 756
    .local v3, "bottom":Landroid/support/constraint/solver/SolverVariable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".left"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 757
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".top"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 758
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".right"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".bottom"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 760
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 761
    .local v4, "baseline":Landroid/support/constraint/solver/SolverVariable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".baseline"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method public setDimension(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1368
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1369
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p1, v0, :cond_0

    .line 1370
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1372
    :cond_0
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1373
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p2, v0, :cond_1

    .line 1374
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1376
    :cond_1
    return-void
.end method

.method public setDimensionRatio(FI)V
    .locals 0
    .param p1, "ratio"    # F
    .param p2, "dimensionRatioSide"    # I

    .line 1293
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1294
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1295
    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .locals 12
    .param p1, "ratio"    # Ljava/lang/String;

    .line 1231
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 1235
    :cond_0
    const/4 v1, -0x1

    .line 1236
    .local v1, "dimensionRatioSide":I
    const/4 v2, 0x0

    .line 1237
    .local v2, "dimensionRatio":F
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1238
    .local v3, "len":I
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1239
    .local v4, "commaIndex":I
    const/4 v5, 0x1

    if-lez v4, :cond_3

    add-int/lit8 v6, v3, -0x1

    if-ge v4, v6, :cond_3

    .line 1240
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1241
    .local v6, "dimension":Ljava/lang/String;
    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1242
    const/4 v1, 0x0

    goto :goto_0

    .line 1243
    :cond_1
    const-string v7, "H"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1244
    const/4 v1, 0x1

    .line 1246
    :cond_2
    :goto_0
    nop

    .end local v6    # "dimension":Ljava/lang/String;
    add-int/2addr v4, v5

    .line 1247
    goto :goto_1

    .line 1248
    :cond_3
    const/4 v4, 0x0

    .line 1250
    :goto_1
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1252
    .local v6, "colonIndex":I
    if-ltz v6, :cond_7

    add-int/lit8 v7, v3, -0x1

    if-ge v6, v7, :cond_7

    .line 1253
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1254
    .local v7, "nominator":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1255
    .local v8, "denominator":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 1257
    :try_start_0
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 1258
    .local v9, "nominatorValue":F
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 1259
    .local v10, "denominatorValue":F
    cmpl-float v11, v9, v0

    if-lez v11, :cond_5

    cmpl-float v11, v10, v0

    if-lez v11, :cond_5

    .line 1260
    if-ne v1, v5, :cond_4

    .line 1261
    div-float v5, v10, v9

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v2, v5

    goto :goto_2

    .line 1263
    :cond_4
    div-float v5, v9, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 1268
    .end local v9    # "nominatorValue":F
    .end local v10    # "denominatorValue":F
    :cond_5
    :goto_2
    goto :goto_3

    .line 1266
    :catch_0
    move-exception v5

    .line 1270
    .end local v7    # "nominator":Ljava/lang/String;
    .end local v8    # "denominator":Ljava/lang/String;
    :cond_6
    :goto_3
    goto :goto_4

    .line 1271
    :cond_7
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1272
    .local v5, "r":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 1274
    :try_start_1
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v7

    .line 1277
    goto :goto_4

    .line 1275
    :catch_1
    move-exception v7

    .line 1281
    .end local v5    # "r":Ljava/lang/String;
    :cond_8
    :goto_4
    cmpl-float v0, v2, v0

    if-lez v0, :cond_9

    .line 1282
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1283
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1285
    :cond_9
    return-void

    .line 1232
    .end local v1    # "dimensionRatioSide":I
    .end local v2    # "dimensionRatio":F
    .end local v3    # "len":I
    .end local v4    # "commaIndex":I
    .end local v6    # "colonIndex":I
    :cond_a
    :goto_5
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1233
    return-void
.end method

.method public setFinalBaseline(I)V
    .locals 3
    .param p1, "baselineValue"    # I

    .line 144
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline:Z

    if-nez v0, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    sub-int v0, p1, v0

    .line 148
    .local v0, "y1":I
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v1, v0

    .line 149
    .local v1, "y2":I
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 150
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 151
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 152
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 154
    return-void
.end method

.method public setFinalFrame(IIIIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "baseline"    # I
    .param p6, "orientation"    # I

    .line 89
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    .line 90
    invoke-virtual {p0, p5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 91
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p6, :cond_0

    .line 92
    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 93
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    goto :goto_0

    .line 94
    :cond_0
    if-ne p6, v1, :cond_1

    .line 95
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 96
    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    goto :goto_0

    .line 97
    :cond_1
    const/4 v2, 0x2

    if-ne p6, v2, :cond_2

    .line 98
    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 99
    iput-boolean v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    goto :goto_0

    .line 101
    :cond_2
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 102
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 104
    :goto_0
    return-void
.end method

.method public setFinalHorizontal(II)V
    .locals 1
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 117
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 118
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 119
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 120
    sub-int v0, p2, p1

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 126
    return-void
.end method

.method public setFinalLeft(I)V
    .locals 1
    .param p1, "x1"    # I

    .line 107
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 108
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 109
    return-void
.end method

.method public setFinalTop(I)V
    .locals 1
    .param p1, "y1"    # I

    .line 112
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 113
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 114
    return-void
.end method

.method public setFinalVertical(II)V
    .locals 2
    .param p1, "y1"    # I
    .param p2, "y2"    # I

    .line 129
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 130
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 131
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 132
    sub-int v0, p2, p1

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 133
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 136
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 141
    return-void
.end method

.method public setFrame(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "orientation"    # I

    .line 1430
    if-nez p3, :cond_0

    .line 1431
    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    goto :goto_0

    .line 1432
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 1433
    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    .line 1435
    :cond_1
    :goto_0
    return-void
.end method

.method public setFrame(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1387
    sub-int v0, p3, p1

    .line 1388
    .local v0, "w":I
    sub-int v1, p4, p2

    .line 1390
    .local v1, "h":I
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1391
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1393
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    .line 1394
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1395
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1396
    return-void

    .line 1400
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v3

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    if-ge v0, v2, :cond_1

    .line 1401
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1403
    :cond_1
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    if-ge v1, v2, :cond_2

    .line 1404
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1407
    :cond_2
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1408
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1410
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v1, v2, :cond_3

    .line 1411
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1413
    :cond_3
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v2, :cond_4

    .line 1414
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1420
    :cond_4
    return-void
.end method

.method public setGoneMargin(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 2
    .param p1, "type"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .param p2, "goneMargin"    # I

    .line 1125
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1139
    :pswitch_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput p2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1141
    goto :goto_0

    .line 1135
    :pswitch_1
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput p2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1137
    goto :goto_0

    .line 1131
    :pswitch_2
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput p2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1133
    goto :goto_0

    .line 1127
    :pswitch_3
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput p2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1129
    nop

    .line 1149
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHasBaseline(Z)V
    .locals 0
    .param p1, "hasBaseline"    # Z

    .line 289
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 290
    return-void
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "h"    # I

    .line 1169
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1170
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p1, v0, :cond_0

    .line 1171
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1173
    :cond_0
    return-void
.end method

.method public setHeightWrapContent(Z)V
    .locals 0
    .param p1, "heightWrapContent"    # Z

    .line 657
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    .line 658
    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .locals 0
    .param p1, "horizontalBiasPercent"    # F

    .line 1322
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1323
    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .locals 0
    .param p1, "horizontalChainStyle"    # I

    .line 1565
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 1566
    return-void
.end method

.method public setHorizontalDimension(II)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 1444
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1445
    sub-int v0, p2, p1

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1446
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_0

    .line 1447
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1449
    :cond_0
    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2
    .param p1, "behaviour"    # Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2001
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2002
    return-void
.end method

.method public setHorizontalMatchStyle(IIIF)V
    .locals 1
    .param p1, "horizontalMatchStyle"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "percent"    # F

    .line 1198
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1199
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 1200
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 1201
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 1202
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_1

    if-nez p1, :cond_1

    .line 1203
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1205
    :cond_1
    return-void
.end method

.method public setHorizontalWeight(F)V
    .locals 2
    .param p1, "horizontalWeight"    # F

    .line 1546
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1547
    return-void
.end method

.method protected setInBarrier(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "value"    # Z

    .line 305
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aput-boolean p2, v0, p1

    .line 306
    return-void
.end method

.method public setInPlaceholder(Z)V
    .locals 0
    .param p1, "inPlaceholder"    # Z

    .line 301
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->inPlaceholder:Z

    .line 302
    return-void
.end method

.method public setInVirtualLayout(Z)V
    .locals 0
    .param p1, "inVirtualLayout"    # Z

    .line 253
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 254
    return-void
.end method

.method public setLastMeasureSpec(II)V
    .locals 1
    .param p1, "horizontal"    # I
    .param p2, "vertical"    # I

    .line 325
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 326
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 327
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    .line 328
    return-void
.end method

.method public setLength(II)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "orientation"    # I

    .line 1182
    if-nez p2, :cond_0

    .line 1183
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_0

    .line 1184
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1185
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1187
    :cond_1
    :goto_0
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 2
    .param p1, "maxHeight"    # I

    .line 269
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 270
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 2
    .param p1, "maxWidth"    # I

    .line 265
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 266
    return-void
.end method

.method public setMeasureRequested(Z)V
    .locals 0
    .param p1, "measureRequested"    # Z

    .line 309
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 310
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "h"    # I

    .line 1354
    if-gez p1, :cond_0

    .line 1355
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    goto :goto_0

    .line 1357
    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 1359
    :goto_0
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "w"    # I

    .line 1341
    if-gez p1, :cond_0

    .line 1342
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    goto :goto_0

    .line 1344
    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 1346
    :goto_0
    return-void
.end method

.method public setOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1114
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 1115
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 1116
    return-void
.end method

.method public setOrigin(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1103
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1104
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1105
    return-void
.end method

.method public setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 0
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 630
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 631
    return-void
.end method

.method setRelativePositioning(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "orientation"    # I

    .line 1488
    if-nez p2, :cond_0

    .line 1489
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelX:I

    goto :goto_0

    .line 1490
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1491
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRelY:I

    .line 1493
    :cond_1
    :goto_0
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 697
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 698
    return-void
.end method

.method public setVerticalBiasPercent(F)V
    .locals 0
    .param p1, "verticalBiasPercent"    # F

    .line 1332
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1333
    return-void
.end method

.method public setVerticalChainStyle(I)V
    .locals 0
    .param p1, "verticalChainStyle"    # I

    .line 1585
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 1586
    return-void
.end method

.method public setVerticalDimension(II)V
    .locals 2
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .line 1458
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1459
    sub-int v0, p2, p1

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1460
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v0, v1, :cond_0

    .line 1461
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1463
    :cond_0
    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2
    .param p1, "behaviour"    # Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2010
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2011
    return-void
.end method

.method public setVerticalMatchStyle(IIIF)V
    .locals 1
    .param p1, "verticalMatchStyle"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "percent"    # F

    .line 1216
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1217
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 1218
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 1219
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 1220
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_1

    if-nez p1, :cond_1

    .line 1221
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1223
    :cond_1
    return-void
.end method

.method public setVerticalWeight(F)V
    .locals 2
    .param p1, "verticalWeight"    # F

    .line 1555
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1556
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 706
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 707
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "w"    # I

    .line 1157
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1158
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p1, v0, :cond_0

    .line 1159
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1161
    :cond_0
    return-void
.end method

.method public setWidthWrapContent(Z)V
    .locals 0
    .param p1, "widthWrapContent"    # Z

    .line 639
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    .line 640
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .line 1084
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1085
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .line 1093
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1094
    return-void
.end method

.method public setupDimensionRatio(ZZZZ)V
    .locals 5
    .param p1, "hparentWrapContent"    # Z
    .param p2, "vparentWrapContent"    # Z
    .param p3, "horizontalDimensionFixed"    # Z
    .param p4, "verticalDimensionFixed"    # Z

    .line 2532
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    .line 2533
    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    .line 2534
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_0

    .line 2535
    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    .line 2536
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2537
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    if-ne v0, v3, :cond_1

    .line 2539
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float v0, v1, v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2544
    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2545
    :cond_2
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_1

    .line 2546
    :cond_3
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2547
    :cond_4
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2551
    :cond_5
    :goto_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v3, :cond_8

    .line 2552
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 2553
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2555
    :cond_6
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2556
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_2

    .line 2557
    :cond_7
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2558
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float v0, v1, v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2559
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2573
    :cond_8
    :goto_2
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v3, :cond_a

    .line 2574
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v0, :cond_9

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v3, :cond_9

    .line 2575
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_3

    .line 2576
    :cond_9
    if-nez v0, :cond_a

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v0, :cond_a

    .line 2577
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v1, v0

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2578
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2586
    :cond_a
    :goto_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromRuns(ZZ)V
    .locals 9
    .param p1, "updateHorizontal"    # Z
    .param p2, "updateVertical"    # Z

    .line 3187
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->isResolved()Z

    move-result v0

    and-int/2addr p1, v0

    .line 3188
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->isResolved()Z

    move-result v0

    and-int/2addr p2, v0

    .line 3189
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    .line 3190
    .local v0, "left":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    .line 3191
    .local v1, "top":I
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    .line 3192
    .local v2, "right":I
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    .line 3193
    .local v3, "bottom":I
    sub-int v4, v2, v0

    .line 3194
    .local v4, "w":I
    sub-int v5, v3, v1

    .line 3195
    .local v5, "h":I
    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v6, -0x80000000

    if-eq v0, v6, :cond_0

    const v7, 0x7fffffff

    if-eq v0, v7, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v1, v7, :cond_0

    if-eq v2, v6, :cond_0

    if-eq v2, v7, :cond_0

    if-eq v3, v6, :cond_0

    if-ne v3, v7, :cond_1

    .line 3200
    :cond_0
    const/4 v0, 0x0

    .line 3201
    const/4 v1, 0x0

    .line 3202
    const/4 v2, 0x0

    .line 3203
    const/4 v3, 0x0

    .line 3206
    :cond_1
    sub-int v4, v2, v0

    .line 3207
    sub-int v5, v3, v1

    .line 3209
    if-eqz p1, :cond_2

    .line 3210
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 3212
    :cond_2
    if-eqz p2, :cond_3

    .line 3213
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 3216
    :cond_3
    iget v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-ne v6, v7, :cond_4

    .line 3217
    iput v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 3218
    iput v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 3219
    return-void

    .line 3223
    :cond_4
    if-eqz p1, :cond_6

    .line 3224
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v8

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_5

    iget v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    if-ge v4, v6, :cond_5

    .line 3225
    iget v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 3227
    :cond_5
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 3228
    iget v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v4, v6, :cond_6

    .line 3229
    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 3233
    :cond_6
    if-eqz p2, :cond_8

    .line 3234
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_7

    iget v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    if-ge v5, v6, :cond_7

    .line 3235
    iget v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 3237
    :cond_7
    iput v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 3238
    iget v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v5, v6, :cond_8

    .line 3239
    iput v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 3243
    :cond_8
    return-void
.end method

.method public updateFromSolver(Landroid/support/constraint/solver/LinearSystem;Z)V
    .locals 8
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "optimize"    # Z

    .line 3057
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    .line 3058
    .local v0, "left":I
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v1

    .line 3059
    .local v1, "top":I
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v2

    .line 3060
    .local v2, "right":I
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v3

    .line 3062
    .local v3, "bottom":I
    if-eqz p2, :cond_0

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_0

    .line 3063
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v0, v4, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    .line 3064
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v2, v4, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    .line 3066
    :cond_0
    if-eqz p2, :cond_1

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v4, :cond_1

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_1

    .line 3067
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v1, v4, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    .line 3068
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget v3, v4, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->value:I

    .line 3071
    :cond_1
    sub-int v4, v2, v0

    .line 3072
    .local v4, "w":I
    sub-int v5, v3, v1

    .line 3073
    .local v5, "h":I
    if-ltz v4, :cond_2

    if-ltz v5, :cond_2

    const/high16 v6, -0x80000000

    if-eq v0, v6, :cond_2

    const v7, 0x7fffffff

    if-eq v0, v7, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v7, :cond_2

    if-eq v2, v6, :cond_2

    if-eq v2, v7, :cond_2

    if-eq v3, v6, :cond_2

    if-ne v3, v7, :cond_3

    .line 3078
    :cond_2
    const/4 v0, 0x0

    .line 3079
    const/4 v1, 0x0

    .line 3080
    const/4 v2, 0x0

    .line 3081
    const/4 v3, 0x0

    .line 3083
    :cond_3
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    .line 3087
    return-void
.end method
