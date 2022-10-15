.class public Landroid/support/constraint/motion/MotionLayout;
.super Landroid/support/constraint/ConstraintLayout;
.source "MotionLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/MotionLayout$TransitionListener;,
        Landroid/support/constraint/motion/MotionLayout$DevModeDraw;,
        Landroid/support/constraint/motion/MotionLayout$Model;,
        Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;,
        Landroid/support/constraint/motion/MotionLayout$StateCache;,
        Landroid/support/constraint/motion/MotionLayout$MyTracker;,
        Landroid/support/constraint/motion/MotionLayout$MotionTracker;,
        Landroid/support/constraint/motion/MotionLayout$TransitionState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEBUG_SHOW_NONE:I = 0x0

.field public static final DEBUG_SHOW_PATH:I = 0x2

.field public static final DEBUG_SHOW_PROGRESS:I = 0x1

.field private static final EPSILON:F = 1.0E-5f

.field public static IS_IN_EDIT_MODE:Z = false

.field static final MAX_KEY_FRAMES:I = 0x32

.field static final TAG:Ljava/lang/String; = "MotionLayout"

.field public static final TOUCH_UP_COMPLETE:I = 0x0

.field public static final TOUCH_UP_COMPLETE_TO_END:I = 0x2

.field public static final TOUCH_UP_COMPLETE_TO_START:I = 0x1

.field public static final TOUCH_UP_DECELERATE:I = 0x4

.field public static final TOUCH_UP_DECELERATE_AND_COMPLETE:I = 0x5

.field public static final TOUCH_UP_STOP:I = 0x3

.field public static final VELOCITY_LAYOUT:I = 0x1

.field public static final VELOCITY_POST_LAYOUT:I = 0x0

.field public static final VELOCITY_STATIC_LAYOUT:I = 0x3

.field public static final VELOCITY_STATIC_POST_LAYOUT:I = 0x2


# instance fields
.field firstDown:Z

.field private lastPos:F

.field private lastY:F

.field private mAnimationStartTime:J

.field private mBeginState:I

.field private mBoundsCheck:Landroid/graphics/RectF;

.field mCurrentState:I

.field mDebugPath:I

.field private mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

.field private mDesignTool:Landroid/support/constraint/motion/DesignTool;

.field mDevModeDraw:Landroid/support/constraint/motion/MotionLayout$DevModeDraw;

.field private mEndState:I

.field mEndWrapHeight:I

.field mEndWrapWidth:I

.field mFrameArrayList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/support/constraint/motion/MotionController;",
            ">;"
        }
    .end annotation
.end field

.field private mFrames:I

.field mHeightMeasureMode:I

.field private mInLayout:Z

.field mInTransition:Z

.field mIndirectTransition:Z

.field private mInteractionEnabled:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mIsAnimating:Z

.field private mKeepAnimating:Z

.field private mKeyCache:Landroid/support/constraint/motion/KeyCache;

.field private mLastDrawTime:J

.field private mLastFps:F

.field private mLastHeightMeasureSpec:I

.field mLastLayoutHeight:I

.field mLastLayoutWidth:I

.field mLastVelocity:F

.field private mLastWidthMeasureSpec:I

.field private mListenerPosition:F

.field private mListenerState:I

.field protected mMeasureDuringTransition:Z

.field mModel:Landroid/support/constraint/motion/MotionLayout$Model;

.field private mNeedsFireTransitionCompleted:Z

.field mOldHeight:I

.field mOldWidth:I

.field private mOnHideHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mOnShowHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field mPostInterpolationPosition:F

.field private mRegionView:Landroid/view/View;

.field mScene:Landroid/support/constraint/motion/MotionScene;

.field mScrollTargetDT:F

.field mScrollTargetDX:F

.field mScrollTargetDY:F

.field mScrollTargetTime:J

.field mStartWrapHeight:I

.field mStartWrapWidth:I

.field private mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

.field private mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

.field private mTemporalInterpolator:Z

.field mTransitionCompleted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionDuration:F

.field mTransitionGoalPosition:F

.field private mTransitionInstantly:Z

.field mTransitionLastPosition:F

.field private mTransitionLastTime:J

.field private mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

.field private mTransitionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/MotionLayout$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mTransitionPosition:F

.field mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

.field mUndergoingMotion:Z

.field mWidthMeasureMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 963
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 876
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 877
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 878
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 879
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 880
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    .line 881
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    .line 882
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    .line 884
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 886
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 887
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 888
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 889
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 891
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 893
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 894
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIndirectTransition:Z

    .line 901
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 905
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 906
    new-instance v3, Landroid/support/constraint/motion/utils/StopLogic;

    invoke-direct {v3}, Landroid/support/constraint/motion/utils/StopLogic;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    .line 907
    new-instance v3, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    invoke-direct {v3, p0}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    .line 911
    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->firstDown:Z

    .line 918
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mUndergoingMotion:Z

    .line 923
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    .line 925
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 926
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 927
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 928
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    .line 929
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 930
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    .line 931
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 932
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    .line 933
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 940
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    .line 948
    new-instance v0, Landroid/support/constraint/motion/KeyCache;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCache;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    .line 949
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 959
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->UNDEFINED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 2316
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$Model;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    .line 3162
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3368
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3369
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 964
    invoke-direct {p0, v2}, Landroid/support/constraint/motion/MotionLayout;->init(Landroid/util/AttributeSet;)V

    .line 965
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 968
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 876
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 877
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 878
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 879
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 880
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    .line 881
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    .line 882
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    .line 884
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 886
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 887
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 888
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 889
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 891
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 893
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 894
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIndirectTransition:Z

    .line 901
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 905
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 906
    new-instance v3, Landroid/support/constraint/motion/utils/StopLogic;

    invoke-direct {v3}, Landroid/support/constraint/motion/utils/StopLogic;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    .line 907
    new-instance v3, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    invoke-direct {v3, p0}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    .line 911
    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->firstDown:Z

    .line 918
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mUndergoingMotion:Z

    .line 923
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    .line 925
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 926
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 927
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 928
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    .line 929
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 930
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    .line 931
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 932
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    .line 933
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 940
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    .line 948
    new-instance v0, Landroid/support/constraint/motion/KeyCache;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCache;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    .line 949
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 959
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->UNDEFINED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 2316
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$Model;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    .line 3162
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3368
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3369
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 969
    invoke-direct {p0, p2}, Landroid/support/constraint/motion/MotionLayout;->init(Landroid/util/AttributeSet;)V

    .line 970
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 973
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 876
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 877
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 878
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 879
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 880
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    .line 881
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    .line 882
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    .line 884
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 886
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 887
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 888
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 889
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 891
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 893
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 894
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIndirectTransition:Z

    .line 901
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 905
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 906
    new-instance v3, Landroid/support/constraint/motion/utils/StopLogic;

    invoke-direct {v3}, Landroid/support/constraint/motion/utils/StopLogic;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    .line 907
    new-instance v3, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    invoke-direct {v3, p0}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    .line 911
    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->firstDown:Z

    .line 918
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mUndergoingMotion:Z

    .line 923
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    .line 925
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 926
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 927
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 928
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    .line 929
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 930
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    .line 931
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 932
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    .line 933
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 940
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    .line 948
    new-instance v0, Landroid/support/constraint/motion/KeyCache;

    invoke-direct {v0}, Landroid/support/constraint/motion/KeyCache;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    .line 949
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 959
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->UNDEFINED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 2316
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$Model;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    .line 3162
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3368
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3369
    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 974
    invoke-direct {p0, p2}, Landroid/support/constraint/motion/MotionLayout;->init(Landroid/util/AttributeSet;)V

    .line 975
    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/motion/MotionLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    return v0
.end method

.method static synthetic access$100(Landroid/support/constraint/motion/MotionLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    return v0
.end method

.method static synthetic access$1000(Landroid/support/constraint/motion/MotionLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    return v0
.end method

.method static synthetic access$1100(Landroid/support/constraint/motion/MotionLayout;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->setupMotionViews()V

    return-void
.end method

.method static synthetic access$1200(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1300(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1500(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1600(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1700(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1800(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1900(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .locals 1
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/support/constraint/motion/MotionLayout;IIIIZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z

    .line 859
    invoke-virtual/range {p0 .. p6}, Landroid/support/constraint/motion/MotionLayout;->resolveMeasuredDimension(IIIIZZ)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .locals 1
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .locals 1
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .locals 1
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/constraint/motion/MotionLayout;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/support/constraint/motion/MotionLayout;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/support/constraint/motion/MotionLayout;ZLandroid/view/View;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p4, "x4"    # Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .param p5, "x5"    # Landroid/util/SparseArray;

    .line 859
    invoke-virtual/range {p0 .. p5}, Landroid/support/constraint/motion/MotionLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/constraint/motion/MotionLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/constraint/motion/MotionLayout;

    .line 859
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    return v0
.end method

.method private checkStructure()V
    .locals 12

    .line 3266
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const-string v1, "MotionLayout"

    if-nez v0, :cond_0

    .line 3267
    const-string v0, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\""

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    return-void

    .line 3271
    :cond_0
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v0

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/support/constraint/motion/MotionLayout;->checkStructure(ILandroid/support/constraint/ConstraintSet;)V

    .line 3272
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 3273
    .local v0, "startToEnd":Landroid/util/SparseIntArray;
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 3274
    .local v2, "endToStart":Landroid/util/SparseIntArray;
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 3275
    .local v4, "definedTransition":Landroid/support/constraint/motion/MotionScene$Transition;
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v5, v5, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-ne v4, v5, :cond_1

    .line 3276
    const-string v5, "CHECK: CURRENT"

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    :cond_1
    invoke-direct {p0, v4}, Landroid/support/constraint/motion/MotionLayout;->checkStructure(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 3279
    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v5

    .line 3280
    .local v5, "startId":I
    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v6

    .line 3281
    .local v6, "endId":I
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 3282
    .local v7, "startString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 3283
    .local v8, "endString":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    const-string v10, "->"

    if-ne v9, v6, :cond_2

    .line 3285
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CHECK: two transitions with the same start and end "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    :cond_2
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    if-ne v9, v5, :cond_3

    .line 3290
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CHECK: you can\'t have reverse transitions"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    :cond_3
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 3294
    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 3295
    iget-object v9, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v9, v5}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v9

    if-nez v9, :cond_4

    .line 3296
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " no such constraintSetStart "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    :cond_4
    iget-object v9, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v9, v6}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v9

    if-nez v9, :cond_5

    .line 3300
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " no such constraintSetEnd "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    .end local v4    # "definedTransition":Landroid/support/constraint/motion/MotionScene$Transition;
    .end local v5    # "startId":I
    .end local v6    # "endId":I
    .end local v7    # "startString":Ljava/lang/String;
    .end local v8    # "endString":Ljava/lang/String;
    :cond_5
    goto/16 :goto_0

    .line 3303
    :cond_6
    return-void
.end method

.method private checkStructure(ILandroid/support/constraint/ConstraintSet;)V
    .locals 12
    .param p1, "csetId"    # I
    .param p2, "set"    # Landroid/support/constraint/ConstraintSet;

    .line 3306
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3307
    .local v0, "setName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v1

    .line 3308
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    const-string v4, "CHECK: "

    const-string v5, "MotionLayout"

    if-ge v2, v1, :cond_2

    .line 3309
    invoke-virtual {p0, v2}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3310
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    .line 3311
    .local v7, "id":I
    if-ne v7, v3, :cond_0

    .line 3312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " ALL VIEWS SHOULD HAVE ID\'s "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3313
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " does not!"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3312
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    :cond_0
    invoke-virtual {p2, v7}, Landroid/support/constraint/ConstraintSet;->getConstraint(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    .line 3316
    .local v3, "c":Landroid/support/constraint/ConstraintSet$Constraint;
    if-nez v3, :cond_1

    .line 3317
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " NO CONSTRAINTS for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    .end local v3    # "c":Landroid/support/constraint/ConstraintSet$Constraint;
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "id":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3320
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p2}, Landroid/support/constraint/ConstraintSet;->getKnownIds()[I

    move-result-object v2

    .line 3321
    .local v2, "ids":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_6

    .line 3322
    aget v7, v2, v6

    .line 3323
    .restart local v7    # "id":I
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 3324
    .local v8, "idString":Ljava/lang/String;
    aget v9, v2, v6

    invoke-virtual {p0, v9}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_3

    .line 3325
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " NO View matches id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    :cond_3
    invoke-virtual {p2, v7}, Landroid/support/constraint/ConstraintSet;->getHeight(I)I

    move-result v9

    const-string v10, ") no LAYOUT_HEIGHT"

    const-string v11, "("

    if-ne v9, v3, :cond_4

    .line 3328
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    :cond_4
    invoke-virtual {p2, v7}, Landroid/support/constraint/ConstraintSet;->getWidth(I)I

    move-result v9

    if-ne v9, v3, :cond_5

    .line 3331
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    .end local v7    # "id":I
    .end local v8    # "idString":Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 3334
    .end local v6    # "i":I
    :cond_6
    return-void
.end method

.method private checkStructure(Landroid/support/constraint/motion/MotionScene$Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 3337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHECK: transition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/motion/MotionScene$Transition;->debugString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHECK: transition.setDuration = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 3340
    const-string v0, "CHECK: start and end constraint set should not be the same!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    :cond_0
    return-void
.end method

.method private computeCurrentPositions()V
    .locals 4

    .line 1750
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v0

    .line 1751
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1752
    invoke-virtual {p0, v1}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1753
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionController;

    .line 1754
    .local v3, "frame":Landroid/support/constraint/motion/MotionController;
    if-nez v3, :cond_0

    .line 1755
    goto :goto_1

    .line 1757
    :cond_0
    invoke-virtual {v3, v2}, Landroid/support/constraint/motion/MotionController;->setStartCurrentState(Landroid/view/View;)V

    .line 1751
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "frame":Landroid/support/constraint/motion/MotionController;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1759
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private debugPos()V
    .locals 6

    .line 2862
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2863
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2864
    .local v1, "child":Landroid/view/View;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/support/constraint/motion/Debug;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2865
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    invoke-static {v4, v5}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2866
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2867
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2864
    const-string v3, "MotionLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    .end local v1    # "child":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2869
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private evaluateLayout()V
    .locals 20

    .line 2935
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 2936
    .local v1, "dir":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v2

    .line 2938
    .local v2, "currentTime":J
    const/4 v4, 0x0

    .line 2939
    .local v4, "deltaPos":F
    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v6, v5, Landroid/support/constraint/motion/utils/StopLogic;

    const v7, 0x3089705f    # 1.0E-9f

    if-nez v6, :cond_0

    .line 2940
    iget-wide v8, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    sub-long v8, v2, v8

    long-to-float v6, v8

    mul-float v6, v6, v1

    mul-float v6, v6, v7

    iget v8, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    div-float v4, v6, v8

    .line 2942
    :cond_0
    iget v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v6, v4

    .line 2944
    .local v6, "position":F
    const/4 v8, 0x0

    .line 2945
    .local v8, "done":Z
    iget-boolean v9, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    if-eqz v9, :cond_1

    .line 2946
    iget v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 2949
    :cond_1
    const/4 v9, 0x0

    cmpl-float v10, v1, v9

    if-lez v10, :cond_2

    iget v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v10, v6, v10

    if-gez v10, :cond_3

    :cond_2
    cmpg-float v10, v1, v9

    if-gtz v10, :cond_4

    iget v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v10, v6, v10

    if-gtz v10, :cond_4

    .line 2951
    :cond_3
    iget v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 2952
    const/4 v8, 0x1

    .line 2954
    :cond_4
    if-eqz v5, :cond_6

    if-nez v8, :cond_6

    .line 2955
    iget-boolean v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    if-eqz v10, :cond_5

    .line 2956
    iget-wide v10, v0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    sub-long v10, v2, v10

    long-to-float v10, v10

    mul-float v10, v10, v7

    .line 2957
    .local v10, "time":F
    invoke-interface {v5, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 2958
    .end local v10    # "time":F
    goto :goto_0

    .line 2959
    :cond_5
    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 2962
    :cond_6
    :goto_0
    cmpl-float v5, v1, v9

    if-lez v5, :cond_7

    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v5, v6, v5

    if-gez v5, :cond_8

    :cond_7
    cmpg-float v5, v1, v9

    if-gtz v5, :cond_9

    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v5, v6, v5

    if-gtz v5, :cond_9

    .line 2964
    :cond_8
    iget v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 2966
    :cond_9
    iput v6, v0, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    .line 2967
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v5

    .line 2968
    .local v5, "n":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v15

    .line 2969
    .local v15, "time":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_b

    .line 2970
    invoke-virtual {v0, v7}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2971
    .local v14, "child":Landroid/view/View;
    iget-object v9, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Landroid/support/constraint/motion/MotionController;

    .line 2972
    .local v17, "frame":Landroid/support/constraint/motion/MotionController;
    if-eqz v17, :cond_a

    .line 2973
    iget-object v12, v0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    move-object/from16 v9, v17

    move-object v10, v14

    move v11, v6

    move-object/from16 v18, v12

    move-wide v12, v15

    move-object/from16 v19, v14

    .end local v14    # "child":Landroid/view/View;
    .local v19, "child":Landroid/view/View;
    move-object/from16 v14, v18

    invoke-virtual/range {v9 .. v14}, Landroid/support/constraint/motion/MotionController;->interpolate(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z

    goto :goto_2

    .line 2972
    .end local v19    # "child":Landroid/view/View;
    .restart local v14    # "child":Landroid/view/View;
    :cond_a
    move-object/from16 v19, v14

    .line 2969
    .end local v14    # "child":Landroid/view/View;
    .end local v17    # "frame":Landroid/support/constraint/motion/MotionController;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2976
    .end local v7    # "i":I
    :cond_b
    iget-boolean v7, v0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    if-eqz v7, :cond_c

    .line 2977
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 2979
    :cond_c
    return-void
.end method

.method private fireTransitionChange()V
    .locals 6

    .line 3696
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3697
    :cond_0
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 3698
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 3699
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-eqz v0, :cond_1

    .line 3700
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-interface {v0, p0, v3, v4}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V

    .line 3702
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 3703
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3704
    .local v3, "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-interface {v3, p0, v4, v5}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V

    .line 3705
    .end local v3    # "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    goto :goto_0

    .line 3707
    :cond_2
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 3709
    :cond_3
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 3710
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    .line 3711
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-eqz v2, :cond_4

    .line 3712
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-interface {v2, p0, v3, v4, v0}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionChange(Landroid/support/constraint/motion/MotionLayout;IIF)V

    .line 3714
    :cond_4
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 3715
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3716
    .local v2, "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    invoke-interface {v2, p0, v3, v4, v5}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionChange(Landroid/support/constraint/motion/MotionLayout;IIF)V

    .line 3717
    .end local v2    # "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    goto :goto_1

    .line 3719
    :cond_5
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 3722
    :cond_6
    return-void
.end method

.method private fireTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V
    .locals 2
    .param p1, "motionLayout"    # Landroid/support/constraint/motion/MotionLayout;
    .param p2, "mBeginState"    # I
    .param p3, "mEndState"    # I

    .line 4023
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-eqz v0, :cond_0

    .line 4024
    invoke-interface {v0, p0, p2, p3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V

    .line 4026
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 4027
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 4028
    .local v1, "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    invoke-interface {v1, p1, p2, p3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V

    .line 4029
    .end local v1    # "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    goto :goto_0

    .line 4031
    :cond_1
    return-void
.end method

.method private handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "view"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .line 3381
    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3382
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    .line 3383
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3384
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3385
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3386
    .local v4, "child":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p2

    invoke-direct {p0, v5, v6, v4, p4}, Landroid/support/constraint/motion/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3387
    return v1

    .line 3384
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3391
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p2

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p1

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p2

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3393
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 3394
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3395
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3396
    return v1

    .line 3400
    :cond_2
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3401
    return v1

    .line 3405
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 3205
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isInEditMode()Z

    move-result v0

    sput-boolean v0, Landroid/support/constraint/motion/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 3206
    const/4 v0, -0x1

    if-eqz p1, :cond_9

    .line 3207
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/R$styleable;->MotionLayout:[I

    .line 3208
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3209
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 3211
    .local v2, "N":I
    const/4 v3, 0x1

    .line 3212
    .local v3, "apply":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_7

    .line 3213
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 3214
    .local v5, "attr":I
    sget v6, Landroid/support/constraint/R$styleable;->MotionLayout_layoutDescription:I

    if-ne v5, v6, :cond_0

    .line 3215
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 3216
    .local v6, "n":I
    new-instance v7, Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, p0, v6}, Landroid/support/constraint/motion/MotionScene;-><init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionLayout;I)V

    iput-object v7, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 3217
    .end local v6    # "n":I
    goto :goto_1

    :cond_0
    sget v6, Landroid/support/constraint/R$styleable;->MotionLayout_currentState:I

    if-ne v5, v6, :cond_1

    .line 3218
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    goto :goto_1

    .line 3219
    :cond_1
    sget v6, Landroid/support/constraint/R$styleable;->MotionLayout_motionProgress:I

    if-ne v5, v6, :cond_2

    .line 3220
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 3221
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    goto :goto_1

    .line 3222
    :cond_2
    sget v6, Landroid/support/constraint/R$styleable;->MotionLayout_applyMotionScene:I

    if-ne v5, v6, :cond_3

    .line 3223
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    goto :goto_1

    .line 3224
    :cond_3
    sget v6, Landroid/support/constraint/R$styleable;->MotionLayout_showPaths:I

    const/4 v7, 0x0

    if-ne v5, v6, :cond_5

    .line 3225
    iget v6, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-nez v6, :cond_6

    .line 3226
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v7, 0x2

    :cond_4
    iput v7, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    goto :goto_1

    .line 3228
    :cond_5
    sget v6, Landroid/support/constraint/R$styleable;->MotionLayout_motionDebug:I

    if-ne v5, v6, :cond_6

    .line 3229
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 3212
    .end local v5    # "attr":I
    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3232
    .end local v4    # "i":I
    :cond_7
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3233
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v4, :cond_8

    .line 3234
    const-string v4, "MotionLayout"

    const-string v5, "WARNING NO app:layoutDescription tag"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    :cond_8
    if-nez v3, :cond_9

    .line 3237
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 3240
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "N":I
    .end local v3    # "apply":Z
    :cond_9
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-eqz v1, :cond_a

    .line 3241
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->checkStructure()V

    .line 3243
    :cond_a
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-ne v1, v0, :cond_b

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_b

    .line 3244
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 3245
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 3249
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getEndId()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 3254
    :cond_b
    return-void
.end method

.method private processTransitionCompleted()V
    .locals 5

    .line 3746
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3747
    :cond_0
    return-void

    .line 3749
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 3750
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3751
    .local v1, "state":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-eqz v2, :cond_2

    .line 3752
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionCompleted(Landroid/support/constraint/motion/MotionLayout;I)V

    .line 3754
    :cond_2
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 3755
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3756
    .local v3, "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p0, v4}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionCompleted(Landroid/support/constraint/motion/MotionLayout;I)V

    .line 3757
    .end local v3    # "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    goto :goto_1

    .line 3759
    .end local v1    # "state":Ljava/lang/Integer;
    :cond_3
    goto :goto_0

    .line 3760
    :cond_4
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3761
    return-void
.end method

.method private setupMotionViews()V
    .locals 17

    .line 1499
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v1

    .line 1501
    .local v1, "n":I
    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionLayout$Model;->build()V

    .line 1502
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1504
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getWidth()I

    move-result v9

    .line 1505
    .local v9, "layoutWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v10

    .line 1506
    .local v10, "layoutHeight":I
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionScene;->gatPathMotionArc()I

    move-result v11

    .line 1507
    .local v11, "arc":I
    const/4 v3, -0x1

    if-eq v11, v3, :cond_1

    .line 1508
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1509
    iget-object v4, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/MotionController;

    .line 1510
    .local v4, "motionController":Landroid/support/constraint/motion/MotionController;
    if-eqz v4, :cond_0

    .line 1511
    invoke-virtual {v4, v11}, Landroid/support/constraint/motion/MotionController;->setPathMotionArc(I)V

    .line 1508
    .end local v4    # "motionController":Landroid/support/constraint/motion/MotionController;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1516
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    move v12, v3

    .local v12, "i":I
    :goto_1
    if-ge v12, v1, :cond_3

    .line 1517
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/support/constraint/motion/MotionController;

    .line 1518
    .local v13, "motionController":Landroid/support/constraint/motion/MotionController;
    if-eqz v13, :cond_2

    .line 1519
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3, v13}, Landroid/support/constraint/motion/MotionScene;->getKeyFrames(Landroid/support/constraint/motion/MotionController;)V

    .line 1520
    iget v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v7

    move-object v3, v13

    move v4, v9

    move v5, v10

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/MotionController;->setup(IIFJ)V

    .line 1516
    .end local v13    # "motionController":Landroid/support/constraint/motion/MotionController;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1524
    .end local v12    # "i":I
    :cond_3
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionScene;->getStaggered()F

    move-result v3

    .line 1525
    .local v3, "stagger":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_f

    .line 1526
    float-to-double v4, v3

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 1527
    .local v2, "flip":Z
    :goto_2
    const/4 v4, 0x0

    .line 1528
    .local v4, "useMotionStagger":Z
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1529
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .local v5, "min":F
    const v6, -0x800001

    .line 1530
    .local v6, "max":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v1, :cond_7

    .line 1531
    iget-object v8, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/motion/MotionController;

    .line 1532
    .local v8, "f":Landroid/support/constraint/motion/MotionController;
    iget v12, v8, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_5

    .line 1533
    const/4 v4, 0x1

    .line 1534
    goto :goto_5

    .line 1536
    :cond_5
    invoke-virtual {v8}, Landroid/support/constraint/motion/MotionController;->getFinalX()F

    move-result v12

    .line 1537
    .local v12, "x":F
    invoke-virtual {v8}, Landroid/support/constraint/motion/MotionController;->getFinalY()F

    move-result v13

    .line 1538
    .local v13, "y":F
    if-eqz v2, :cond_6

    sub-float v14, v13, v12

    goto :goto_4

    :cond_6
    add-float v14, v13, v12

    .line 1539
    .local v14, "mdist":F
    :goto_4
    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1540
    invoke-static {v6, v14}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1530
    .end local v8    # "f":Landroid/support/constraint/motion/MotionController;
    .end local v12    # "x":F
    .end local v13    # "y":F
    .end local v14    # "mdist":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1542
    .end local v7    # "i":I
    :cond_7
    :goto_5
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_d

    .line 1543
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 1544
    const v6, -0x800001

    .line 1546
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    if-ge v8, v1, :cond_9

    .line 1547
    iget-object v12, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/motion/MotionController;

    .line 1548
    .local v12, "f":Landroid/support/constraint/motion/MotionController;
    iget v13, v12, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_8

    .line 1549
    iget v13, v12, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v5, v13}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1550
    iget v13, v12, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v6, v13}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1546
    .end local v12    # "f":Landroid/support/constraint/motion/MotionController;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1553
    .end local v8    # "i":I
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_7
    if-ge v8, v1, :cond_c

    .line 1554
    iget-object v12, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/motion/MotionController;

    .line 1555
    .restart local v12    # "f":Landroid/support/constraint/motion/MotionController;
    iget v13, v12, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_b

    .line 1557
    sub-float v13, v7, v3

    div-float v13, v7, v13

    iput v13, v12, Landroid/support/constraint/motion/MotionController;->mStaggerScale:F

    .line 1558
    if-eqz v2, :cond_a

    .line 1559
    iget v13, v12, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    sub-float v13, v6, v13

    sub-float v14, v6, v5

    div-float/2addr v13, v14

    mul-float v13, v13, v3

    sub-float v13, v3, v13

    iput v13, v12, Landroid/support/constraint/motion/MotionController;->mStaggerOffset:F

    goto :goto_8

    .line 1561
    :cond_a
    iget v13, v12, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    sub-float/2addr v13, v5

    mul-float v13, v13, v3

    sub-float v14, v6, v5

    div-float/2addr v13, v14

    sub-float v13, v3, v13

    iput v13, v12, Landroid/support/constraint/motion/MotionController;->mStaggerOffset:F

    .line 1553
    .end local v12    # "f":Landroid/support/constraint/motion/MotionController;
    :cond_b
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .end local v8    # "i":I
    :cond_c
    goto :goto_b

    .line 1566
    :cond_d
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    if-ge v8, v1, :cond_f

    .line 1567
    iget-object v12, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/motion/MotionController;

    .line 1568
    .restart local v12    # "f":Landroid/support/constraint/motion/MotionController;
    invoke-virtual {v12}, Landroid/support/constraint/motion/MotionController;->getFinalX()F

    move-result v13

    .line 1569
    .local v13, "x":F
    invoke-virtual {v12}, Landroid/support/constraint/motion/MotionController;->getFinalY()F

    move-result v14

    .line 1570
    .local v14, "y":F
    if-eqz v2, :cond_e

    sub-float v15, v14, v13

    goto :goto_a

    :cond_e
    add-float v15, v14, v13

    .line 1571
    .local v15, "mdist":F
    :goto_a
    sub-float v16, v7, v3

    div-float v0, v7, v16

    iput v0, v12, Landroid/support/constraint/motion/MotionController;->mStaggerScale:F

    .line 1572
    sub-float v0, v15, v5

    mul-float v0, v0, v3

    sub-float v16, v6, v5

    div-float v0, v0, v16

    sub-float v0, v3, v0

    iput v0, v12, Landroid/support/constraint/motion/MotionController;->mStaggerOffset:F

    .line 1566
    .end local v12    # "f":Landroid/support/constraint/motion/MotionController;
    .end local v13    # "x":F
    .end local v14    # "y":F
    .end local v15    # "mdist":F
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_9

    .line 1576
    .end local v2    # "flip":Z
    .end local v4    # "useMotionStagger":Z
    .end local v5    # "min":F
    .end local v6    # "max":F
    .end local v8    # "i":I
    :cond_f
    :goto_b
    return-void
.end method

.method private static willJump(FFF)Z
    .locals 7
    .param p0, "velocity"    # F
    .param p1, "position"    # F
    .param p2, "maxAcceleration"    # F

    .line 1661
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    cmpl-float v4, p0, v3

    if-lez v4, :cond_1

    .line 1662
    div-float v3, p0, p2

    .line 1663
    .local v3, "time":F
    mul-float v4, p0, v3

    mul-float v5, p2, v3

    mul-float v5, v5, v3

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    .line 1664
    .local v4, "pos":F
    add-float v2, p1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1666
    .end local v3    # "time":F
    .end local v4    # "pos":F
    :cond_1
    neg-float v4, p0

    div-float/2addr v4, p2

    .line 1667
    .local v4, "time":F
    mul-float v5, p0, v4

    mul-float v6, p2, v4

    mul-float v6, v6, v4

    div-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 1668
    .local v5, "pos":F
    add-float v2, p1, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public addTransitionListener(Landroid/support/constraint/motion/MotionLayout$TransitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3606
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 3609
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3610
    return-void
.end method

.method animateTo(F)V
    .locals 4
    .param p1, "position"    # F

    .line 1719
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    .line 1720
    return-void

    .line 1723
    :cond_0
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    if-eqz v1, :cond_1

    .line 1726
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1729
    :cond_1
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_2

    .line 1730
    return-void

    .line 1732
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 1733
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1734
    .local v2, "currentPosition":F
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1735
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 1736
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 1737
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1738
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    .line 1739
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 1740
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1741
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1745
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1746
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 1747
    return-void
.end method

.method disableAutoTransition(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .line 3992
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    .line 3993
    return-void

    .line 3995
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->disableAutoTransition(Z)V

    .line 3996
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2881
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 2888
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2889
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v1, :cond_0

    .line 2890
    return-void

    .line 2895
    :cond_0
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 2896
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2897
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    .line 2898
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v3

    .line 2899
    .local v3, "currentDrawTime":J
    iget-wide v5, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_2

    .line 2900
    sub-long v5, v3, v5

    .line 2901
    .local v5, "delay":J
    const-wide/32 v7, 0xbebc200

    cmp-long v1, v5, v7

    if-lez v1, :cond_1

    .line 2902
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    int-to-float v1, v1

    long-to-float v7, v5

    const v8, 0x3089705f    # 1.0E-9f

    mul-float v7, v7, v8

    div-float/2addr v1, v7

    .line 2903
    .local v1, "fps":F
    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v8, v1, v7

    float-to-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    iput v8, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    .line 2904
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    .line 2905
    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 2907
    .end local v1    # "fps":F
    .end local v5    # "delay":J
    :cond_1
    goto :goto_0

    .line 2908
    :cond_2
    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 2910
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2911
    .local v0, "paint":Landroid/graphics/Paint;
    const/high16 v1, 0x42280000    # 42.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2912
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v1

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v1, v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v1, v5

    .line 2913
    .local v1, "p":F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fps "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-static {p0, v7}, Landroid/support/constraint/motion/Debug;->getState(Landroid/support/constraint/motion/MotionLayout;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2914
    .local v6, "str":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-static {p0, v8}, Landroid/support/constraint/motion/Debug;->getState(Landroid/support/constraint/motion/MotionLayout;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (progress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    const-string v8, "undefined"

    goto :goto_1

    .line 2915
    :cond_3
    invoke-static {p0, v8}, Landroid/support/constraint/motion/Debug;->getState(Landroid/support/constraint/motion/MotionLayout;I)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2916
    const/high16 v7, -0x1000000

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2917
    const/high16 v7, 0x41300000    # 11.0f

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x1d

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2918
    const v7, -0x77ff78

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2919
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x1e

    int-to-float v7, v7

    invoke-virtual {p1, v6, v5, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2923
    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v1    # "p":F
    .end local v3    # "currentDrawTime":J
    .end local v6    # "str":Ljava/lang/String;
    :cond_4
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-le v0, v2, :cond_6

    .line 2924
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDevModeDraw:Landroid/support/constraint/motion/MotionLayout$DevModeDraw;

    if-nez v0, :cond_5

    .line 2925
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDevModeDraw:Landroid/support/constraint/motion/MotionLayout$DevModeDraw;

    .line 2927
    :cond_5
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDevModeDraw:Landroid/support/constraint/motion/MotionLayout$DevModeDraw;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v2

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/support/constraint/motion/MotionLayout$DevModeDraw;->draw(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V

    .line 2929
    :cond_6
    return-void
.end method

.method public enableTransition(IZ)V
    .locals 5
    .param p1, "transitionID"    # I
    .param p2, "enable"    # Z

    .line 996
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->getTransition(I)Landroid/support/constraint/motion/MotionScene$Transition;

    move-result-object v0

    .line 997
    .local v0, "t":Landroid/support/constraint/motion/MotionScene$Transition;
    if-eqz p2, :cond_0

    .line 998
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/MotionScene$Transition;->setEnable(Z)V

    .line 999
    return-void

    .line 1001
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-ne v0, v1, :cond_2

    .line 1002
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    invoke-virtual {v1, v2}, Landroid/support/constraint/motion/MotionScene;->getTransitionsWithState(I)Ljava/util/List;

    move-result-object v1

    .line 1003
    .local v1, "transitions":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/motion/MotionScene$Transition;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 1004
    .local v3, "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1005
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iput-object v3, v2, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 1006
    goto :goto_1

    .line 1008
    .end local v3    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_1
    goto :goto_0

    .line 1010
    .end local v1    # "transitions":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/motion/MotionScene$Transition;>;"
    :cond_2
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/MotionScene$Transition;->setEnable(Z)V

    .line 1012
    return-void
.end method

.method evaluate(Z)V
    .locals 24
    .param p1, "force"    # Z

    .line 2983
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 2984
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 2986
    :cond_0
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-lez v5, :cond_1

    cmpg-float v5, v1, v3

    if-gez v5, :cond_1

    .line 2987
    iput v2, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 2990
    :cond_1
    const/4 v5, 0x0

    .line 2991
    .local v5, "newState":Z
    iget-boolean v6, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    if-nez v6, :cond_2

    iget-boolean v6, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    if-eqz v6, :cond_26

    if-nez p1, :cond_2

    iget v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v6, v6, v1

    if-eqz v6, :cond_26

    .line 2992
    :cond_2
    iget v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    sub-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 2993
    .local v1, "dir":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v6

    .line 2995
    .local v6, "currentTime":J
    const/4 v8, 0x0

    .line 2996
    .local v8, "deltaPos":F
    iget-object v9, v0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v10, v9, Landroid/support/constraint/motion/MotionInterpolator;

    const v11, 0x3089705f    # 1.0E-9f

    if-nez v10, :cond_3

    .line 2997
    iget-wide v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    sub-long v12, v6, v12

    long-to-float v10, v12

    mul-float v10, v10, v1

    mul-float v10, v10, v11

    iget v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    div-float v8, v10, v12

    .line 2998
    iput v8, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 3000
    :cond_3
    iget v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v10, v8

    .line 3002
    .local v10, "position":F
    const/4 v12, 0x0

    .line 3003
    .local v12, "done":Z
    iget-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    if-eqz v13, :cond_4

    .line 3004
    iget v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 3007
    :cond_4
    const/4 v13, 0x0

    cmpl-float v14, v1, v4

    if-lez v14, :cond_5

    iget v14, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v14, v10, v14

    if-gez v14, :cond_6

    :cond_5
    cmpg-float v14, v1, v4

    if-gtz v14, :cond_7

    iget v14, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v14, v10, v14

    if-gtz v14, :cond_7

    .line 3009
    :cond_6
    iget v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 3010
    iput-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 3011
    const/4 v12, 0x1

    .line 3016
    :cond_7
    iput v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 3017
    iput v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 3018
    iput-wide v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 3020
    const v14, 0x3727c5ac    # 1.0E-5f

    if-eqz v9, :cond_e

    if-nez v12, :cond_e

    .line 3021
    iget-boolean v15, v0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    if-eqz v15, :cond_c

    .line 3022
    iget-wide v2, v0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    sub-long v2, v6, v2

    long-to-float v2, v2

    mul-float v2, v2, v11

    .line 3023
    .local v2, "time":F
    invoke-interface {v9, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 3027
    .end local v10    # "position":F
    .local v3, "position":F
    iput v3, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 3029
    iput-wide v6, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 3030
    iget-object v9, v0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v10, v9, Landroid/support/constraint/motion/MotionInterpolator;

    if-eqz v10, :cond_b

    .line 3031
    check-cast v9, Landroid/support/constraint/motion/MotionInterpolator;

    invoke-virtual {v9}, Landroid/support/constraint/motion/MotionInterpolator;->getVelocity()F

    move-result v9

    .line 3032
    .local v9, "lastVelocity":F
    iput v9, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 3033
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    mul-float v10, v10, v11

    cmpg-float v10, v10, v14

    if-gtz v10, :cond_8

    .line 3034
    iput-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 3036
    :cond_8
    cmpl-float v10, v9, v4

    if-lez v10, :cond_9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, v3, v10

    if-ltz v11, :cond_9

    .line 3037
    move v3, v10

    iput v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 3038
    iput-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 3040
    :cond_9
    cmpg-float v10, v9, v4

    if-gez v10, :cond_a

    cmpg-float v10, v3, v4

    if-gtz v10, :cond_a

    .line 3041
    move v3, v4

    iput v4, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 3042
    iput-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    move v10, v3

    goto :goto_0

    .line 3046
    .end local v2    # "time":F
    .end local v9    # "lastVelocity":F
    :cond_a
    move v10, v3

    goto :goto_0

    .line 3030
    .restart local v2    # "time":F
    :cond_b
    move v10, v3

    .line 3046
    .end local v2    # "time":F
    .end local v3    # "position":F
    .restart local v10    # "position":F
    :goto_0
    goto :goto_1

    .line 3048
    :cond_c
    move v2, v10

    .line 3049
    .local v2, "p2":F
    invoke-interface {v9, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    .line 3050
    iget-object v3, v0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v9, v3, Landroid/support/constraint/motion/MotionInterpolator;

    if-eqz v9, :cond_d

    .line 3051
    check-cast v3, Landroid/support/constraint/motion/MotionInterpolator;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionInterpolator;->getVelocity()F

    move-result v3

    iput v3, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    goto :goto_1

    .line 3053
    :cond_d
    add-float v9, v2, v8

    invoke-interface {v3, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 3054
    sub-float v3, v2, v10

    mul-float v3, v3, v1

    div-float/2addr v3, v8

    iput v3, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 3059
    .end local v2    # "p2":F
    :cond_e
    :goto_1
    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v14

    if-lez v2, :cond_f

    .line 3060
    sget-object v2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 3063
    :cond_f
    cmpl-float v2, v1, v4

    if-lez v2, :cond_10

    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v2, v10, v2

    if-gez v2, :cond_11

    :cond_10
    cmpg-float v2, v1, v4

    if-gtz v2, :cond_12

    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v2, v10, v2

    if-gtz v2, :cond_12

    .line 3065
    :cond_11
    iget v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 3066
    iput-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 3069
    :cond_12
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v10, v2

    if-gez v3, :cond_13

    cmpg-float v2, v10, v4

    if-gtz v2, :cond_14

    .line 3070
    :cond_13
    iput-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 3071
    sget-object v2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 3074
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v2

    .line 3075
    .local v2, "n":I
    iput-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    .line 3076
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v22

    .line 3080
    .local v22, "time":J
    iput v10, v0, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    .line 3081
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_16

    .line 3082
    invoke-virtual {v0, v3}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3083
    .local v9, "child":Landroid/view/View;
    iget-object v11, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/constraint/motion/MotionController;

    .line 3084
    .local v11, "frame":Landroid/support/constraint/motion/MotionController;
    if-eqz v11, :cond_15

    .line 3085
    iget-boolean v14, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    iget-object v13, v0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    move-object/from16 v16, v11

    move-object/from16 v17, v9

    move/from16 v18, v10

    move-wide/from16 v19, v22

    move-object/from16 v21, v13

    invoke-virtual/range {v16 .. v21}, Landroid/support/constraint/motion/MotionController;->interpolate(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z

    move-result v13

    or-int/2addr v13, v14

    iput-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    .line 3081
    .end local v9    # "child":Landroid/view/View;
    .end local v11    # "frame":Landroid/support/constraint/motion/MotionController;
    :cond_15
    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x0

    goto :goto_2

    .line 3093
    .end local v3    # "i":I
    :cond_16
    const/4 v3, 0x1

    cmpl-float v9, v1, v4

    if-lez v9, :cond_17

    iget v9, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v9, v10, v9

    if-gez v9, :cond_18

    :cond_17
    cmpg-float v9, v1, v4

    if-gtz v9, :cond_19

    iget v9, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v9, v10, v9

    if-gtz v9, :cond_19

    :cond_18
    const/4 v9, 0x1

    goto :goto_3

    :cond_19
    const/4 v9, 0x0

    .line 3095
    .local v9, "end":Z
    :goto_3
    iget-boolean v11, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    if-nez v11, :cond_1a

    iget-boolean v11, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    if-nez v11, :cond_1a

    if-eqz v9, :cond_1a

    .line 3096
    sget-object v11, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v11}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 3098
    :cond_1a
    iget-boolean v11, v0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    if-eqz v11, :cond_1b

    .line 3099
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 3102
    :cond_1b
    iget-boolean v11, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    if-nez v9, :cond_1c

    const/4 v13, 0x1

    goto :goto_4

    :cond_1c
    const/4 v13, 0x0

    :goto_4
    or-int v3, v11, v13

    iput-boolean v3, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    .line 3105
    cmpg-float v3, v10, v4

    if-gtz v3, :cond_1d

    iget v3, v0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    const/4 v11, -0x1

    if-eq v3, v11, :cond_1d

    .line 3109
    iget v11, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq v11, v3, :cond_1d

    .line 3110
    const/4 v5, 0x1

    .line 3111
    iput v3, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 3112
    iget-object v11, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v11, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v3

    .line 3113
    .local v3, "set":Landroid/support/constraint/ConstraintSet;
    invoke-virtual {v3, v0}, Landroid/support/constraint/ConstraintSet;->applyCustomAttributes(Landroid/support/constraint/ConstraintLayout;)V

    .line 3114
    sget-object v11, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v11}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 3118
    .end local v3    # "set":Landroid/support/constraint/ConstraintSet;
    :cond_1d
    float-to-double v13, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v13, v16

    if-ltz v3, :cond_1e

    .line 3122
    iget v3, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget v11, v0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-eq v3, v11, :cond_1e

    .line 3123
    const/4 v3, 0x1

    .line 3124
    .end local v5    # "newState":Z
    .local v3, "newState":Z
    iput v11, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 3125
    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v5, v11}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v5

    .line 3126
    .local v5, "set":Landroid/support/constraint/ConstraintSet;
    invoke-virtual {v5, v0}, Landroid/support/constraint/ConstraintSet;->applyCustomAttributes(Landroid/support/constraint/ConstraintLayout;)V

    .line 3127
    sget-object v11, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v11}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    move v5, v3

    .line 3131
    .end local v3    # "newState":Z
    .local v5, "newState":Z
    :cond_1e
    iget-boolean v3, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    if-nez v3, :cond_22

    iget-boolean v3, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    if-eqz v3, :cond_1f

    goto :goto_5

    .line 3134
    :cond_1f
    cmpl-float v3, v1, v4

    if-lez v3, :cond_20

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v11, v10, v3

    if-eqz v11, :cond_21

    :cond_20
    cmpg-float v3, v1, v4

    if-gez v3, :cond_23

    cmpl-float v3, v10, v4

    if-nez v3, :cond_23

    .line 3135
    :cond_21
    sget-object v3, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v3}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    goto :goto_6

    .line 3132
    :cond_22
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 3137
    :cond_23
    :goto_6
    iget-boolean v3, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    if-nez v3, :cond_24

    iget-boolean v3, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    if-eqz v3, :cond_24

    cmpl-float v3, v1, v4

    if-lez v3, :cond_24

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v11, v10, v3

    if-eqz v11, :cond_25

    :cond_24
    cmpg-float v3, v1, v4

    if-gez v3, :cond_26

    cmpl-float v3, v10, v4

    if-nez v3, :cond_26

    .line 3138
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->onNewStateAttachHandlers()V

    .line 3141
    .end local v1    # "dir":F
    .end local v2    # "n":I
    .end local v6    # "currentTime":J
    .end local v8    # "deltaPos":F
    .end local v9    # "end":Z
    .end local v10    # "position":F
    .end local v12    # "done":Z
    .end local v22    # "time":J
    :cond_26
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_28

    .line 3142
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-eq v1, v2, :cond_27

    .line 3143
    const/4 v5, 0x1

    .line 3145
    :cond_27
    iput v2, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    goto :goto_7

    .line 3146
    :cond_28
    cmpg-float v1, v1, v4

    if-gtz v1, :cond_2a

    .line 3147
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    if-eq v1, v2, :cond_29

    .line 3148
    const/4 v1, 0x1

    move v5, v1

    .line 3150
    :cond_29
    iput v2, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 3153
    :cond_2a
    :goto_7
    iget-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    or-int/2addr v1, v5

    iput-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3155
    if-eqz v5, :cond_2b

    iget-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    if-nez v1, :cond_2b

    .line 3156
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 3159
    :cond_2b
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 3160
    return-void
.end method

.method protected fireTransitionCompleted()V
    .locals 4

    .line 3730
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3731
    :cond_0
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3732
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 3733
    const/4 v0, -0x1

    .line 3734
    .local v0, "lastState":I
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3735
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3737
    :cond_1
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq v0, v2, :cond_2

    if-eq v2, v1, :cond_2

    .line 3738
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3742
    .end local v0    # "lastState":I
    :cond_2
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->processTransitionCompleted()V

    .line 3743
    return-void
.end method

.method public fireTrigger(IZF)V
    .locals 2
    .param p1, "triggerId"    # I
    .param p2, "positive"    # Z
    .param p3, "progress"    # F

    .line 3685
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-eqz v0, :cond_0

    .line 3686
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionTrigger(Landroid/support/constraint/motion/MotionLayout;IZF)V

    .line 3688
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3689
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3690
    .local v1, "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    invoke-interface {v1, p0, p1, p2, p3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionTrigger(Landroid/support/constraint/motion/MotionLayout;IZF)V

    .line 3691
    .end local v1    # "listeners":Landroid/support/constraint/motion/MotionLayout$TransitionListener;
    goto :goto_0

    .line 3693
    :cond_1
    return-void
.end method

.method getAnchorDpDt(IFFF[F)V
    .locals 6
    .param p1, "mTouchAnchorId"    # I
    .param p2, "pos"    # F
    .param p3, "locationX"    # F
    .param p4, "locationY"    # F
    .param p5, "mAnchorDpDt"    # [F

    .line 3554
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .local v2, "v":Landroid/view/View;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/motion/MotionController;

    .line 3558
    .local v0, "f":Landroid/support/constraint/motion/MotionController;
    if-eqz v0, :cond_1

    .line 3559
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/support/constraint/motion/MotionController;->getDpDt(FFF[F)V

    .line 3560
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v1

    .line 3561
    .local v1, "y":F
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->lastPos:F

    sub-float v3, p2, v3

    .line 3562
    .local v3, "deltaPos":F
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->lastY:F

    sub-float v4, v1, v4

    .line 3563
    .local v4, "deltaY":F
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_0

    div-float v5, v4, v3

    goto :goto_0

    :cond_0
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 3568
    .local v5, "dydp":F
    :goto_0
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->lastPos:F

    .line 3569
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->lastY:F

    .line 3570
    .end local v1    # "y":F
    .end local v3    # "deltaPos":F
    .end local v4    # "deltaY":F
    .end local v5    # "dydp":F
    goto :goto_2

    .line 3571
    :cond_1
    if-nez v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3572
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    nop

    .line 3573
    .local v1, "idName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING could not find view id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MotionLayout"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    .end local v1    # "idName":Ljava/lang/String;
    :goto_2
    return-void
.end method

.method public getConstraintSet(I)Landroid/support/constraint/ConstraintSet;
    .locals 1
    .param p1, "id"    # I

    .line 3854
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    .line 3855
    const/4 v0, 0x0

    return-object v0

    .line 3857
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v0

    return-object v0
.end method

.method public getConstraintSetIds()[I
    .locals 1

    .line 3841
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    .line 3842
    const/4 v0, 0x0

    return-object v0

    .line 3844
    :cond_0
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getConstraintSetIds()[I

    move-result-object v0

    return-object v0
.end method

.method getConstraintSetNames(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .line 3980
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    .line 3981
    const/4 v0, 0x0

    return-object v0

    .line 3983
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->lookUpConstraintName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentState()I
    .locals 1

    .line 3527
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    return v0
.end method

.method public getDebugMode(Z)V
    .locals 1
    .param p1, "showPaths"    # Z

    .line 3364
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 3365
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 3366
    return-void
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

    .line 3906
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    .line 3907
    const/4 v0, 0x0

    return-object v0

    .line 3909
    :cond_0
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDesignTool()Landroid/support/constraint/motion/DesignTool;
    .locals 1

    .line 3767
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDesignTool:Landroid/support/constraint/motion/DesignTool;

    if-nez v0, :cond_0

    .line 3768
    new-instance v0, Landroid/support/constraint/motion/DesignTool;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/DesignTool;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDesignTool:Landroid/support/constraint/motion/DesignTool;

    .line 3770
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDesignTool:Landroid/support/constraint/motion/DesignTool;

    return-object v0
.end method

.method public getEndState()I
    .locals 1

    .line 3928
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    return v0
.end method

.method protected getNanoTime()J
    .locals 2

    .line 983
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    .line 3536
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    return v0
.end method

.method public getStartState()I
    .locals 1

    .line 3919
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    return v0
.end method

.method public getTargetPosition()F
    .locals 1

    .line 3938
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    return v0
.end method

.method public getTransition(I)Landroid/support/constraint/motion/MotionScene$Transition;
    .locals 1
    .param p1, "id"    # I

    .line 3956
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->getTransitionById(I)Landroid/support/constraint/motion/MotionScene$Transition;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 1

    .line 1434
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_0

    .line 1435
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1437
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$StateCache;->recordState()V

    .line 1438
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$StateCache;->getTransitionState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionTimeMs()J
    .locals 2

    .line 3583
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_0

    .line 3584
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 3586
    :cond_0
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getVelocity()F
    .locals 1

    .line 1929
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    return v0
.end method

.method public getViewVelocity(Landroid/view/View;FF[FI)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "posOnViewX"    # F
    .param p3, "posOnViewY"    # F
    .param p4, "returnVelocity"    # [F
    .param p5, "type"    # I

    .line 1942
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 1943
    .local v0, "v":F
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1944
    .local v1, "position":F
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_0

    .line 1945
    const v2, 0x3727c5ac    # 1.0E-5f

    .line 1946
    .local v2, "deltaT":F
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 1947
    .local v3, "dir":F
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v5, v2

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 1948
    .local v4, "interpos":F
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v6, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 1949
    sub-float/2addr v4, v1

    .line 1950
    div-float/2addr v4, v2

    .line 1951
    mul-float v5, v3, v4

    iget v6, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    div-float v0, v5, v6

    move v8, v1

    goto :goto_0

    .line 1944
    .end local v2    # "deltaT":F
    .end local v3    # "dir":F
    .end local v4    # "interpos":F
    :cond_0
    move v8, v1

    .line 1954
    .end local v1    # "position":F
    .local v8, "position":F
    :goto_0
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v2, v1, Landroid/support/constraint/motion/MotionInterpolator;

    if-eqz v2, :cond_1

    .line 1955
    check-cast v1, Landroid/support/constraint/motion/MotionInterpolator;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionInterpolator;->getVelocity()F

    move-result v0

    .line 1958
    :cond_1
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/support/constraint/motion/MotionController;

    .line 1959
    .local v9, "f":Landroid/support/constraint/motion/MotionController;
    and-int/lit8 v1, p5, 0x1

    if-nez v1, :cond_2

    .line 1960
    nop

    .line 1961
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1960
    move-object v1, v9

    move v2, v8

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/motion/MotionController;->getPostLayoutDvDp(FIIFF[F)V

    goto :goto_1

    .line 1964
    :cond_2
    invoke-virtual {v9, v8, p2, p3, p4}, Landroid/support/constraint/motion/MotionController;->getDpDt(FFF[F)V

    .line 1966
    :goto_1
    const/4 v1, 0x2

    if-ge p5, v1, :cond_3

    .line 1967
    const/4 v1, 0x0

    aget v2, p4, v1

    mul-float v2, v2, v0

    aput v2, p4, v1

    .line 1968
    const/4 v1, 0x1

    aget v2, p4, v1

    mul-float v2, v2, v0

    aput v2, p4, v1

    .line 1970
    :cond_3
    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 2

    .line 1276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1277
    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->isAttachedToWindow()Z

    move-result v0

    return v0

    .line 1279
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInteractionEnabled()Z
    .locals 1

    .line 4018
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    return v0
.end method

.method public loadLayoutDescription(I)V
    .locals 5
    .param p1, "motionScene"    # I

    .line 1254
    if-eqz p1, :cond_2

    .line 1256
    :try_start_0
    new-instance v0, Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroid/support/constraint/motion/MotionScene;-><init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionLayout;I)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 1257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1258
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0, p0}, Landroid/support/constraint/motion/MotionScene;->readFallback(Landroid/support/constraint/motion/MotionLayout;)V

    .line 1259
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1260
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 1261
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/MotionScene;->setRtl(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    :cond_1
    goto :goto_0

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unable to parse MotionScene file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1267
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 1269
    :goto_0
    return-void
.end method

.method lookUpConstraintId(Ljava/lang/String;)I
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 3967
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    .line 3968
    const/4 v0, 0x0

    return v0

    .line 3970
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected obtainVelocityTracker()Landroid/support/constraint/motion/MotionLayout$MotionTracker;
    .locals 1

    .line 992
    invoke-static {}, Landroid/support/constraint/motion/MotionLayout$MyTracker;->obtain()Landroid/support/constraint/motion/MotionLayout$MyTracker;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 3473
    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->onAttachedToWindow()V

    .line 3474
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3475
    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v0

    .line 3476
    .local v0, "cSet":Landroid/support/constraint/ConstraintSet;
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1, p0}, Landroid/support/constraint/motion/MotionScene;->readFallback(Landroid/support/constraint/motion/MotionLayout;)V

    .line 3477
    if-eqz v0, :cond_0

    .line 3478
    invoke-virtual {v0, p0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    .line 3480
    :cond_0
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 3482
    .end local v0    # "cSet":Landroid/support/constraint/ConstraintSet;
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->onNewStateAttachHandlers()V

    .line 3483
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-eqz v0, :cond_2

    .line 3484
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$StateCache;->apply()V

    goto :goto_0

    .line 3486
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getAutoTransition()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 3487
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->transitionToEnd()V

    .line 3488
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 3489
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 3492
    :cond_3
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3416
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 3419
    :cond_0
    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 3420
    .local v0, "currentTransition":Landroid/support/constraint/motion/MotionScene$Transition;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3421
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object v2

    .line 3422
    .local v2, "touchResponse":Landroid/support/constraint/motion/TouchResponse;
    if-eqz v2, :cond_4

    .line 3423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 3424
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2, p0, v3}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    .line 3425
    .local v3, "region":Landroid/graphics/RectF;
    if-eqz v3, :cond_1

    .line 3426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3427
    return v1

    .line 3430
    .end local v3    # "region":Landroid/graphics/RectF;
    :cond_1
    invoke-virtual {v2}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegionId()I

    move-result v3

    .line 3431
    .local v3, "regionId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 3432
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 3433
    :cond_2
    invoke-virtual {p0, v3}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3435
    :cond_3
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 3436
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3437
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3440
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-direct {p0, v5, v5, v4, p1}, Landroid/support/constraint/motion/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3442
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 3449
    .end local v2    # "touchResponse":Landroid/support/constraint/motion/TouchResponse;
    .end local v3    # "regionId":I
    :cond_4
    return v1

    .line 3417
    .end local v0    # "currentTransition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_5
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 3166
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 3171
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v2, :cond_0

    .line 3172
    invoke-super/range {p0 .. p5}, Landroid/support/constraint/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3190
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 3173
    return-void

    .line 3175
    :cond_0
    sub-int v2, p4, p2

    .line 3176
    .local v2, "w":I
    sub-int v3, p5, p3

    .line 3177
    .local v3, "h":I
    :try_start_1
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mLastLayoutWidth:I

    if-ne v4, v2, :cond_1

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mLastLayoutHeight:I

    if-eq v4, v3, :cond_2

    .line 3178
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 3179
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 3185
    :cond_2
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mLastLayoutWidth:I

    .line 3186
    iput v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastLayoutHeight:I

    .line 3187
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOldWidth:I

    .line 3188
    iput v3, p0, Landroid/support/constraint/motion/MotionLayout;->mOldHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3190
    .end local v2    # "w":I
    .end local v3    # "h":I
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 3191
    nop

    .line 3192
    return-void

    .line 3190
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 3191
    throw v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2342
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    .line 2343
    invoke-super {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;->onMeasure(II)V

    .line 2344
    return-void

    .line 2346
    :cond_0
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    if-eq v0, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 2347
    .local v0, "recalc":Z
    :goto_1
    iget-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    if-eqz v2, :cond_3

    .line 2348
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 2349
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->onNewStateAttachHandlers()V

    .line 2350
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->processTransitionCompleted()V

    .line 2351
    const/4 v0, 0x1

    .line 2354
    :cond_3
    iget-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mDirtyHierarchy:Z

    if-eqz v1, :cond_4

    .line 2355
    const/4 v0, 0x1

    .line 2358
    :cond_4
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    .line 2359
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    .line 2361
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v1

    .line 2362
    .local v1, "startId":I
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getEndId()I

    move-result v2

    .line 2363
    .local v2, "endId":I
    const/4 v3, 0x1

    .line 2364
    .local v3, "setMeasure":Z
    if-nez v0, :cond_5

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v4, v1, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->isNotConfiguredWith(II)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 2365
    invoke-super {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;->onMeasure(II)V

    .line 2366
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v6, v1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v6

    iget-object v7, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v7, v2}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 2367
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionLayout$Model;->reEvaluateState()V

    .line 2368
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v4, v1, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->setMeasuredId(II)V

    .line 2369
    const/4 v3, 0x0

    .line 2372
    :cond_6
    iget-boolean v4, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    if-nez v4, :cond_7

    if-eqz v3, :cond_c

    .line 2373
    :cond_7
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 2374
    .local v4, "heightPadding":I
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 2375
    .local v5, "widthPadding":I
    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 2376
    .local v6, "androidLayoutWidth":I
    iget-object v7, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    .line 2377
    .local v7, "androidLayoutHeight":I
    iget v8, p0, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_8

    if-nez v8, :cond_9

    .line 2378
    :cond_8
    iget v8, p0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    int-to-float v10, v8

    iget v11, p0, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    iget v12, p0, Landroid/support/constraint/motion/MotionLayout;->mEndWrapWidth:I

    sub-int/2addr v12, v8

    int-to-float v8, v12

    mul-float v11, v11, v8

    add-float/2addr v10, v11

    float-to-int v6, v10

    .line 2379
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 2381
    :cond_9
    iget v8, p0, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    if-eq v8, v9, :cond_a

    if-nez v8, :cond_b

    .line 2382
    :cond_a
    iget v8, p0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    int-to-float v9, v8

    iget v10, p0, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    iget v11, p0, Landroid/support/constraint/motion/MotionLayout;->mEndWrapHeight:I

    sub-int/2addr v11, v8

    int-to-float v8, v11

    mul-float v10, v10, v8

    add-float/2addr v9, v10

    float-to-int v7, v9

    .line 2383
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 2385
    :cond_b
    invoke-virtual {p0, v6, v7}, Landroid/support/constraint/motion/MotionLayout;->setMeasuredDimension(II)V

    .line 2387
    .end local v4    # "heightPadding":I
    .end local v5    # "widthPadding":I
    .end local v6    # "androidLayoutWidth":I
    .end local v7    # "androidLayoutHeight":I
    :cond_c
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->evaluateLayout()V

    .line 2388
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 2519
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 2514
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 10
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
    .param p5, "type"    # I

    .line 2443
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_c

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2447
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2448
    return-void

    .line 2451
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 2452
    .local v0, "currentTransition":Landroid/support/constraint/motion/MotionScene$Transition;
    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2453
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object v2

    .line 2454
    .local v2, "touchResponse":Landroid/support/constraint/motion/TouchResponse;
    if-eqz v2, :cond_2

    .line 2455
    invoke-virtual {v2}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegionId()I

    move-result v3

    .line 2456
    .local v3, "regionId":I
    if-eq v3, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 2457
    return-void

    .line 2462
    .end local v2    # "touchResponse":Landroid/support/constraint/motion/TouchResponse;
    .end local v3    # "regionId":I
    :cond_2
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getMoveWhenScrollAtTop()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2464
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    cmpl-float v5, v2, v3

    if-eqz v5, :cond_3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2465
    return-void

    .line 2470
    :cond_4
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/motion/TouchResponse;->getFlags()I

    move-result v1

    and-int/2addr v1, v5

    if-eqz v1, :cond_8

    .line 2471
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    int-to-float v6, p2

    int-to-float v7, p3

    invoke-virtual {v1, v6, v7}, Landroid/support/constraint/motion/MotionScene;->getProgressDirection(FF)F

    move-result v1

    .line 2472
    .local v1, "dir":F
    iget v6, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpg-float v7, v6, v4

    if-gtz v7, :cond_5

    cmpg-float v7, v1, v4

    if-ltz v7, :cond_6

    :cond_5
    cmpl-float v3, v6, v3

    if-ltz v3, :cond_8

    cmpl-float v3, v1, v4

    if-lez v3, :cond_8

    .line 2474
    :cond_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_7

    .line 2475
    invoke-virtual {p1, v2}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 2477
    new-instance v2, Landroid/support/constraint/motion/MotionLayout$1;

    invoke-direct {v2, p0, p1}, Landroid/support/constraint/motion/MotionLayout$1;-><init>(Landroid/support/constraint/motion/MotionLayout;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2484
    :cond_7
    return-void

    .line 2491
    .end local v1    # "dir":F
    :cond_8
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 2492
    .local v1, "progress":F
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v3

    .line 2493
    .local v3, "time":J
    int-to-float v6, p2

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDX:F

    .line 2494
    int-to-float v6, p3

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDY:F

    .line 2495
    iget-wide v6, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetTime:J

    sub-long v6, v3, v6

    long-to-double v6, v6

    const-wide v8, 0x3e112e0be826d695L    # 1.0E-9

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    double-to-float v6, v6

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDT:F

    .line 2496
    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetTime:J

    .line 2500
    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    int-to-float v7, p2

    int-to-float v8, p3

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/motion/MotionScene;->processScrollMove(FF)V

    .line 2501
    iget v6, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_9

    .line 2502
    aput p2, p4, v2

    .line 2503
    aput p3, p4, v5

    .line 2505
    :cond_9
    invoke-virtual {p0, v2}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 2506
    aget v2, p4, v2

    if-nez v2, :cond_a

    aget v2, p4, v5

    if-eqz v2, :cond_b

    .line 2507
    :cond_a
    iput-boolean v5, p0, Landroid/support/constraint/motion/MotionLayout;->mUndergoingMotion:Z

    .line 2510
    :cond_b
    return-void

    .line 2444
    .end local v0    # "currentTransition":Landroid/support/constraint/motion/MotionScene$Transition;
    .end local v1    # "progress":F
    .end local v3    # "time":J
    :cond_c
    :goto_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I

    .line 2438
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .line 2409
    return-void
.end method

.method onNewStateAttachHandlers()V
    .locals 2

    .line 3506
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    .line 3507
    return-void

    .line 3509
    :cond_0
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    invoke-virtual {v0, p0, v1}, Landroid/support/constraint/motion/MotionScene;->autoTransition(Landroid/support/constraint/motion/MotionLayout;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3510
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 3511
    return-void

    .line 3513
    :cond_1
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 3514
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1, p0, v0}, Landroid/support/constraint/motion/MotionScene;->addOnClickListeners(Landroid/support/constraint/motion/MotionLayout;I)V

    .line 3516
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->supportTouch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3517
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->setupTouch()V

    .line 3519
    :cond_3
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 3496
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_0

    .line 3497
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/motion/MotionScene;->setRtl(Z)V

    .line 3499
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .line 2395
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 2397
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 2398
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/motion/TouchResponse;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2401
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2399
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 2418
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    .line 2419
    return-void

    .line 2421
    :cond_0
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDX:F

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDT:F

    div-float/2addr v1, v2

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDY:F

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/support/constraint/motion/MotionScene;->processScrollUp(FF)V

    .line 2422
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3457
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->supportTouch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3458
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 3459
    .local v0, "currentTransition":Landroid/support/constraint/motion/MotionScene$Transition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3460
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 3462
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getCurrentState()I

    move-result v2

    invoke-virtual {v1, p1, v2, p0}, Landroid/support/constraint/motion/MotionScene;->processTouchEvent(Landroid/view/MotionEvent;ILandroid/support/constraint/motion/MotionLayout;)V

    .line 3463
    const/4 v1, 0x1

    return v1

    .line 3468
    .end local v0    # "currentTransition":Landroid/support/constraint/motion/MotionScene$Transition;
    :cond_1
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 3778
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 3779
    instance-of v0, p1, Landroid/support/constraint/motion/MotionHelper;

    if-eqz v0, :cond_4

    .line 3780
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/motion/MotionHelper;

    .line 3781
    .local v0, "helper":Landroid/support/constraint/motion/MotionHelper;
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 3782
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 3784
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3786
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionHelper;->isUsedOnShow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3787
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 3788
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 3790
    :cond_1
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3792
    :cond_2
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionHelper;->isUseOnHide()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3793
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 3794
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 3796
    :cond_3
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3799
    .end local v0    # "helper":Landroid/support/constraint/motion/MotionHelper;
    :cond_4
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 3806
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 3807
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3808
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3810
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3811
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3813
    :cond_1
    return-void
.end method

.method protected parseLayoutDescription(I)V
    .locals 1
    .param p1, "id"    # I

    .line 3201
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    .line 3202
    return-void
.end method

.method public rebuildMotion()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3867
    const-string v0, "MotionLayout"

    const-string v1, "This method is deprecated. Please call rebuildScene() instead."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 3869
    return-void
.end method

.method public rebuildScene()V
    .locals 1

    .line 3875
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$Model;->reEvaluateState()V

    .line 3876
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 3877
    return-void
.end method

.method public removeTransitionListener(Landroid/support/constraint/motion/MotionLayout$TransitionListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3620
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3621
    const/4 v0, 0x0

    return v0

    .line 3623
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 2

    .line 2320
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    if-nez v0, :cond_0

    .line 2321
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 2323
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getLayoutDuringTransition()I

    move-result v0

    if-nez v0, :cond_0

    .line 2324
    return-void

    .line 2327
    :cond_0
    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 2328
    return-void
.end method

.method public setDebugMode(I)V
    .locals 0
    .param p1, "debugMode"    # I

    .line 3351
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 3352
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 3353
    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 4005
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    .line 4006
    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 2
    .param p1, "pos"    # F

    .line 1309
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_0

    .line 1310
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1311
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 1312
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v0, :cond_0

    .line 1313
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 1314
    return-void

    .line 1317
    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 1318
    return-void
.end method

.method public setOnHide(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 3826
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3827
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3828
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3829
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionHelper;

    .line 3830
    .local v2, "helper":Landroid/support/constraint/motion/MotionHelper;
    invoke-virtual {v2, p1}, Landroid/support/constraint/motion/MotionHelper;->setProgress(F)V

    .line 3828
    .end local v2    # "helper":Landroid/support/constraint/motion/MotionHelper;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3833
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 3816
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3817
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3818
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3819
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionHelper;

    .line 3820
    .local v2, "helper":Landroid/support/constraint/motion/MotionHelper;
    invoke-virtual {v2, p1}, Landroid/support/constraint/motion/MotionHelper;->setProgress(F)V

    .line 3818
    .end local v2    # "helper":Landroid/support/constraint/motion/MotionHelper;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3823
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4
    .param p1, "pos"    # F

    .line 1447
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_0

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    .line 1448
    :cond_0
    const-string v2, "MotionLayout"

    const-string v3, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1451
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_2

    .line 1452
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1454
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setProgress(F)V

    .line 1455
    return-void

    .line 1464
    :cond_3
    cmpg-float v2, p1, v1

    if-gtz v2, :cond_4

    .line 1465
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1466
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    .line 1467
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    goto :goto_0

    .line 1469
    :cond_4
    cmpl-float v1, p1, v0

    if-ltz v1, :cond_5

    .line 1470
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1471
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_6

    .line 1472
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    goto :goto_0

    .line 1475
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1476
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1480
    :cond_6
    :goto_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_7

    .line 1481
    return-void

    .line 1484
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    .line 1485
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1486
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1487
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 1488
    iput-wide v1, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 1489
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1491
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1492
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 1493
    return-void
.end method

.method public setProgress(FF)V
    .locals 1
    .param p1, "pos"    # F
    .param p2, "velocity"    # F

    .line 1327
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1328
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_0

    .line 1329
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1331
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setProgress(F)V

    .line 1332
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p2}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setVelocity(F)V

    .line 1333
    return-void

    .line 1335
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 1336
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1337
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 1338
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    .line 1339
    return-void
.end method

.method public setScene(Landroid/support/constraint/motion/MotionScene;)V
    .locals 1
    .param p1, "scene"    # Landroid/support/constraint/motion/MotionScene;

    .line 3260
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 3261
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionScene;->setRtl(Z)V

    .line 3262
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 3263
    return-void
.end method

.method public setState(III)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .line 1292
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1293
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1294
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1295
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1296
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/constraint/ConstraintLayoutStates;->updateConstraints(IFF)V

    goto :goto_0

    .line 1298
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_1

    .line 1299
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    .line 1301
    :cond_1
    :goto_0
    return-void
.end method

.method setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V
    .locals 3
    .param p1, "newState"    # Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 1040
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1041
    return-void

    .line 1043
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 1044
    .local v0, "oldState":Landroid/support/constraint/motion/MotionLayout$TransitionState;
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 1046
    sget-object v1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne v0, v1, :cond_1

    sget-object v1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v1, :cond_1

    .line 1047
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->fireTransitionChange()V

    .line 1049
    :cond_1
    sget-object v1, Landroid/support/constraint/motion/MotionLayout$2;->$SwitchMap$android$support$constraint$motion$MotionLayout$TransitionState:[I

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$TransitionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1060
    :pswitch_0
    sget-object v1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v1, :cond_3

    .line 1061
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->fireTransitionCompleted()V

    goto :goto_0

    .line 1052
    :pswitch_1
    sget-object v1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v1, :cond_2

    .line 1053
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->fireTransitionChange()V

    .line 1055
    :cond_2
    sget-object v1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v1, :cond_3

    .line 1056
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->fireTransitionCompleted()V

    .line 1067
    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTransition(I)V
    .locals 8
    .param p1, "transitionId"    # I

    .line 1166
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_6

    .line 1167
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->getTransition(I)Landroid/support/constraint/motion/MotionScene$Transition;

    move-result-object v0

    .line 1168
    .local v0, "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1169
    .local v1, "current":I
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1170
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1172
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1173
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v2, :cond_0

    .line 1174
    new-instance v2, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v2, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1176
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setStartState(I)V

    .line 1177
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setEndState(I)V

    .line 1178
    return-void

    .line 1188
    :cond_1
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 1189
    .local v2, "pos":F
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    if-ne v3, v4, :cond_2

    .line 1190
    const/4 v2, 0x0

    goto :goto_0

    .line 1191
    :cond_2
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-ne v3, v4, :cond_3

    .line 1192
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1194
    :cond_3
    :goto_0
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3, v0}, Landroid/support/constraint/motion/MotionScene;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 1195
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v6, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v5, v6}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v5

    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v6, v7}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1196
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 1198
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    iput v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1200
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/support/constraint/motion/Debug;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " transitionToStart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MotionLayout"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->transitionToStart()V

    goto :goto_2

    .line 1204
    :cond_5
    invoke-virtual {p0, v2}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 1207
    .end local v0    # "transition":Landroid/support/constraint/motion/MotionScene$Transition;
    .end local v1    # "current":I
    .end local v2    # "pos":F
    :cond_6
    :goto_2
    return-void
.end method

.method public setTransition(II)V
    .locals 4
    .param p1, "beginId"    # I
    .param p2, "endId"    # I

    .line 1134
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1135
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_0

    .line 1136
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1138
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setStartState(I)V

    .line 1139
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p2}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setEndState(I)V

    .line 1140
    return-void

    .line 1143
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_2

    .line 1144
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1145
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1151
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/motion/MotionScene;->setTransition(II)V

    .line 1152
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2, p1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3, p2}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1153
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 1154
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1155
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->transitionToStart()V

    .line 1157
    :cond_2
    return-void
.end method

.method protected setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V
    .locals 7
    .param p1, "transition"    # Landroid/support/constraint/motion/MotionScene$Transition;

    .line 1210
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 1212
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1213
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene;->getEndId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1214
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1215
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1216
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    goto :goto_0

    .line 1218
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1219
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1220
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1222
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isTransitionFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 1227
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v0

    .line 1228
    .local v0, "newBeginState":I
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene;->getEndId()I

    move-result v1

    .line 1229
    .local v1, "newEndState":I
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-ne v1, v2, :cond_2

    .line 1230
    return-void

    .line 1232
    :cond_2
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1233
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1234
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2, v0, v1}, Landroid/support/constraint/motion/MotionScene;->setTransition(II)V

    .line 1240
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v4, v5}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v4

    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v6, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v5, v6}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1241
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/motion/MotionLayout$Model;->setMeasuredId(II)V

    .line 1242
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionLayout$Model;->reEvaluateState()V

    .line 1244
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 1245
    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 2
    .param p1, "milliseconds"    # I

    .line 3942
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    .line 3943
    const-string v0, "MotionLayout"

    const-string v1, "MotionScene not defined"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3944
    return-void

    .line 3946
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->setDuration(I)V

    .line 3947
    return-void
.end method

.method public setTransitionListener(Landroid/support/constraint/motion/MotionLayout$TransitionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3596
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3597
    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1421
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_0

    .line 1422
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1424
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setTransitionState(Landroid/os/Bundle;)V

    .line 1425
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1426
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$StateCache;->apply()V

    .line 1428
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2332
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2333
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-static {v0, v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 2334
    invoke-static {v0, v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Dpos/Dt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2333
    return-object v1
.end method

.method public touchAnimateTo(IFF)V
    .locals 10
    .param p1, "touchUpMode"    # I
    .param p2, "position"    # F
    .param p3, "currentVelocity"    # F

    .line 1597
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    .line 1598
    return-void

    .line 1600
    :cond_0
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    .line 1601
    return-void

    .line 1604
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 1605
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 1606
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v7, v1, v2

    iput v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 1608
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1609
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1611
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1639
    :pswitch_0
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v1

    invoke-static {p3, v0, v1}, Landroid/support/constraint/motion/MotionLayout;->willJump(FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1640
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v2

    invoke-virtual {v0, p3, v1, v2}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->config(FFF)V

    .line 1641
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 1643
    :cond_2
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 1644
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v6

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getMaxVelocity()F

    move-result v7

    .line 1643
    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/motion/utils/StopLogic;->config(FFFFFF)V

    .line 1645
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 1646
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1647
    .local v0, "currentState":I
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1648
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1649
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 1634
    .end local v0    # "currentState":I
    :pswitch_1
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v2

    invoke-virtual {v0, p3, v1, v2}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->config(FFF)V

    .line 1635
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1637
    goto :goto_1

    .line 1632
    :pswitch_2
    goto :goto_1

    .line 1615
    :pswitch_3
    if-ne p1, v0, :cond_3

    .line 1616
    const/4 p2, 0x0

    goto :goto_0

    .line 1617
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1618
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1620
    :cond_4
    :goto_0
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 1621
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v8

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getMaxVelocity()F

    move-result v9

    .line 1620
    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v9}, Landroid/support/constraint/motion/utils/StopLogic;->config(FFFFFF)V

    .line 1623
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1624
    .restart local v0    # "currentState":I
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1625
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1626
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1628
    .end local v0    # "currentState":I
    nop

    .line 1655
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    .line 1656
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 1657
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 1658
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transitionToEnd()V
    .locals 1

    .line 1776
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    .line 1777
    return-void
.end method

.method public transitionToStart()V
    .locals 1

    .line 1767
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    .line 1768
    return-void
.end method

.method public transitionToState(I)V
    .locals 1
    .param p1, "id"    # I

    .line 1786
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1787
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez v0, :cond_0

    .line 1788
    new-instance v0, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1790
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setEndState(I)V

    .line 1791
    return-void

    .line 1793
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Landroid/support/constraint/motion/MotionLayout;->transitionToState(III)V

    .line 1794
    return-void
.end method

.method public transitionToState(III)V
    .locals 22
    .param p1, "id"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .line 1814
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    if-eqz v1, :cond_0

    .line 1815
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v1, v1, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    iget v3, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    move/from16 v4, p2

    int-to-float v5, v4

    move/from16 v6, p3

    int-to-float v7, v6

    move/from16 v8, p1

    invoke-virtual {v1, v3, v8, v5, v7}, Landroid/support/constraint/StateSet;->convertToConstraintSet(IIFF)I

    move-result v1

    .line 1817
    .local v1, "tmp_id":I
    if-eq v1, v2, :cond_1

    .line 1823
    move v3, v1

    .end local p1    # "id":I
    .local v3, "id":I
    goto :goto_0

    .line 1814
    .end local v1    # "tmp_id":I
    .end local v3    # "id":I
    .restart local p1    # "id":I
    :cond_0
    move/from16 v8, p1

    move/from16 v4, p2

    move/from16 v6, p3

    .line 1826
    :cond_1
    move v3, v8

    .end local p1    # "id":I
    .restart local v3    # "id":I
    :goto_0
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-ne v1, v3, :cond_2

    .line 1827
    return-void

    .line 1829
    :cond_2
    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    const/4 v7, 0x0

    if-ne v5, v3, :cond_3

    .line 1830
    invoke-virtual {v0, v7}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    .line 1831
    return-void

    .line 1833
    :cond_3
    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v5, v3, :cond_4

    .line 1834
    invoke-virtual {v0, v8}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    .line 1835
    return-void

    .line 1837
    :cond_4
    iput v3, v0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1838
    if-eq v1, v2, :cond_5

    .line 1846
    invoke-virtual {v0, v1, v3}, Landroid/support/constraint/motion/MotionLayout;->setTransition(II)V

    .line 1847
    invoke-virtual {v0, v8}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    .line 1849
    iput v7, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1850
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->transitionToEnd()V

    .line 1851
    return-void

    .line 1859
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 1860
    iput v8, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1861
    iput v7, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1862
    iput v7, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1863
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 1864
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 1865
    iput-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    .line 1866
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1867
    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v5}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v5

    int-to-float v5, v5

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v5, v9

    iput v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 1868
    iput v2, v0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1869
    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v9, v0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v5, v2, v9}, Landroid/support/constraint/motion/MotionScene;->setTransition(II)V

    .line 1871
    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v2

    .line 1872
    .local v2, "startId":I
    move v5, v3

    .line 1873
    .local v5, "targetID":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v9

    .line 1874
    .local v9, "n":I
    iget-object v10, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 1875
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v9, :cond_6

    .line 1876
    invoke-virtual {v0, v10}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1877
    .local v11, "v":Landroid/view/View;
    new-instance v12, Landroid/support/constraint/motion/MotionController;

    invoke-direct {v12, v11}, Landroid/support/constraint/motion/MotionController;-><init>(Landroid/view/View;)V

    .line 1878
    .local v12, "f":Landroid/support/constraint/motion/MotionController;
    iget-object v13, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    .end local v11    # "v":Landroid/view/View;
    .end local v12    # "f":Landroid/support/constraint/motion/MotionController;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1880
    .end local v10    # "i":I
    :cond_6
    const/4 v10, 0x1

    iput-boolean v10, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1882
    iget-object v11, v0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v12, v0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v13, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v13, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v13

    invoke-virtual {v11, v12, v1, v13}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1883
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 1884
    iget-object v1, v0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout$Model;->build()V

    .line 1885
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->computeCurrentPositions()V

    .line 1886
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getWidth()I

    move-result v1

    .line 1887
    .local v1, "layoutWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v17

    .line 1889
    .local v17, "layoutHeight":I
    const/4 v11, 0x0

    move v15, v11

    .local v15, "i":I
    :goto_2
    if-ge v15, v9, :cond_7

    .line 1890
    iget-object v11, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v15}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Landroid/support/constraint/motion/MotionController;

    .line 1891
    .local v14, "motionController":Landroid/support/constraint/motion/MotionController;
    iget-object v11, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v11, v14}, Landroid/support/constraint/motion/MotionScene;->getKeyFrames(Landroid/support/constraint/motion/MotionController;)V

    .line 1892
    iget v13, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v18

    move-object v11, v14

    move v12, v1

    move/from16 v16, v13

    move/from16 v13, v17

    move-object/from16 v20, v14

    .end local v14    # "motionController":Landroid/support/constraint/motion/MotionController;
    .local v20, "motionController":Landroid/support/constraint/motion/MotionController;
    move/from16 v14, v16

    move/from16 v21, v15

    .end local v15    # "i":I
    .local v21, "i":I
    move-wide/from16 v15, v18

    invoke-virtual/range {v11 .. v16}, Landroid/support/constraint/motion/MotionController;->setup(IIFJ)V

    .line 1889
    .end local v20    # "motionController":Landroid/support/constraint/motion/MotionController;
    add-int/lit8 v15, v21, 0x1

    .end local v21    # "i":I
    .restart local v15    # "i":I
    goto :goto_2

    :cond_7
    move/from16 v21, v15

    .line 1895
    .end local v15    # "i":I
    iget-object v11, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v11}, Landroid/support/constraint/motion/MotionScene;->getStaggered()F

    move-result v11

    .line 1896
    .local v11, "stagger":F
    cmpl-float v12, v11, v7

    if-eqz v12, :cond_a

    .line 1898
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    .local v12, "min":F
    const v13, -0x800001

    .line 1899
    .local v13, "max":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v9, :cond_8

    .line 1900
    iget-object v15, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v14}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/motion/MotionController;

    .line 1901
    .local v10, "f":Landroid/support/constraint/motion/MotionController;
    invoke-virtual {v10}, Landroid/support/constraint/motion/MotionController;->getFinalX()F

    move-result v15

    .line 1902
    .local v15, "x":F
    invoke-virtual {v10}, Landroid/support/constraint/motion/MotionController;->getFinalY()F

    move-result v16

    .line 1903
    .local v16, "y":F
    add-float v7, v16, v15

    invoke-static {v12, v7}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 1904
    add-float v7, v16, v15

    invoke-static {v13, v7}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 1899
    .end local v10    # "f":Landroid/support/constraint/motion/MotionController;
    .end local v15    # "x":F
    .end local v16    # "y":F
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x1

    goto :goto_3

    .line 1907
    .end local v14    # "i":I
    :cond_8
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v9, :cond_9

    .line 1908
    iget-object v10, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/motion/MotionController;

    .line 1909
    .restart local v10    # "f":Landroid/support/constraint/motion/MotionController;
    invoke-virtual {v10}, Landroid/support/constraint/motion/MotionController;->getFinalX()F

    move-result v14

    .line 1910
    .local v14, "x":F
    invoke-virtual {v10}, Landroid/support/constraint/motion/MotionController;->getFinalY()F

    move-result v15

    .line 1911
    .local v15, "y":F
    sub-float v16, v8, v11

    move/from16 v19, v1

    .end local v1    # "layoutWidth":I
    .local v19, "layoutWidth":I
    div-float v1, v8, v16

    iput v1, v10, Landroid/support/constraint/motion/MotionController;->mStaggerScale:F

    .line 1912
    add-float v1, v14, v15

    sub-float/2addr v1, v12

    mul-float v1, v1, v11

    sub-float v16, v13, v12

    div-float v1, v1, v16

    sub-float v1, v11, v1

    iput v1, v10, Landroid/support/constraint/motion/MotionController;->mStaggerOffset:F

    .line 1907
    .end local v10    # "f":Landroid/support/constraint/motion/MotionController;
    .end local v14    # "x":F
    .end local v15    # "y":F
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v19

    goto :goto_4

    .end local v19    # "layoutWidth":I
    .restart local v1    # "layoutWidth":I
    :cond_9
    move/from16 v19, v1

    .end local v1    # "layoutWidth":I
    .restart local v19    # "layoutWidth":I
    goto :goto_5

    .line 1896
    .end local v7    # "i":I
    .end local v12    # "min":F
    .end local v13    # "max":F
    .end local v19    # "layoutWidth":I
    .restart local v1    # "layoutWidth":I
    :cond_a
    move/from16 v19, v1

    .line 1916
    .end local v1    # "layoutWidth":I
    .restart local v19    # "layoutWidth":I
    :goto_5
    const/4 v1, 0x0

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1917
    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1918
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1920
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 1921
    return-void
.end method

.method public updateState()V
    .locals 5

    .line 3896
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 3897
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 3898
    return-void
.end method

.method public updateState(ILandroid/support/constraint/ConstraintSet;)V
    .locals 1
    .param p1, "stateId"    # I
    .param p2, "set"    # Landroid/support/constraint/ConstraintSet;

    .line 3886
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_0

    .line 3887
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/motion/MotionScene;->setConstraintSet(ILandroid/support/constraint/ConstraintSet;)V

    .line 3889
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->updateState()V

    .line 3890
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-ne v0, p1, :cond_1

    .line 3891
    invoke-virtual {p2, p0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    .line 3893
    :cond_1
    return-void
.end method
