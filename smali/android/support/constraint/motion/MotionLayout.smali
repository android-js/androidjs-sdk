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
    .locals 4

    .line 963
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 876
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    const/4 v0, -0x1

    .line 877
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 878
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 879
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    const/4 v0, 0x0

    .line 880
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    .line 881
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v1, 0x1

    .line 882
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    .line 884
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    .line 886
    iput-wide v2, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 887
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 888
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 889
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 891
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 893
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 894
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mIndirectTransition:Z

    .line 901
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 905
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 906
    new-instance v2, Landroid/support/constraint/motion/utils/StopLogic;

    invoke-direct {v2}, Landroid/support/constraint/motion/utils/StopLogic;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    .line 907
    new-instance v2, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    invoke-direct {v2, p0}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    .line 911
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->firstDown:Z

    .line 918
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mUndergoingMotion:Z

    .line 923
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    const/4 v1, 0x0

    .line 925
    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 926
    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 927
    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 928
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    const-wide/16 v2, -0x1

    .line 929
    iput-wide v2, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 930
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    .line 931
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 932
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    .line 933
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 940
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    .line 948
    new-instance p1, Landroid/support/constraint/motion/KeyCache;

    invoke-direct {p1}, Landroid/support/constraint/motion/KeyCache;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    .line 949
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 959
    sget-object p1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->UNDEFINED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 2316
    new-instance p1, Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-direct {p1, p0}, Landroid/support/constraint/motion/MotionLayout$Model;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    .line 3162
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3368
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3369
    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3724
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 964
    invoke-direct {p0, v1}, Landroid/support/constraint/motion/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 968
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 876
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    const/4 v0, -0x1

    .line 877
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 878
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 879
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    const/4 v0, 0x0

    .line 880
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    .line 881
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v1, 0x1

    .line 882
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    .line 884
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    .line 886
    iput-wide v2, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 887
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 888
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 889
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 891
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 893
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 894
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mIndirectTransition:Z

    .line 901
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 905
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 906
    new-instance v2, Landroid/support/constraint/motion/utils/StopLogic;

    invoke-direct {v2}, Landroid/support/constraint/motion/utils/StopLogic;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    .line 907
    new-instance v2, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    invoke-direct {v2, p0}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    .line 911
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->firstDown:Z

    .line 918
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mUndergoingMotion:Z

    .line 923
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    const/4 v1, 0x0

    .line 925
    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 926
    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 927
    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 928
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    const-wide/16 v2, -0x1

    .line 929
    iput-wide v2, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 930
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    .line 931
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 932
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    .line 933
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 940
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    .line 948
    new-instance p1, Landroid/support/constraint/motion/KeyCache;

    invoke-direct {p1}, Landroid/support/constraint/motion/KeyCache;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    .line 949
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 959
    sget-object p1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->UNDEFINED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 2316
    new-instance p1, Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-direct {p1, p0}, Landroid/support/constraint/motion/MotionLayout$Model;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    .line 3162
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3368
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3369
    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3724
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 969
    invoke-direct {p0, p2}, Landroid/support/constraint/motion/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 973
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 876
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    const/4 p3, -0x1

    .line 877
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 878
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 879
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    const/4 p3, 0x0

    .line 880
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    .line 881
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v0, 0x1

    .line 882
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    .line 884
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    .line 886
    iput-wide v1, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    const/high16 v1, 0x3f800000    # 1.0f

    .line 887
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 888
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 889
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 891
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 893
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 894
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mIndirectTransition:Z

    .line 901
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 905
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 906
    new-instance v1, Landroid/support/constraint/motion/utils/StopLogic;

    invoke-direct {v1}, Landroid/support/constraint/motion/utils/StopLogic;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    .line 907
    new-instance v1, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    invoke-direct {v1, p0}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    .line 911
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->firstDown:Z

    .line 918
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mUndergoingMotion:Z

    .line 923
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    const/4 v0, 0x0

    .line 925
    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 926
    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 927
    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 928
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    const-wide/16 v1, -0x1

    .line 929
    iput-wide v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 930
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    .line 931
    iput p3, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerState:I

    .line 932
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mListenerPosition:F

    .line 933
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 940
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    .line 948
    new-instance p1, Landroid/support/constraint/motion/KeyCache;

    invoke-direct {p1}, Landroid/support/constraint/motion/KeyCache;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    .line 949
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 959
    sget-object p1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->UNDEFINED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 2316
    new-instance p1, Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-direct {p1, p0}, Landroid/support/constraint/motion/MotionLayout$Model;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    .line 3162
    iput-boolean p3, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3368
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3369
    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3724
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 974
    invoke-direct {p0, p2}, Landroid/support/constraint/motion/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/motion/MotionLayout;)I
    .locals 0

    .line 859
    iget p0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    return p0
.end method

.method static synthetic access$100(Landroid/support/constraint/motion/MotionLayout;)I
    .locals 0

    .line 859
    iget p0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    return p0
.end method

.method static synthetic access$1000(Landroid/support/constraint/motion/MotionLayout;)I
    .locals 0

    .line 859
    iget p0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    return p0
.end method

.method static synthetic access$1100(Landroid/support/constraint/motion/MotionLayout;)V
    .locals 0

    .line 859
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->setupMotionViews()V

    return-void
.end method

.method static synthetic access$1200(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1300(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1500(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1600(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1700(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1800(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1900(Landroid/support/constraint/motion/MotionLayout;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/constraint/motion/MotionLayout;->resolveSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .locals 0

    .line 859
    iget-object p0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p0
.end method

.method static synthetic access$2000(Landroid/support/constraint/motion/MotionLayout;IIIIZZ)V
    .locals 0

    .line 859
    invoke-virtual/range {p0 .. p6}, Landroid/support/constraint/motion/MotionLayout;->resolveMeasuredDimension(IIIIZZ)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .locals 0

    .line 859
    iget-object p0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .locals 0

    .line 859
    iget-object p0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p0
.end method

.method static synthetic access$500(Landroid/support/constraint/motion/MotionLayout;)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .locals 0

    .line 859
    iget-object p0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p0
.end method

.method static synthetic access$600(Landroid/support/constraint/motion/MotionLayout;)Z
    .locals 0

    .line 859
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Landroid/support/constraint/motion/MotionLayout;)Z
    .locals 0

    .line 859
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Landroid/support/constraint/motion/MotionLayout;ZLandroid/view/View;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 0

    .line 859
    invoke-virtual/range {p0 .. p5}, Landroid/support/constraint/motion/MotionLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/constraint/motion/MotionLayout;)I
    .locals 0

    .line 859
    iget p0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    return p0
.end method

.method private checkStructure()V
    .locals 11

    .line 3266
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const-string v1, "MotionLayout"

    if-nez v0, :cond_0

    const-string v0, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\""

    .line 3267
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 3274
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 3275
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v5, v5, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-ne v4, v5, :cond_2

    const-string v5, "CHECK: CURRENT"

    .line 3276
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    :cond_2
    invoke-direct {p0, v4}, Landroid/support/constraint/motion/MotionLayout;->checkStructure(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 3279
    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v5

    .line 3280
    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v4

    .line 3281
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 3282
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 3283
    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    const-string v9, "->"

    if-ne v8, v4, :cond_3

    .line 3285
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CHECK: two transitions with the same start and end "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    :cond_3
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-ne v8, v5, :cond_4

    .line 3290
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CHECK: you can\'t have reverse transitions"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    :cond_4
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3294
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 3295
    iget-object v7, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v7, v5}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v5

    if-nez v5, :cond_5

    .line 3296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " no such constraintSetStart "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    :cond_5
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v5, v4}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v4

    if-nez v4, :cond_1

    .line 3300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " no such constraintSetEnd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private checkStructure(ILandroid/support/constraint/ConstraintSet;)V
    .locals 10

    .line 3306
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 3307
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    const-string v4, "CHECK: "

    const-string v5, "MotionLayout"

    if-ge v2, v0, :cond_2

    .line 3309
    invoke-virtual {p0, v2}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3310
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v3, :cond_0

    .line 3312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ALL VIEWS SHOULD HAVE ID\'s "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3313
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " does not!"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3312
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    :cond_0
    invoke-virtual {p2, v7}, Landroid/support/constraint/ConstraintSet;->getConstraint(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    if-nez v3, :cond_1

    .line 3317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " NO CONSTRAINTS for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3320
    :cond_2
    invoke-virtual {p2}, Landroid/support/constraint/ConstraintSet;->getKnownIds()[I

    move-result-object v0

    .line 3321
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 3322
    aget v2, v0, v1

    .line 3323
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 3324
    aget v7, v0, v1

    invoke-virtual {p0, v7}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_3

    .line 3325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " NO View matches id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    :cond_3
    invoke-virtual {p2, v2}, Landroid/support/constraint/ConstraintSet;->getHeight(I)I

    move-result v7

    const-string v8, ") no LAYOUT_HEIGHT"

    const-string v9, "("

    if-ne v7, v3, :cond_4

    .line 3328
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    :cond_4
    invoke-virtual {p2, v2}, Landroid/support/constraint/ConstraintSet;->getWidth(I)I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 3331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private checkStructure(Landroid/support/constraint/motion/MotionScene$Transition;)V
    .locals 3

    .line 3337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHECK: transition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/motion/MotionScene$Transition;->debugString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHECK: transition.setDuration = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getEndConstraintSetId()I

    move-result p1

    if-ne v0, p1, :cond_0

    const-string p1, "CHECK: start and end constraint set should not be the same!"

    .line 3340
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private computeCurrentPositions()V
    .locals 4

    .line 1750
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1752
    invoke-virtual {p0, v1}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1753
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionController;

    if-nez v3, :cond_0

    goto :goto_1

    .line 1757
    :cond_0
    invoke-virtual {v3, v2}, Landroid/support/constraint/motion/MotionController;->setStartCurrentState(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private debugPos()V
    .locals 6

    const/4 v0, 0x0

    .line 2862
    :goto_0
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2863
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/support/constraint/motion/Debug;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2865
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    invoke-static {v4, v5}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2866
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2867
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionLayout"

    .line 2864
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private evaluateLayout()V
    .locals 14

    .line 2935
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 2936
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v1

    .line 2939
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v4, v3, Landroid/support/constraint/motion/utils/StopLogic;

    const v5, 0x3089705f    # 1.0E-9f

    const/4 v6, 0x0

    if-nez v4, :cond_0

    .line 2940
    iget-wide v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    sub-long v7, v1, v7

    long-to-float v4, v7

    mul-float v4, v4, v0

    mul-float v4, v4, v5

    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    div-float/2addr v4, v7

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2942
    :goto_0
    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v7, v4

    .line 2945
    iget-boolean v4, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    if-eqz v4, :cond_1

    .line 2946
    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    :cond_1
    const/4 v4, 0x0

    cmpl-float v8, v0, v6

    if-lez v8, :cond_2

    .line 2949
    iget v8, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v8, v7, v8

    if-gez v8, :cond_3

    :cond_2
    cmpg-float v8, v0, v6

    if-gtz v8, :cond_4

    iget v8, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_4

    .line 2951
    :cond_3
    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    if-eqz v3, :cond_6

    if-nez v8, :cond_6

    .line 2955
    iget-boolean v8, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    if-eqz v8, :cond_5

    .line 2956
    iget-wide v7, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    sub-long/2addr v1, v7

    long-to-float v1, v1

    mul-float v1, v1, v5

    .line 2957
    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    goto :goto_2

    .line 2959
    :cond_5
    invoke-interface {v3, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    :cond_6
    :goto_2
    cmpl-float v1, v0, v6

    if-lez v1, :cond_7

    .line 2962
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v1, v7, v1

    if-gez v1, :cond_8

    :cond_7
    cmpg-float v0, v0, v6

    if-gtz v0, :cond_9

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v0, v7, v0

    if-gtz v0, :cond_9

    .line 2964
    :cond_8
    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 2966
    :cond_9
    iput v7, p0, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    .line 2967
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v0

    .line 2968
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v1

    :goto_3
    if-ge v4, v0, :cond_b

    .line 2970
    invoke-virtual {p0, v4}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2971
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/support/constraint/motion/MotionController;

    if-eqz v8, :cond_a

    .line 2973
    iget-object v13, p0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    move v10, v7

    move-wide v11, v1

    invoke-virtual/range {v8 .. v13}, Landroid/support/constraint/motion/MotionController;->interpolate(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2976
    :cond_b
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    if-eqz v0, :cond_c

    .line 2977
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

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
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-interface {v3, p0, v4, v5}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V

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
    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    invoke-interface {v2, p0, v3, v4, v5}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionChange(Landroid/support/constraint/motion/MotionLayout;IIF)V

    goto :goto_1

    .line 3719
    :cond_5
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    :cond_6
    return-void
.end method

.method private fireTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V
    .locals 2

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
    invoke-interface {v1, p1, p2, p3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 3381
    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3382
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    .line 3383
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 3385
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3386
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, p2

    invoke-direct {p0, v6, v7, v5, p4}, Landroid/support/constraint/motion/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3391
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p2

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p1, v5

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p2, v5

    invoke-virtual {v0, v3, v4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3393
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 3394
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3395
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    .line 3400
    :cond_2
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 9

    .line 3205
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isInEditMode()Z

    move-result v0

    sput-boolean v0, Landroid/support/constraint/motion/MotionLayout;->IS_IN_EDIT_MODE:Z

    const/4 v0, -0x1

    if-eqz p1, :cond_9

    .line 3207
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/R$styleable;->MotionLayout:[I

    .line 3208
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3209
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_7

    .line 3213
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 3214
    sget v7, Landroid/support/constraint/R$styleable;->MotionLayout_layoutDescription:I

    if-ne v6, v7, :cond_0

    .line 3215
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 3216
    new-instance v7, Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, p0, v6}, Landroid/support/constraint/motion/MotionScene;-><init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionLayout;I)V

    iput-object v7, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    goto :goto_2

    .line 3217
    :cond_0
    sget v7, Landroid/support/constraint/R$styleable;->MotionLayout_currentState:I

    if-ne v6, v7, :cond_1

    .line 3218
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    goto :goto_2

    .line 3219
    :cond_1
    sget v7, Landroid/support/constraint/R$styleable;->MotionLayout_motionProgress:I

    if-ne v6, v7, :cond_2

    const/4 v7, 0x0

    .line 3220
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 3221
    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    goto :goto_2

    .line 3222
    :cond_2
    sget v7, Landroid/support/constraint/R$styleable;->MotionLayout_applyMotionScene:I

    if-ne v6, v7, :cond_3

    .line 3223
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    goto :goto_2

    .line 3224
    :cond_3
    sget v7, Landroid/support/constraint/R$styleable;->MotionLayout_showPaths:I

    if-ne v6, v7, :cond_5

    .line 3225
    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-nez v7, :cond_6

    .line 3226
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    goto :goto_2

    .line 3228
    :cond_5
    sget v7, Landroid/support/constraint/R$styleable;->MotionLayout_motionDebug:I

    if-ne v6, v7, :cond_6

    .line 3229
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3232
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3233
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez p1, :cond_8

    const-string p1, "MotionLayout"

    const-string v1, "WARNING NO app:layoutDescription tag"

    .line 3234
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-nez v5, :cond_9

    const/4 p1, 0x0

    .line 3237
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 3240
    :cond_9
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    if-eqz p1, :cond_a

    .line 3241
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->checkStructure()V

    .line 3243
    :cond_a
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz p1, :cond_b

    .line 3244
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 3245
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 3249
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getEndId()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

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

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3749
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mIsAnimating:Z

    .line 3750
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3751
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    if-eqz v2, :cond_3

    .line 3752
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionCompleted(Landroid/support/constraint/motion/MotionLayout;I)V

    .line 3754
    :cond_3
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 3755
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    .line 3756
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p0, v4}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionCompleted(Landroid/support/constraint/motion/MotionLayout;I)V

    goto :goto_0

    .line 3760
    :cond_4
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private setupMotionViews()V
    .locals 12

    .line 1499
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v0

    .line 1501
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionLayout$Model;->build()V

    const/4 v1, 0x1

    .line 1502
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1504
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getWidth()I

    move-result v8

    .line 1505
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v9

    .line 1506
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->gatPathMotionArc()I

    move-result v2

    const/4 v10, 0x0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1509
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/MotionController;

    if-eqz v4, :cond_0

    .line 1511
    invoke-virtual {v4, v2}, Landroid/support/constraint/motion/MotionController;->setPathMotionArc(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v0, :cond_3

    .line 1517
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v11}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionController;

    if-eqz v2, :cond_2

    .line 1519
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3, v2}, Landroid/support/constraint/motion/MotionScene;->getKeyFrames(Landroid/support/constraint/motion/MotionController;)V

    .line 1520
    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v6

    move v3, v8

    move v4, v9

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/motion/MotionController;->setup(IIFJ)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1524
    :cond_3
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2}, Landroid/support/constraint/motion/MotionScene;->getStaggered()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_e

    float-to-double v3, v2

    const-wide/16 v5, 0x0

    cmpg-double v7, v3, v5

    if-gez v7, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 1528
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, -0x800001

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const v8, -0x800001

    :goto_3
    if-ge v6, v0, :cond_7

    .line 1531
    iget-object v9, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v6}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/motion/MotionController;

    .line 1532
    iget v11, v9, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_5

    .line 1536
    :cond_5
    invoke-virtual {v9}, Landroid/support/constraint/motion/MotionController;->getFinalX()F

    move-result v11

    .line 1537
    invoke-virtual {v9}, Landroid/support/constraint/motion/MotionController;->getFinalY()F

    move-result v9

    if-eqz v3, :cond_6

    sub-float/2addr v9, v11

    goto :goto_4

    :cond_6
    add-float/2addr v9, v11

    .line 1539
    :goto_4
    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1540
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_5
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_9

    .line 1547
    iget-object v7, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/motion/MotionController;

    .line 1548
    iget v8, v7, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1549
    iget v8, v7, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1550
    iget v7, v7, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    if-ge v10, v0, :cond_e

    .line 1554
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v10}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionController;

    .line 1555
    iget v7, v1, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_b

    sub-float v7, v6, v2

    div-float v7, v6, v7

    .line 1557
    iput v7, v1, Landroid/support/constraint/motion/MotionController;->mStaggerScale:F

    if-eqz v3, :cond_a

    .line 1559
    iget v7, v1, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    sub-float v7, v4, v7

    sub-float v8, v4, v5

    div-float/2addr v7, v8

    mul-float v7, v7, v2

    sub-float v7, v2, v7

    iput v7, v1, Landroid/support/constraint/motion/MotionController;->mStaggerOffset:F

    goto :goto_8

    .line 1561
    :cond_a
    iget v7, v1, Landroid/support/constraint/motion/MotionController;->mMotionStagger:F

    sub-float/2addr v7, v5

    mul-float v7, v7, v2

    sub-float v8, v4, v5

    div-float/2addr v7, v8

    sub-float v7, v2, v7

    iput v7, v1, Landroid/support/constraint/motion/MotionController;->mStaggerOffset:F

    :cond_b
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_c
    :goto_9
    if-ge v10, v0, :cond_e

    .line 1567
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v10}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionController;

    .line 1568
    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionController;->getFinalX()F

    move-result v4

    .line 1569
    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionController;->getFinalY()F

    move-result v5

    if-eqz v3, :cond_d

    sub-float/2addr v5, v4

    goto :goto_a

    :cond_d
    add-float/2addr v5, v4

    :goto_a
    sub-float v4, v6, v2

    div-float v4, v6, v4

    .line 1571
    iput v4, v1, Landroid/support/constraint/motion/MotionController;->mStaggerScale:F

    sub-float/2addr v5, v7

    mul-float v5, v5, v2

    sub-float v4, v8, v7

    div-float/2addr v5, v4

    sub-float v4, v2, v5

    .line 1572
    iput v4, v1, Landroid/support/constraint/motion/MotionController;->mStaggerOffset:F

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_e
    return-void
.end method

.method private static willJump(FFF)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    cmpl-float v4, p0, v3

    if-lez v4, :cond_1

    div-float v3, p0, p2

    mul-float p0, p0, v3

    mul-float p2, p2, v3

    mul-float p2, p2, v3

    div-float/2addr p2, v2

    sub-float/2addr p0, p2

    add-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    neg-float v4, p0

    div-float/2addr v4, p2

    mul-float p0, p0, v4

    mul-float p2, p2, v4

    mul-float p2, p2, v4

    div-float/2addr p2, v2

    add-float/2addr p0, p2

    add-float/2addr p1, p0

    cmpg-float p0, p1, v3

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public addTransitionListener(Landroid/support/constraint/motion/MotionLayout$TransitionListener;)V
    .locals 1

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

    return-void
.end method

.method animateTo(F)V
    .locals 4

    .line 1719
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

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

    cmpl-float v2, v1, p1

    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 1732
    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 1734
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1735
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 1736
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 1737
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1738
    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    .line 1739
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    const/4 p1, 0x1

    .line 1740
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1741
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1745
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1746
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    return-void
.end method

.method disableAutoTransition(Z)V
    .locals 1

    .line 3992
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    return-void

    .line 3995
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->disableAutoTransition(Z)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, 0x0

    .line 2881
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 2888
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2889
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v1, :cond_0

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
    iget-wide v5, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1

    sub-long v5, v3, v5

    const-wide/32 v7, 0xbebc200

    cmp-long v1, v5, v7

    if-lez v1, :cond_2

    .line 2902
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    int-to-float v1, v1

    long-to-float v5, v5

    const v6, 0x3089705f    # 1.0E-9f

    mul-float v5, v5, v6

    div-float/2addr v1, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v1, v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 2903
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    .line 2904
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mFrames:I

    .line 2905
    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    goto :goto_0

    .line 2908
    :cond_1
    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mLastDrawTime:J

    .line 2910
    :cond_2
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, 0x42280000    # 42.0f

    .line 2911
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2912
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v1

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    .line 2913
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mLastFps:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " fps "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-static {p0, v5}, Landroid/support/constraint/motion/Debug;->getState(Landroid/support/constraint/motion/MotionLayout;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2914
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-static {p0, v4}, Landroid/support/constraint/motion/Debug;->getState(Landroid/support/constraint/motion/MotionLayout;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (progress: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " ) state="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    const-string v1, "undefined"

    goto :goto_1

    .line 2915
    :cond_3
    invoke-static {p0, v1}, Landroid/support/constraint/motion/Debug;->getState(Landroid/support/constraint/motion/MotionLayout;I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v4, -0x1000000

    .line 2916
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41300000    # 11.0f

    .line 2917
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1d

    int-to-float v5, v5

    invoke-virtual {p1, v1, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v4, -0x77ff78

    .line 2918
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2919
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-float v4, v4

    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2923
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

    :cond_6
    return-void
.end method

.method public enableTransition(IZ)V
    .locals 2

    .line 996
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->getTransition(I)Landroid/support/constraint/motion/MotionScene$Transition;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 998
    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionScene$Transition;->setEnable(Z)V

    return-void

    .line 1001
    :cond_0
    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object p2, p2, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-ne p1, p2, :cond_2

    .line 1002
    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    invoke-virtual {p2, v0}, Landroid/support/constraint/motion/MotionScene;->getTransitionsWithState(I)Ljava/util/List;

    move-result-object p2

    .line 1003
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/motion/MotionScene$Transition;

    .line 1004
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1005
    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iput-object v0, p2, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    :cond_2
    const/4 p2, 0x0

    .line 1010
    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionScene$Transition;->setEnable(Z)V

    return-void
.end method

.method evaluate(Z)V
    .locals 19

    move-object/from16 v0, p0

    .line 2983
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

    .line 2991
    :cond_1
    iget-boolean v5, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_2

    iget-boolean v5, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    if-eqz v5, :cond_24

    if-nez p1, :cond_2

    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_24

    .line 2992
    :cond_2
    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    sub-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 2993
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v8

    .line 2996
    iget-object v5, v0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v10, v5, Landroid/support/constraint/motion/MotionInterpolator;

    const v11, 0x3089705f    # 1.0E-9f

    if-nez v10, :cond_3

    .line 2997
    iget-wide v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    sub-long v12, v8, v12

    long-to-float v10, v12

    mul-float v10, v10, v1

    mul-float v10, v10, v11

    iget v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    div-float/2addr v10, v12

    .line 2998
    iput v10, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    .line 3000
    :goto_0
    iget v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v12, v10

    .line 3003
    iget-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    if-eqz v13, :cond_4

    .line 3004
    iget v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    :cond_4
    cmpl-float v13, v1, v4

    if-lez v13, :cond_5

    .line 3007
    iget v13, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v13, v12, v13

    if-gez v13, :cond_6

    :cond_5
    cmpg-float v13, v1, v4

    if-gtz v13, :cond_7

    iget v13, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v13, v12, v13

    if-gtz v13, :cond_7

    .line 3009
    :cond_6
    iget v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 3010
    iput-boolean v7, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    const/4 v13, 0x1

    goto :goto_1

    :cond_7
    const/4 v13, 0x0

    .line 3016
    :goto_1
    iput v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 3017
    iput v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 3018
    iput-wide v8, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    const v14, 0x3727c5ac    # 1.0E-5f

    if-eqz v5, :cond_d

    if-nez v13, :cond_d

    .line 3021
    iget-boolean v13, v0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    if-eqz v13, :cond_a

    .line 3022
    iget-wide v12, v0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    sub-long v12, v8, v12

    long-to-float v10, v12

    mul-float v10, v10, v11

    .line 3023
    invoke-interface {v5, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 3027
    iput v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 3029
    iput-wide v8, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 3030
    iget-object v8, v0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v9, v8, Landroid/support/constraint/motion/MotionInterpolator;

    if-eqz v9, :cond_c

    .line 3031
    check-cast v8, Landroid/support/constraint/motion/MotionInterpolator;

    invoke-virtual {v8}, Landroid/support/constraint/motion/MotionInterpolator;->getVelocity()F

    move-result v8

    .line 3032
    iput v8, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 3033
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    mul-float v9, v9, v10

    cmpg-float v9, v9, v14

    if-gtz v9, :cond_8

    .line 3034
    iput-boolean v7, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    :cond_8
    cmpl-float v9, v8, v4

    if-lez v9, :cond_9

    cmpl-float v9, v5, v3

    if-ltz v9, :cond_9

    .line 3037
    iput v3, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 3038
    iput-boolean v7, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_9
    cmpg-float v8, v8, v4

    if-gez v8, :cond_c

    cmpg-float v8, v5, v4

    if-gtz v8, :cond_c

    .line 3041
    iput v4, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 3042
    iput-boolean v7, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    const/4 v12, 0x0

    goto :goto_3

    .line 3049
    :cond_a
    invoke-interface {v5, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 3050
    iget-object v8, v0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v9, v8, Landroid/support/constraint/motion/MotionInterpolator;

    if-eqz v9, :cond_b

    .line 3051
    check-cast v8, Landroid/support/constraint/motion/MotionInterpolator;

    invoke-virtual {v8}, Landroid/support/constraint/motion/MotionInterpolator;->getVelocity()F

    move-result v8

    iput v8, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    goto :goto_2

    :cond_b
    add-float/2addr v12, v10

    .line 3053
    invoke-interface {v8, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    sub-float/2addr v8, v5

    mul-float v8, v8, v1

    div-float/2addr v8, v10

    .line 3054
    iput v8, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    :cond_c
    :goto_2
    move v12, v5

    .line 3059
    :cond_d
    :goto_3
    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v14

    if-lez v5, :cond_e

    .line 3060
    sget-object v5, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v5}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    :cond_e
    cmpl-float v5, v1, v4

    if-lez v5, :cond_f

    .line 3063
    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v5, v12, v5

    if-gez v5, :cond_10

    :cond_f
    cmpg-float v5, v1, v4

    if-gtz v5, :cond_11

    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v5, v12, v5

    if-gtz v5, :cond_11

    .line 3065
    :cond_10
    iget v12, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 3066
    iput-boolean v7, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    :cond_11
    cmpl-float v5, v12, v3

    if-gez v5, :cond_12

    cmpg-float v5, v12, v4

    if-gtz v5, :cond_13

    .line 3070
    :cond_12
    iput-boolean v7, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 3071
    sget-object v5, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v5}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 3074
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v5

    .line 3075
    iput-boolean v7, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    .line 3076
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v8

    .line 3080
    iput v12, v0, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v5, :cond_15

    .line 3082
    invoke-virtual {v0, v10}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3083
    iget-object v11, v0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Landroid/support/constraint/motion/MotionController;

    if-eqz v13, :cond_14

    .line 3085
    iget-boolean v11, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    iget-object v15, v0, Landroid/support/constraint/motion/MotionLayout;->mKeyCache:Landroid/support/constraint/motion/KeyCache;

    move-object/from16 v18, v15

    move v15, v12

    move-wide/from16 v16, v8

    invoke-virtual/range {v13 .. v18}, Landroid/support/constraint/motion/MotionController;->interpolate(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z

    move-result v13

    or-int/2addr v11, v13

    iput-boolean v11, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    :cond_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_15
    cmpl-float v5, v1, v4

    if-lez v5, :cond_16

    .line 3093
    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v5, v12, v5

    if-gez v5, :cond_17

    :cond_16
    cmpg-float v5, v1, v4

    if-gtz v5, :cond_18

    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v5, v12, v5

    if-gtz v5, :cond_18

    :cond_17
    const/4 v5, 0x1

    goto :goto_5

    :cond_18
    const/4 v5, 0x0

    .line 3095
    :goto_5
    iget-boolean v8, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    if-nez v8, :cond_19

    iget-boolean v8, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    if-nez v8, :cond_19

    if-eqz v5, :cond_19

    .line 3096
    sget-object v8, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v8}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 3098
    :cond_19
    iget-boolean v8, v0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    if-eqz v8, :cond_1a

    .line 3099
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 3102
    :cond_1a
    iget-boolean v8, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    xor-int/2addr v5, v6

    or-int/2addr v5, v8

    iput-boolean v5, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    cmpg-float v5, v12, v4

    if-gtz v5, :cond_1b

    .line 3105
    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    if-eq v5, v2, :cond_1b

    .line 3109
    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq v2, v5, :cond_1b

    .line 3111
    iput v5, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 3112
    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2, v5}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    .line 3113
    invoke-virtual {v2, v0}, Landroid/support/constraint/ConstraintSet;->applyCustomAttributes(Landroid/support/constraint/ConstraintLayout;)V

    .line 3114
    sget-object v2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    const/4 v7, 0x1

    :cond_1b
    float-to-double v8, v12

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_1c

    .line 3122
    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget v5, v0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-eq v2, v5, :cond_1c

    .line 3124
    iput v5, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 3125
    iget-object v2, v0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2, v5}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    .line 3126
    invoke-virtual {v2, v0}, Landroid/support/constraint/ConstraintSet;->applyCustomAttributes(Landroid/support/constraint/ConstraintLayout;)V

    .line 3127
    sget-object v2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    const/4 v7, 0x1

    .line 3131
    :cond_1c
    iget-boolean v2, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    if-nez v2, :cond_20

    iget-boolean v2, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    if-eqz v2, :cond_1d

    goto :goto_6

    :cond_1d
    cmpl-float v2, v1, v4

    if-lez v2, :cond_1e

    cmpl-float v2, v12, v3

    if-eqz v2, :cond_1f

    :cond_1e
    cmpg-float v2, v1, v4

    if-gez v2, :cond_21

    cmpl-float v2, v12, v4

    if-nez v2, :cond_21

    .line 3135
    :cond_1f
    sget-object v2, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    goto :goto_7

    .line 3132
    :cond_20
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    .line 3137
    :cond_21
    :goto_7
    iget-boolean v2, v0, Landroid/support/constraint/motion/MotionLayout;->mKeepAnimating:Z

    if-nez v2, :cond_22

    iget-boolean v2, v0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    if-eqz v2, :cond_22

    cmpl-float v2, v1, v4

    if-lez v2, :cond_22

    cmpl-float v2, v12, v3

    if-eqz v2, :cond_23

    :cond_22
    cmpg-float v1, v1, v4

    if-gez v1, :cond_24

    cmpl-float v1, v12, v4

    if-nez v1, :cond_24

    .line 3138
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->onNewStateAttachHandlers()V

    .line 3141
    :cond_24
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_26

    .line 3142
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-eq v1, v2, :cond_25

    goto :goto_8

    :cond_25
    move v6, v7

    .line 3145
    :goto_8
    iput v2, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    :goto_9
    move v7, v6

    goto :goto_b

    :cond_26
    cmpg-float v1, v1, v4

    if-gtz v1, :cond_28

    .line 3147
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget v2, v0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    if-eq v1, v2, :cond_27

    goto :goto_a

    :cond_27
    move v6, v7

    .line 3150
    :goto_a
    iput v2, v0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    goto :goto_9

    .line 3153
    :cond_28
    :goto_b
    iget-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    or-int/2addr v1, v7

    iput-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    if-eqz v7, :cond_29

    .line 3155
    iget-boolean v1, v0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    if-nez v1, :cond_29

    .line 3156
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 3159
    :cond_29
    iget v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iput v1, v0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    return-void
.end method

.method protected fireTransitionCompleted()V
    .locals 3

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

    .line 3734
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3735
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 3737
    :goto_0
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq v0, v2, :cond_2

    if-eq v2, v1, :cond_2

    .line 3738
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3742
    :cond_2
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->processTransitionCompleted()V

    return-void
.end method

.method public fireTrigger(IZF)V
    .locals 2

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
    invoke-interface {v1, p0, p1, p2, p3}, Landroid/support/constraint/motion/MotionLayout$TransitionListener;->onTransitionTrigger(Landroid/support/constraint/motion/MotionLayout;IZF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method getAnchorDpDt(IFFF[F)V
    .locals 2

    .line 3554
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/motion/MotionController;

    if-eqz v0, :cond_0

    .line 3559
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/support/constraint/motion/MotionController;->getDpDt(FFF[F)V

    .line 3560
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result p1

    .line 3568
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->lastPos:F

    .line 3569
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->lastY:F

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 3571
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3572
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 3573
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WARNING could not find view id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public getConstraintSet(I)Landroid/support/constraint/ConstraintSet;
    .locals 1

    .line 3854
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3857
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object p1

    return-object p1
.end method

.method public getConstraintSetIds()[I
    .locals 1

    .line 3841
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

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

    .line 3980
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3983
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->lookUpConstraintName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentState()I
    .locals 1

    .line 3527
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    return v0
.end method

.method public getDebugMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3364
    :goto_0
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 3365
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

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

    .line 3956
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->getTransitionById(I)Landroid/support/constraint/motion/MotionScene$Transition;

    move-result-object p1

    return-object p1
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
    .locals 8

    .line 1942
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 1943
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1944
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_0

    const v0, 0x3727c5ac    # 1.0E-5f

    .line 1946
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 1947
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v3, v0

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 1948
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v0

    mul-float v1, v1, v2

    .line 1951
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    div-float v0, v1, v0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1954
    :goto_0
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v3, v1, Landroid/support/constraint/motion/MotionInterpolator;

    if-eqz v3, :cond_1

    .line 1955
    check-cast v1, Landroid/support/constraint/motion/MotionInterpolator;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionInterpolator;->getVelocity()F

    move-result v0

    .line 1958
    :cond_1
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/motion/MotionController;

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_2

    .line 1961
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    move v5, p2

    move v6, p3

    move-object v7, p4

    .line 1960
    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/motion/MotionController;->getPostLayoutDvDp(FIIFF[F)V

    goto :goto_1

    .line 1964
    :cond_2
    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/support/constraint/motion/MotionController;->getDpDt(FFF[F)V

    :goto_1
    const/4 p1, 0x2

    if-ge p5, p1, :cond_3

    const/4 p1, 0x0

    .line 1967
    aget p2, p4, p1

    mul-float p2, p2, v0

    aput p2, p4, p1

    const/4 p1, 0x1

    .line 1968
    aget p2, p4, p1

    mul-float p2, p2, v0

    aput p2, p4, p1

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
    .locals 4

    if-eqz p1, :cond_1

    .line 1256
    :try_start_0
    new-instance v0, Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroid/support/constraint/motion/MotionScene;-><init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionLayout;I)V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 1257
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1258
    :cond_0
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1, p0}, Landroid/support/constraint/motion/MotionScene;->readFallback(Landroid/support/constraint/motion/MotionLayout;)V

    .line 1259
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v1, v2}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1260
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 1261
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionScene;->setRtl(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unable to parse MotionScene file"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    .line 1267
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    :cond_2
    :goto_0
    return-void
.end method

.method lookUpConstraintId(Ljava/lang/String;)I
    .locals 1

    .line 3967
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3970
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->lookUpConstraintId(Ljava/lang/String;)I

    move-result p1

    return p1
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
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1, p0}, Landroid/support/constraint/motion/MotionScene;->readFallback(Landroid/support/constraint/motion/MotionLayout;)V

    if-eqz v0, :cond_0

    .line 3478
    invoke-virtual {v0, p0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    .line 3480
    :cond_0
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 3482
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

    :cond_3
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 3416
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 3419
    :cond_0
    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz v0, :cond_4

    .line 3420
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3421
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 3424
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p0, v2}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 3430
    :cond_1
    invoke-virtual {v0}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegionId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 3432
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 3433
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3435
    :cond_3
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 3436
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3437
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3440
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mRegionView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, p1}, Landroid/support/constraint/motion/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3442
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 v0, 0x1

    .line 3166
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    const/4 v1, 0x0

    .line 3171
    :try_start_0
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v2, :cond_0

    .line 3172
    invoke-super/range {p0 .. p5}, Landroid/support/constraint/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3190
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 3177
    :try_start_1
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastLayoutWidth:I

    if-ne p1, p4, :cond_1

    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastLayoutHeight:I

    if-eq p1, p5, :cond_2

    .line 3178
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 3179
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 3185
    :cond_2
    iput p4, p0, Landroid/support/constraint/motion/MotionLayout;->mLastLayoutWidth:I

    .line 3186
    iput p5, p0, Landroid/support/constraint/motion/MotionLayout;->mLastLayoutHeight:I

    .line 3187
    iput p4, p0, Landroid/support/constraint/motion/MotionLayout;->mOldWidth:I

    .line 3188
    iput p5, p0, Landroid/support/constraint/motion/MotionLayout;->mOldHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3190
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mInLayout:Z

    .line 3191
    throw p1
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 2342
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    .line 2343
    invoke-super {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;->onMeasure(II)V

    return-void

    .line 2346
    :cond_0
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    const/4 v1, 0x0

    const/4 v2, 0x1

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
    :goto_1
    iget-boolean v3, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    if-eqz v3, :cond_3

    .line 2348
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 2349
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->onNewStateAttachHandlers()V

    .line 2350
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->processTransitionCompleted()V

    const/4 v0, 0x1

    .line 2354
    :cond_3
    iget-boolean v3, p0, Landroid/support/constraint/motion/MotionLayout;->mDirtyHierarchy:Z

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    .line 2358
    :cond_4
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastWidthMeasureSpec:I

    .line 2359
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mLastHeightMeasureSpec:I

    .line 2361
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result v3

    .line 2362
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v4}, Landroid/support/constraint/motion/MotionScene;->getEndId()I

    move-result v4

    if-nez v0, :cond_5

    .line 2364
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v0, v3, v4}, Landroid/support/constraint/motion/MotionLayout$Model;->isNotConfiguredWith(II)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_6

    .line 2365
    invoke-super {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;->onMeasure(II)V

    .line 2366
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v0

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2, v4}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 2367
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout$Model;->reEvaluateState()V

    .line 2368
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {p1, v3, v4}, Landroid/support/constraint/motion/MotionLayout$Model;->setMeasuredId(II)V

    goto :goto_2

    :cond_6
    const/4 v1, 0x1

    .line 2372
    :goto_2
    iget-boolean p1, p0, Landroid/support/constraint/motion/MotionLayout;->mMeasureDuringTransition:Z

    if-nez p1, :cond_7

    if-eqz v1, :cond_c

    .line 2373
    :cond_7
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 2374
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    .line 2375
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    .line 2376
    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result p2

    add-int/2addr p2, p1

    .line 2377
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mWidthMeasureMode:I

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_8

    if-nez p1, :cond_9

    .line 2378
    :cond_8
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapWidth:I

    int-to-float v0, p1

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mEndWrapWidth:I

    sub-int/2addr v3, p1

    int-to-float p1, v3

    mul-float v2, v2, p1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 2379
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 2381
    :cond_9
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mHeightMeasureMode:I

    if-eq p1, v1, :cond_a

    if-nez p1, :cond_b

    .line 2382
    :cond_a
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStartWrapHeight:I

    int-to-float p2, p1

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mPostInterpolationPosition:F

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mEndWrapHeight:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    mul-float v1, v1, p1

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 2383
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

    .line 2385
    :cond_b
    invoke-virtual {p0, v0, p2}, Landroid/support/constraint/motion/MotionLayout;->setMeasuredDimension(II)V

    .line 2387
    :cond_c
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->evaluateLayout()V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 9

    .line 2443
    iget-object p5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz p5, :cond_b

    iget-object p5, p5, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-nez p5, :cond_0

    goto/16 :goto_0

    .line 2447
    :cond_0
    iget-object p5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object p5, p5, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {p5}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result p5

    if-nez p5, :cond_1

    return-void

    .line 2451
    :cond_1
    iget-object p5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object p5, p5, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    const/4 v0, -0x1

    if-eqz p5, :cond_2

    .line 2452
    invoke-virtual {p5}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2453
    invoke-virtual {p5}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2455
    invoke-virtual {v1}, Landroid/support/constraint/motion/TouchResponse;->getTouchRegionId()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 2456
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v1, :cond_2

    return-void

    .line 2462
    :cond_2
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene;->getMoveWhenScrollAtTop()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2464
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    cmpl-float v4, v1, v2

    if-eqz v4, :cond_3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 2470
    :cond_4
    invoke-virtual {p5}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object p5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_8

    iget-object p5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object p5, p5, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {p5}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object p5

    invoke-virtual {p5}, Landroid/support/constraint/motion/TouchResponse;->getFlags()I

    move-result p5

    and-int/2addr p5, v1

    if-eqz p5, :cond_8

    .line 2471
    iget-object p5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-virtual {p5, v4, v5}, Landroid/support/constraint/motion/MotionScene;->getProgressDirection(FF)F

    move-result p5

    .line 2472
    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpg-float v5, v4, v3

    if-gtz v5, :cond_5

    cmpg-float v5, p5, v3

    if-ltz v5, :cond_6

    :cond_5
    cmpl-float v2, v4, v2

    if-ltz v2, :cond_8

    cmpl-float p5, p5, v3

    if-lez p5, :cond_8

    .line 2474
    :cond_6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_7

    .line 2475
    invoke-virtual {p1, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 2477
    new-instance p2, Landroid/support/constraint/motion/MotionLayout$1;

    invoke-direct {p2, p0, p1}, Landroid/support/constraint/motion/MotionLayout$1;-><init>(Landroid/support/constraint/motion/MotionLayout;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void

    .line 2491
    :cond_8
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 2492
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v2

    int-to-float p5, p2

    .line 2493
    iput p5, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDX:F

    int-to-float v4, p3

    .line 2494
    iput v4, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDY:F

    .line 2495
    iget-wide v5, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetTime:J

    sub-long v5, v2, v5

    long-to-double v5, v5

    const-wide v7, 0x3e112e0be826d695L    # 1.0E-9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-float v5, v5

    iput v5, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDT:F

    .line 2496
    iput-wide v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetTime:J

    .line 2500
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2, p5, v4}, Landroid/support/constraint/motion/MotionScene;->processScrollMove(FF)V

    .line 2501
    iget p5, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    cmpl-float p1, p1, p5

    if-eqz p1, :cond_9

    .line 2502
    aput p2, p4, v0

    .line 2503
    aput p3, p4, v1

    .line 2505
    :cond_9
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->evaluate(Z)V

    .line 2506
    aget p1, p4, v0

    if-nez p1, :cond_a

    aget p1, p4, v1

    if-eqz p1, :cond_b

    .line 2507
    :cond_a
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionLayout;->mUndergoingMotion:Z

    :cond_b
    :goto_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    return-void
.end method

.method onNewStateAttachHandlers()V
    .locals 2

    .line 3506
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    return-void

    .line 3509
    :cond_0
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    invoke-virtual {v0, p0, v1}, Landroid/support/constraint/motion/MotionScene;->autoTransition(Landroid/support/constraint/motion/MotionLayout;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3510
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->requestLayout()V

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

    :cond_3
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 3496
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz p1, :cond_0

    .line 3497
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionScene;->setRtl(Z)V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 2395
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object p1, p1, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 2397
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object p1, p1, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 2398
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getTouchResponse()Landroid/support/constraint/motion/TouchResponse;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/motion/TouchResponse;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 2

    .line 2418
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez p1, :cond_0

    return-void

    .line 2421
    :cond_0
    iget p2, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDX:F

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDT:F

    div-float/2addr p2, v0

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScrollTargetDY:F

    div-float/2addr v1, v0

    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/motion/MotionScene;->processScrollUp(FF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

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

    if-eqz v0, :cond_0

    .line 3459
    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3460
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3462
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getCurrentState()I

    move-result v1

    invoke-virtual {v0, p1, v1, p0}, Landroid/support/constraint/motion/MotionScene;->processTouchEvent(Landroid/view/MotionEvent;ILandroid/support/constraint/motion/MotionLayout;)V

    const/4 p1, 0x1

    return p1

    .line 3468
    :cond_1
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 3778
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 3779
    instance-of v0, p1, Landroid/support/constraint/motion/MotionHelper;

    if-eqz v0, :cond_4

    .line 3780
    check-cast p1, Landroid/support/constraint/motion/MotionHelper;

    .line 3781
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 3784
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3786
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionHelper;->isUsedOnShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3787
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 3790
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3792
    :cond_2
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionHelper;->isUseOnHide()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3793
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 3794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 3796
    :cond_3
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

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

    :cond_1
    return-void
.end method

.method protected parseLayoutDescription(I)V
    .locals 0

    const/4 p1, 0x0

    .line 3201
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    return-void
.end method

.method public rebuildMotion()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "MotionLayout"

    const-string v1, "This method is deprecated. Please call rebuildScene() instead."

    .line 3867
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    return-void
.end method

.method public rebuildScene()V
    .locals 1

    .line 3875
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionLayout$Model;->reEvaluateState()V

    .line 3876
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    return-void
.end method

.method public removeTransitionListener(Landroid/support/constraint/motion/MotionLayout$TransitionListener;)Z
    .locals 1

    .line 3620
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3623
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    return-void

    .line 2327
    :cond_0
    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    .line 3351
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mDebugPath:I

    .line 3352
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    .line 4005
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInteractionEnabled:Z

    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 1

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

    if-eqz v0, :cond_0

    .line 1313
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    return-void

    .line 1317
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    return-void
.end method

.method public setOnHide(F)V
    .locals 3

    .line 3826
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3827
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3829
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionHelper;

    .line 3830
    invoke-virtual {v2, p1}, Landroid/support/constraint/motion/MotionHelper;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3

    .line 3816
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3817
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3819
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/MotionHelper;

    .line 3820
    invoke-virtual {v2, p1}, Landroid/support/constraint/motion/MotionHelper;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_0

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    :cond_0
    const-string v2, "MotionLayout"

    const-string v3, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    .line 1448
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

    return-void

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

    :cond_5
    const/4 v0, -0x1

    .line 1475
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1476
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1480
    :cond_6
    :goto_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 1484
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    .line 1485
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1486
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    const-wide/16 v1, -0x1

    .line 1487
    iput-wide v1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 1488
    iput-wide v1, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    const/4 p1, 0x0

    .line 1489
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1491
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1492
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    return-void
.end method

.method public setProgress(FF)V
    .locals 1

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
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setVelocity(F)V

    return-void

    .line 1335
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    .line 1336
    sget-object p1, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1337
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1338
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    return-void
.end method

.method public setScene(Landroid/support/constraint/motion/MotionScene;)V
    .locals 1

    .line 3260
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 3261
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionScene;->setRtl(Z)V

    .line 3262
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    return-void
.end method

.method public setState(III)V
    .locals 1

    .line 1292
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->SETUP:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V

    .line 1293
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v0, -0x1

    .line 1294
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1295
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1296
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mConstraintLayoutSpec:Landroid/support/constraint/ConstraintLayoutStates;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayoutStates;->updateConstraints(IFF)V

    goto :goto_0

    .line 1298
    :cond_0
    iget-object p2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz p2, :cond_1

    .line 1299
    invoke-virtual {p2, p1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setState(Landroid/support/constraint/motion/MotionLayout$TransitionState;)V
    .locals 2

    .line 1040
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1043
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionState:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    .line 1044
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

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 1060
    :cond_2
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_5

    .line 1061
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->fireTransitionCompleted()V

    goto :goto_0

    .line 1052
    :cond_3
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->MOVING:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_4

    .line 1053
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->fireTransitionChange()V

    .line 1055
    :cond_4
    sget-object v0, Landroid/support/constraint/motion/MotionLayout$TransitionState;->FINISHED:Landroid/support/constraint/motion/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_5

    .line 1056
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->fireTransitionCompleted()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setTransition(I)V
    .locals 6

    .line 1166
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-eqz v0, :cond_6

    .line 1167
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionLayout;->getTransition(I)Landroid/support/constraint/motion/MotionScene$Transition;

    move-result-object p1

    .line 1169
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1170
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1172
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1173
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    if-nez p1, :cond_0

    .line 1174
    new-instance p1, Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-direct {p1, p0}, Landroid/support/constraint/motion/MotionLayout$StateCache;-><init>(Landroid/support/constraint/motion/MotionLayout;)V

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    .line 1176
    :cond_0
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setStartState(I)V

    .line 1177
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setEndState(I)V

    return-void

    :cond_1
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1189
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 1191
    :cond_2
    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-ne v1, v2, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1194
    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1, p1}, Landroid/support/constraint/motion/MotionScene;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 1195
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v2, v4}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v5, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v4, v5}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v4}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1196
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 1198
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    iput v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1200
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/support/constraint/motion/Debug;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " transitionToStart "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->transitionToStart()V

    goto :goto_2

    .line 1204
    :cond_5
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setTransition(II)V
    .locals 3

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
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout$StateCache;->setEndState(I)V

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

    move-result-object p1

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v2, p2}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1153
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    const/4 p1, 0x0

    .line 1154
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1155
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->transitionToStart()V

    :cond_2
    return-void
.end method

.method protected setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V
    .locals 4

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

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1214
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1215
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1216
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1218
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1219
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1220
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    :goto_0
    const/4 v0, 0x1

    .line 1222
    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionScene$Transition;->isTransitionFlag(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 1227
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    move-result p1

    .line 1228
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getEndId()I

    move-result v0

    .line 1229
    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-ne v0, v1, :cond_2

    return-void

    .line 1232
    :cond_2
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1233
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 1234
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1, p1, v0}, Landroid/support/constraint/motion/MotionScene;->setTransition(II)V

    .line 1240
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-virtual {v1, v2}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1241
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    iget v1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {p1, v0, v1}, Landroid/support/constraint/motion/MotionLayout$Model;->setMeasuredId(II)V

    .line 1242
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout$Model;->reEvaluateState()V

    .line 1244
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 1

    .line 3942
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    const-string p1, "MotionLayout"

    const-string v0, "MotionScene not defined"

    .line 3943
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3946
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/MotionScene;->setDuration(I)V

    return-void
.end method

.method public setTransitionListener(Landroid/support/constraint/motion/MotionLayout$TransitionListener;)V
    .locals 0

    .line 3596
    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionListener:Landroid/support/constraint/motion/MotionLayout$TransitionListener;

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 1

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

    move-result p1

    if-eqz p1, :cond_1

    .line 1426
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStateCache:Landroid/support/constraint/motion/MotionLayout$StateCache;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout$StateCache;->apply()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2332
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    invoke-static {v0, v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    .line 2334
    invoke-static {v0, v2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (pos:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Dpos/Dt:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public touchAnimateTo(IFF)V
    .locals 10

    .line 1597
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    if-nez v0, :cond_0

    return-void

    .line 1600
    :cond_0
    iget v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1604
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

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    goto/16 :goto_1

    .line 1639
    :cond_2
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v0

    invoke-static {p3, p1, v0}, Landroid/support/constraint/motion/MotionLayout;->willJump(FFF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1640
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    iget p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v0

    invoke-virtual {p1, p3, p2, v0}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->config(FFF)V

    .line 1641
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 1643
    :cond_3
    iget-object v2, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    iget v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget v6, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 1644
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v7

    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getMaxVelocity()F

    move-result v8

    move v4, p2

    move v5, p3

    .line 1643
    invoke-virtual/range {v2 .. v8}, Landroid/support/constraint/motion/utils/StopLogic;->config(FFFFFF)V

    .line 1645
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mLastVelocity:F

    .line 1646
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1647
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1648
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1649
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 1634
    :cond_4
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    iget p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v0}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v0

    invoke-virtual {p1, p3, p2, v0}, Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;->config(FFF)V

    .line 1635
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mDecelerateLogic:Landroid/support/constraint/motion/MotionLayout$DecelerateInterpolator;

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_5
    if-ne p1, v0, :cond_6

    const/4 p2, 0x0

    goto :goto_0

    :cond_6
    if-ne p1, v2, :cond_7

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1620
    :cond_7
    :goto_0
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    .line 1621
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getMaxAcceleration()F

    move-result v8

    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getMaxVelocity()F

    move-result v9

    move v5, p2

    move v6, p3

    .line 1620
    invoke-virtual/range {v3 .. v9}, Landroid/support/constraint/motion/utils/StopLogic;->config(FFFFFF)V

    .line 1623
    iget p1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1624
    iput p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1625
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    .line 1626
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mStopLogic:Landroid/support/constraint/motion/utils/StopLogic;

    iput-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    const/4 p1, 0x0

    .line 1655
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    .line 1656
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 1657
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

    return-void
.end method

.method public transitionToEnd()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1776
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    return-void
.end method

.method public transitionToStart()V
    .locals 1

    const/4 v0, 0x0

    .line 1767
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    return-void
.end method

.method public transitionToState(I)V
    .locals 1

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

    return-void

    :cond_1
    const/4 v0, -0x1

    .line 1793
    invoke-virtual {p0, p1, v0, v0}, Landroid/support/constraint/motion/MotionLayout;->transitionToState(III)V

    return-void
.end method

.method public transitionToState(III)V
    .locals 11

    .line 1814
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    if-eqz v0, :cond_0

    .line 1815
    iget-object v0, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mStateSet:Landroid/support/constraint/StateSet;

    iget v2, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/support/constraint/StateSet;->convertToConstraintSet(IIFF)I

    move-result p2

    if-eq p2, v1, :cond_0

    move p1, p2

    .line 1826
    :cond_0
    iget p2, p0, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-ne p2, p1, :cond_1

    return-void

    .line 1829
    :cond_1
    iget p3, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    const/4 v0, 0x0

    if-ne p3, p1, :cond_2

    .line 1830
    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    return-void

    .line 1833
    :cond_2
    iget p3, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p3, p1, :cond_3

    .line 1834
    invoke-virtual {p0, v2}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    return-void

    .line 1837
    :cond_3
    iput p1, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    if-eq p2, v1, :cond_4

    .line 1846
    invoke-virtual {p0, p2, p1}, Landroid/support/constraint/motion/MotionLayout;->setTransition(II)V

    .line 1847
    invoke-virtual {p0, v2}, Landroid/support/constraint/motion/MotionLayout;->animateTo(F)V

    .line 1849
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1850
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->transitionToEnd()V

    return-void

    :cond_4
    const/4 p2, 0x0

    .line 1859
    iput-boolean p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTemporalInterpolator:Z

    .line 1860
    iput v2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionGoalPosition:F

    .line 1861
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1862
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1863
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastTime:J

    .line 1864
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/support/constraint/motion/MotionLayout;->mAnimationStartTime:J

    .line 1865
    iput-boolean p2, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionInstantly:Z

    const/4 p3, 0x0

    .line 1866
    iput-object p3, p0, Landroid/support/constraint/motion/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1867
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v3}, Landroid/support/constraint/motion/MotionScene;->getDuration()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    iput v3, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    .line 1868
    iput v1, p0, Landroid/support/constraint/motion/MotionLayout;->mBeginState:I

    .line 1869
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    iget v4, p0, Landroid/support/constraint/motion/MotionLayout;->mEndState:I

    invoke-virtual {v3, v1, v4}, Landroid/support/constraint/motion/MotionScene;->setTransition(II)V

    .line 1871
    iget-object v1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v1}, Landroid/support/constraint/motion/MotionScene;->getStartId()I

    .line 1873
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getChildCount()I

    move-result v1

    .line 1874
    iget-object v3, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    .line 1876
    invoke-virtual {p0, v3}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1877
    new-instance v5, Landroid/support/constraint/motion/MotionController;

    invoke-direct {v5, v4}, Landroid/support/constraint/motion/MotionController;-><init>(Landroid/view/View;)V

    .line 1878
    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    .line 1880
    iput-boolean v3, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1882
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v6, p1}, Landroid/support/constraint/motion/MotionScene;->getConstraintSet(I)Landroid/support/constraint/ConstraintSet;

    move-result-object p1

    invoke-virtual {v4, v5, p3, p1}, Landroid/support/constraint/motion/MotionLayout$Model;->initFrom(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/ConstraintSet;Landroid/support/constraint/ConstraintSet;)V

    .line 1883
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->rebuildScene()V

    .line 1884
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mModel:Landroid/support/constraint/motion/MotionLayout$Model;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout$Model;->build()V

    .line 1885
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionLayout;->computeCurrentPositions()V

    .line 1886
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getWidth()I

    move-result p1

    .line 1887
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getHeight()I

    move-result p3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v1, :cond_6

    .line 1890
    iget-object v4, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v10}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/MotionController;

    .line 1891
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {v5, v4}, Landroid/support/constraint/motion/MotionScene;->getKeyFrames(Landroid/support/constraint/motion/MotionController;)V

    .line 1892
    iget v7, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionDuration:F

    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->getNanoTime()J

    move-result-wide v8

    move v5, p1

    move v6, p3

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/motion/MotionController;->setup(IIFJ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1895
    :cond_6
    iget-object p1, p0, Landroid/support/constraint/motion/MotionLayout;->mScene:Landroid/support/constraint/motion/MotionScene;

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionScene;->getStaggered()F

    move-result p1

    cmpl-float p3, p1, v0

    if-eqz p3, :cond_8

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    const v4, -0x800001

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_7

    .line 1900
    iget-object v6, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v5}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/motion/MotionController;

    .line 1901
    invoke-virtual {v6}, Landroid/support/constraint/motion/MotionController;->getFinalX()F

    move-result v7

    .line 1902
    invoke-virtual {v6}, Landroid/support/constraint/motion/MotionController;->getFinalY()F

    move-result v6

    add-float/2addr v6, v7

    .line 1903
    invoke-static {p3, v6}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 1904
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-ge p2, v1, :cond_8

    .line 1908
    iget-object v5, p0, Landroid/support/constraint/motion/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/motion/MotionController;

    .line 1909
    invoke-virtual {v5}, Landroid/support/constraint/motion/MotionController;->getFinalX()F

    move-result v6

    .line 1910
    invoke-virtual {v5}, Landroid/support/constraint/motion/MotionController;->getFinalY()F

    move-result v7

    sub-float v8, v2, p1

    div-float v8, v2, v8

    .line 1911
    iput v8, v5, Landroid/support/constraint/motion/MotionController;->mStaggerScale:F

    add-float/2addr v6, v7

    sub-float/2addr v6, p3

    mul-float v6, v6, p1

    sub-float v7, v4, p3

    div-float/2addr v6, v7

    sub-float v6, p1, v6

    .line 1912
    iput v6, v5, Landroid/support/constraint/motion/MotionController;->mStaggerOffset:F

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 1916
    :cond_8
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionPosition:F

    .line 1917
    iput v0, p0, Landroid/support/constraint/motion/MotionLayout;->mTransitionLastPosition:F

    .line 1918
    iput-boolean v3, p0, Landroid/support/constraint/motion/MotionLayout;->mInTransition:Z

    .line 1920
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionLayout;->invalidate()V

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

    return-void
.end method

.method public updateState(ILandroid/support/constraint/ConstraintSet;)V
    .locals 1

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

    :cond_1
    return-void
.end method
