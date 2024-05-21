.class public Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "MotionLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$Model;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
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

.field private mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

.field private mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

.field mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

.field private mEndState:I

.field mEndWrapHeight:I

.field mEndWrapWidth:I

.field mFrameArrayList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/MotionController;",
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

.field private mKeyCache:Landroidx/constraintlayout/motion/widget/KeyCache;

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

.field mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

.field private mNeedsFireTransitionCompleted:Z

.field mOldHeight:I

.field mOldWidth:I

.field private mOnHideHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mOnShowHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field mPostInterpolationPosition:F

.field private mRegionView:Landroid/view/View;

.field mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

.field mScrollTargetDT:F

.field mScrollTargetDX:F

.field mScrollTargetDY:F

.field mScrollTargetTime:J

.field mStartWrapHeight:I

.field mStartWrapWidth:I

.field private mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

.field private mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

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

.field private mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

.field private mTransitionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mTransitionPosition:F

.field mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field mUndergoingMotion:Z

.field mWidthMeasureMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 963
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 884
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIndirectTransition:Z

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 906
    new-instance v2, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 907
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->firstDown:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 948
    new-instance p1, Landroidx/constraintlayout/motion/widget/KeyCache;

    invoke-direct {p1}, Landroidx/constraintlayout/motion/widget/KeyCache;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/motion/widget/KeyCache;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 959
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 2313
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3365
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3715
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 964
    invoke-direct {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 968
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 884
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIndirectTransition:Z

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 906
    new-instance v2, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 907
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->firstDown:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 948
    new-instance p1, Landroidx/constraintlayout/motion/widget/KeyCache;

    invoke-direct {p1}, Landroidx/constraintlayout/motion/widget/KeyCache;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/motion/widget/KeyCache;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 959
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 2313
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3365
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3715
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 969
    invoke-direct {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 973
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    const/4 p3, -0x1

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    const/4 p3, 0x0

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 884
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIndirectTransition:Z

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 906
    new-instance v1, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v1}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 907
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->firstDown:Z

    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 948
    new-instance p1, Landroidx/constraintlayout/motion/widget/KeyCache;

    invoke-direct {p1}, Landroidx/constraintlayout/motion/widget/KeyCache;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/motion/widget/KeyCache;

    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 959
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 2313
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3365
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3715
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 974
    invoke-direct {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 0

    .line 859
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    return p0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 0

    .line 859
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    return p0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 0

    .line 859
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    return p0
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0

    .line 859
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setupMotionViews()V

    return-void
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .locals 0

    .line 859
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object p0
.end method

.method static synthetic access$2000(Landroidx/constraintlayout/motion/widget/MotionLayout;IIIIZZ)V
    .locals 0

    .line 859
    invoke-virtual/range {p0 .. p6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveMeasuredDimension(IIIIZZ)V

    return-void
.end method

.method static synthetic access$300(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .locals 0

    .line 859
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .locals 0

    .line 859
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .locals 0

    .line 859
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .locals 0

    .line 859
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .locals 0

    .line 859
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Landroidx/constraintlayout/motion/widget/MotionLayout;ZLandroid/view/View;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 0

    .line 859
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic access$900(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 0

    .line 859
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    return p0
.end method

.method private checkStructure()V
    .locals 11

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    const-string v1, "MotionLayout"

    if-nez v0, :cond_0

    const-string p0, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\""

    .line 3264
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3268
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->checkStructure(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 3269
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 3270
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3271
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

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

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3272
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-ne v4, v5, :cond_2

    const-string v5, "CHECK: CURRENT"

    .line 3273
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    :cond_2
    invoke-direct {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->checkStructure(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 3276
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v5

    .line 3277
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v4

    .line 3278
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 3279
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 3280
    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    const-string v9, "->"

    if-ne v8, v4, :cond_3

    .line 3282
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "CHECK: two transitions with the same start and end "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    :cond_3
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-ne v8, v5, :cond_4

    .line 3287
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "CHECK: you can\'t have reverse transitions"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    :cond_4
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3291
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3292
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v5

    if-nez v5, :cond_5

    .line 3293
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, " no such constraintSetStart "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3296
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v4

    if-nez v4, :cond_1

    .line 3297
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " no such constraintSetEnd "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private checkStructure(ILandroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 10

    .line 3303
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 3304
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    const-string v4, "CHECK: "

    const-string v5, "MotionLayout"

    if-ge v2, v0, :cond_2

    .line 3306
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3307
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v3, :cond_0

    .line 3309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " ALL VIEWS SHOULD HAVE ID\'s "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3310
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

    .line 3309
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    :cond_0
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    if-nez v3, :cond_1

    .line 3314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NO CONSTRAINTS for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3317
    :cond_2
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintSet;->getKnownIds()[I

    move-result-object v0

    .line 3318
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 3319
    aget v2, v0, v1

    .line 3320
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 3321
    aget v7, v0, v1

    invoke-virtual {p0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_3

    .line 3322
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " NO View matches id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    :cond_3
    invoke-virtual {p2, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->getHeight(I)I

    move-result v7

    const-string v8, ") no LAYOUT_HEIGHT"

    const-string v9, "("

    if-ne v7, v3, :cond_4

    .line 3325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    :cond_4
    invoke-virtual {p2, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->getWidth(I)I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 3328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private checkStructure(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 2

    .line 3334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CHECK: transition = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->debugString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MotionLayout"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "CHECK: transition.setDuration = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getDuration()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    move-result p0

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const-string p0, "CHECK: start and end constraint set should not be the same!"

    .line 3337
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private computeCurrentPositions()V
    .locals 4

    .line 1747
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1749
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 1750
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v3, :cond_0

    goto :goto_1

    .line 1754
    :cond_0
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->setStartCurrentState(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private debugPos()V
    .locals 6

    const/4 v0, 0x0

    .line 2859
    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2860
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2861
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2862
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    invoke-static {v4, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2863
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2864
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionLayout"

    .line 2861
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private evaluateLayout()V
    .locals 11

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    sub-float/2addr v0, v1

    .line 2932
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 2933
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 2936
    instance-of v4, v3, Landroidx/constraintlayout/motion/utils/StopLogic;

    const v5, 0x3089705f    # 1.0E-9f

    const/4 v6, 0x0

    if-nez v4, :cond_0

    iget-wide v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    sub-long v7, v1, v7

    long-to-float v4, v7

    mul-float/2addr v4, v0

    mul-float/2addr v4, v5

    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    div-float/2addr v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v7, v4

    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    if-eqz v4, :cond_1

    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    :cond_1
    cmpl-float v4, v0, v6

    const/4 v8, 0x0

    if-lez v4, :cond_2

    iget v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v9, v7, v9

    if-gez v9, :cond_3

    :cond_2
    cmpg-float v9, v0, v6

    if-gtz v9, :cond_4

    iget v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_4

    :cond_3
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    move v9, v8

    :goto_1
    if-eqz v3, :cond_6

    if-nez v9, :cond_6

    iget-boolean v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    if-eqz v9, :cond_5

    iget-wide v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    sub-long/2addr v1, v9

    long-to-float v1, v1

    mul-float/2addr v1, v5

    .line 2954
    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    goto :goto_2

    .line 2956
    :cond_5
    invoke-interface {v3, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    :cond_6
    :goto_2
    if-lez v4, :cond_7

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v1, v7, v1

    if-gez v1, :cond_8

    :cond_7
    cmpg-float v0, v0, v6

    if-gtz v0, :cond_9

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v0, v7, v0

    if-gtz v0, :cond_9

    :cond_8
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    :cond_9
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 2964
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v6

    .line 2965
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v9

    :goto_3
    if-ge v8, v6, :cond_b

    .line 2967
    invoke-virtual {p0, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 2968
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v0, :cond_a

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/motion/widget/KeyCache;

    move v2, v7

    move-wide v3, v9

    .line 2970
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    if-eqz v0, :cond_c

    .line 2974
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_c
    return-void
.end method

.method private fireTransitionChange()V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 3687
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-eqz v0, :cond_1

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 3691
    invoke-interface {v0, p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 3694
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 3695
    invoke-interface {v3, p0, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    :cond_3
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-eqz v2, :cond_4

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 3703
    invoke-interface {v2, p0, v3, v4, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 3706
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 3707
    invoke-interface {v2, p0, v3, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V

    goto :goto_1

    :cond_5
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    :cond_6
    return-void
.end method

.method private fireTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-eqz v0, :cond_0

    .line 4015
    invoke-interface {v0, p0, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    .line 4018
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 4019
    invoke-interface {v0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 3378
    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3379
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    .line 3380
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    .line 3382
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3383
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, p2

    invoke-direct {p0, v6, v7, v5, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3388
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

    .line 3390
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3391
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 3392
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    .line 3397
    :cond_2
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 9

    .line 3202
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInEditMode()Z

    move-result v0

    sput-boolean v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    const/4 v0, -0x1

    if-eqz p1, :cond_9

    .line 3204
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout:[I

    .line 3205
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3206
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_7

    .line 3210
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 3211
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_layoutDescription:I

    if-ne v6, v7, :cond_0

    .line 3212
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 3213
    new-instance v7, Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, p0, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    iput-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    goto :goto_2

    .line 3214
    :cond_0
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_currentState:I

    if-ne v6, v7, :cond_1

    .line 3215
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    goto :goto_2

    .line 3216
    :cond_1
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_motionProgress:I

    if-ne v6, v7, :cond_2

    const/4 v7, 0x0

    .line 3217
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    goto :goto_2

    .line 3219
    :cond_2
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_applyMotionScene:I

    if-ne v6, v7, :cond_3

    .line 3220
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    goto :goto_2

    .line 3221
    :cond_3
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_showPaths:I

    if-ne v6, v7, :cond_5

    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    if-nez v7, :cond_6

    .line 3223
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    goto :goto_1

    :cond_4
    move v6, v3

    :goto_1
    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    goto :goto_2

    .line 3225
    :cond_5
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_motionDebug:I

    if-ne v6, v7, :cond_6

    .line 3226
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3229
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez p1, :cond_8

    const-string p1, "MotionLayout"

    const-string v1, "WARNING NO app:layoutDescription tag"

    .line 3231
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-nez v5, :cond_9

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    :cond_9
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    if-eqz p1, :cond_a

    .line 3238
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->checkStructure()V

    :cond_a
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p1, :cond_b

    .line 3241
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3242
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3246
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    :cond_b
    return-void
.end method

.method private onNewStateAttachHandlers()V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 3500
    invoke-virtual {v0, p0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->autoTransition(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3501
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    return-void

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3505
    invoke-virtual {v1, p0, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3507
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->supportTouch()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3508
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setupTouch()V

    :cond_3
    return-void
.end method

.method private processTransitionCompleted()V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3737
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 3741
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-eqz v2, :cond_3

    .line 3743
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 3746
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 3747
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 3751
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private setupMotionViews()V
    .locals 12

    .line 1496
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 1498
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->build()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 1501
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v8

    .line 1502
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v9

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1503
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->gatPathMotionArc()I

    move-result v2

    const/4 v3, -0x1

    const/4 v10, 0x0

    if-eq v2, v3, :cond_1

    move v3, v10

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 1506
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v4, :cond_0

    .line 1508
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->setPathMotionArc(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v11, v10

    :goto_1
    if-ge v11, v0, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 1514
    invoke-virtual {p0, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1516
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 1517
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v6

    move v3, v8

    move v4, v9

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1521
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStaggered()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_d

    float-to-double v3, v2

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v10

    .line 1525
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, -0x800001

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move v7, v3

    move v6, v4

    move v5, v10

    :goto_3
    const/high16 v8, 0x3f800000    # 1.0f

    if-ge v5, v0, :cond_b

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 1528
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1529
    iget v11, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_9

    move v5, v10

    :goto_4
    if-ge v5, v0, :cond_6

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 1544
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1545
    iget v7, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1546
    iget v7, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1547
    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    if-ge v10, v0, :cond_d

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 1551
    invoke-virtual {p0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1552
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_8

    sub-float v6, v8, v2

    div-float v6, v8, v6

    .line 1554
    iput v6, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    if-eqz v1, :cond_7

    .line 1556
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    sub-float v6, v3, v6

    sub-float v7, v3, v4

    div-float/2addr v6, v7

    mul-float/2addr v6, v2

    sub-float v6, v2, v6

    iput v6, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    goto :goto_6

    .line 1558
    :cond_7
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, v2

    sub-float v7, v3, v4

    div-float/2addr v6, v7

    sub-float v6, v2, v6

    iput v6, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    :cond_8
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1533
    :cond_9
    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v8

    .line 1534
    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v9

    if-eqz v1, :cond_a

    sub-float/2addr v9, v8

    goto :goto_7

    :cond_a
    add-float/2addr v9, v8

    .line 1536
    :goto_7
    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1537
    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_b
    :goto_8
    if-ge v10, v0, :cond_d

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 1564
    invoke-virtual {p0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1565
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v4

    .line 1566
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v5

    if-eqz v1, :cond_c

    sub-float/2addr v5, v4

    goto :goto_9

    :cond_c
    add-float/2addr v5, v4

    :goto_9
    sub-float v4, v8, v2

    div-float v4, v8, v4

    .line 1568
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    sub-float v4, v7, v6

    div-float/2addr v5, v4

    sub-float v4, v2, v5

    .line 1569
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_d
    return-void
.end method

.method private static willJump(FFF)Z
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-lez v1, :cond_1

    div-float v0, p0, p2

    mul-float/2addr p0, v0

    mul-float/2addr p2, v0

    mul-float/2addr p2, v0

    div-float/2addr p2, v4

    sub-float/2addr p0, p2

    add-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    neg-float v1, p0

    div-float/2addr v1, p2

    mul-float/2addr p0, v1

    mul-float/2addr p2, v1

    mul-float/2addr p2, v1

    div-float/2addr p2, v4

    add-float/2addr p0, p2

    add-float/2addr p1, p0

    cmpg-float p0, p1, v0

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method


# virtual methods
.method public addTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 3600
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateTo(F)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    if-eqz v1, :cond_1

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v2, v1, p1

    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 1732
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 1733
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1734
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 1736
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1743
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    return-void
.end method

.method disableAutoTransition(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez p0, :cond_0

    return-void

    .line 3986
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->disableAutoTransition(Z)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, 0x0

    .line 2878
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    .line 2885
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 2893
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    .line 2895
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1

    sub-long v5, v3, v5

    const-wide/32 v7, 0xbebc200

    cmp-long v1, v5, v7

    if-lez v1, :cond_2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    int-to-float v1, v1

    long-to-float v5, v5

    const v6, 0x3089705f    # 1.0E-9f

    mul-float/2addr v5, v6

    div-float/2addr v1, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    goto :goto_0

    :cond_1
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 2907
    :cond_2
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, 0x42280000    # 42.0f

    .line 2908
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2909
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    .line 2910
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fps "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-static {p0, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getState(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2911
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-static {p0, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getState(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ) state="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    const-string/jumbo v4, "undefined"

    goto :goto_1

    .line 2912
    :cond_3
    invoke-static {p0, v4}, Landroidx/constraintlayout/motion/widget/Debug;->getState(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v4, -0x1000000

    .line 2913
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2914
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1d

    int-to-float v4, v4

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {p1, v1, v5, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v4, -0x77ff78

    .line 2915
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2916
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-float v4, v4

    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    if-le v0, v2, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    if-nez v0, :cond_5

    .line 2922
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2924
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v2

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    invoke-virtual {v0, p1, v1, v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->draw(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V

    :cond_6
    return-void
.end method

.method public enableTransition(IZ)V
    .locals 2

    .line 996
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    .line 998
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnable(Z)V

    return-void

    :cond_0
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1001
    iget-object p2, p2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 1002
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getTransitionsWithState(I)Ljava/util/List;

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

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 1004
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1005
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    :cond_2
    const/4 p0, 0x0

    .line 1010
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnable(Z)V

    return-void
.end method

.method evaluate(Z)V
    .locals 22

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2981
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    :cond_0
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v3, :cond_1

    cmpg-float v3, v1, v5

    if-gez v3, :cond_1

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    :cond_1
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_2

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    if-eqz v3, :cond_24

    if-nez p1, :cond_2

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_24

    :cond_2
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    sub-float/2addr v3, v1

    .line 2989
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 2990
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v8

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 2993
    instance-of v10, v3, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    const v11, 0x3089705f    # 1.0E-9f

    if-nez v10, :cond_3

    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    sub-long v12, v8, v12

    long-to-float v10, v12

    mul-float/2addr v10, v1

    mul-float/2addr v10, v11

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    div-float/2addr v10, v12

    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    goto :goto_0

    :cond_3
    move v10, v2

    :goto_0
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v12, v10

    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    if-eqz v13, :cond_4

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    :cond_4
    cmpl-float v13, v1, v2

    if-lez v13, :cond_5

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v14, v12, v14

    if-gez v14, :cond_6

    :cond_5
    cmpg-float v14, v1, v2

    if-gtz v14, :cond_7

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v14, v12, v14

    if-gtz v14, :cond_7

    :cond_6
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    move v14, v6

    goto :goto_1

    :cond_7
    move v14, v7

    :goto_1
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    const v15, 0x3727c5ac    # 1.0E-5f

    if-eqz v3, :cond_d

    if-nez v14, :cond_d

    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    if-eqz v14, :cond_a

    iget-wide v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    sub-long v4, v8, v4

    long-to-float v4, v4

    mul-float/2addr v4, v11

    .line 3020
    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 3027
    instance-of v5, v4, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    if-eqz v5, :cond_c

    .line 3028
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    move-result v4

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 3030
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    mul-float/2addr v5, v8

    cmpg-float v5, v5, v15

    if-gtz v5, :cond_8

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    :cond_8
    cmpl-float v5, v4, v2

    if-lez v5, :cond_9

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v8, v3, v5

    if-ltz v8, :cond_9

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_9
    cmpg-float v4, v4, v2

    if-gez v4, :cond_c

    cmpg-float v4, v3, v2

    if-gtz v4, :cond_c

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    move v12, v2

    goto :goto_3

    .line 3046
    :cond_a
    invoke-interface {v3, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 3047
    instance-of v5, v4, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    if-eqz v5, :cond_b

    .line 3048
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    move-result v4

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    goto :goto_2

    :cond_b
    add-float/2addr v12, v10

    .line 3050
    invoke-interface {v4, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v4, v3

    mul-float/2addr v4, v1

    div-float/2addr v4, v10

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    :cond_c
    :goto_2
    move v12, v3

    :cond_d
    :goto_3
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 3056
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v15

    if-lez v3, :cond_e

    .line 3057
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_e
    if-lez v13, :cond_f

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v3, v12, v3

    if-gez v3, :cond_10

    :cond_f
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_11

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v3, v12, v3

    if-gtz v3, :cond_11

    :cond_10
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    :cond_11
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v12, v3

    if-gez v4, :cond_12

    cmpg-float v3, v12, v2

    if-gtz v3, :cond_13

    :cond_12
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 3068
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 3071
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v3

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 3073
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v8

    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    move v5, v7

    :goto_4
    if-ge v5, v3, :cond_15

    .line 3079
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 3080
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    check-cast v16, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v16, :cond_14

    iget-boolean v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/motion/widget/KeyCache;

    move-object/from16 v17, v10

    move/from16 v18, v12

    move-wide/from16 v19, v8

    move-object/from16 v21, v15

    .line 3082
    invoke-virtual/range {v16 .. v21}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z

    move-result v10

    or-int/2addr v10, v11

    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_15
    if-lez v13, :cond_16

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v3, v12, v3

    if-gez v3, :cond_17

    :cond_16
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_18

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v3, v12, v3

    if-gtz v3, :cond_18

    :cond_17
    move v3, v6

    goto :goto_5

    :cond_18
    move v3, v7

    :goto_5
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    if-nez v5, :cond_19

    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    if-nez v5, :cond_19

    if-eqz v3, :cond_19

    .line 3093
    sget-object v5, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_19
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    if-eqz v5, :cond_1a

    .line 3096
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_1a
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    xor-int/2addr v3, v6

    or-int/2addr v3, v5

    iput-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    cmpg-float v3, v12, v2

    if-gtz v3, :cond_1b

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1b

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-eq v5, v3, :cond_1b

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3109
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    .line 3110
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3111
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    move v7, v6

    :cond_1b
    float-to-double v8, v12

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v8, v10

    if-ltz v3, :cond_1c

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-eq v3, v5, :cond_1c

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3122
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    .line 3123
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3124
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    move v7, v6

    :cond_1c
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    if-nez v3, :cond_20

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    if-eqz v3, :cond_1d

    goto :goto_6

    :cond_1d
    if-lez v13, :cond_1e

    if-eqz v4, :cond_1f

    :cond_1e
    cmpg-float v3, v1, v2

    if-gez v3, :cond_21

    cmpl-float v3, v12, v2

    if-nez v3, :cond_21

    .line 3132
    :cond_1f
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_7

    .line 3129
    :cond_20
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    :cond_21
    :goto_7
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    if-nez v3, :cond_22

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    if-eqz v3, :cond_22

    if-lez v13, :cond_22

    if-eqz v4, :cond_23

    :cond_22
    cmpg-float v1, v1, v2

    if-gez v1, :cond_24

    cmpl-float v1, v12, v2

    if-nez v1, :cond_24

    .line 3135
    :cond_23
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    :cond_24
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_26

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-eq v1, v2, :cond_25

    goto :goto_8

    :cond_25
    move v6, v7

    :goto_8
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    :goto_9
    move v7, v6

    goto :goto_b

    :cond_26
    cmpg-float v1, v1, v2

    if-gtz v1, :cond_28

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-eq v1, v2, :cond_27

    goto :goto_a

    :cond_27
    move v6, v7

    :goto_a
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    goto :goto_9

    :cond_28
    :goto_b
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    or-int/2addr v1, v7

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    if-eqz v7, :cond_29

    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    if-nez v1, :cond_29

    .line 3153
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_29
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    return-void
.end method

.method protected fireTransitionCompleted()V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 3721
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 3725
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 3726
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
    move v0, v1

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-eq v0, v2, :cond_2

    if-eq v2, v1, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 3729
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3733
    :cond_2
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->processTransitionCompleted()V

    return-void
.end method

.method public fireTrigger(IZF)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-eqz v0, :cond_0

    .line 3677
    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionTrigger(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3680
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 3681
    invoke-interface {v1, p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionTrigger(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method getAnchorDpDt(IFFF[F)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 3545
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v0, :cond_0

    .line 3550
    invoke-virtual {v0, p2, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionController;->getDpDt(FFF[F)V

    .line 3551
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result p1

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->lastPos:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->lastY:F

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 3562
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3563
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 3564
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "WARNING could not find view id "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MotionLayout"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3848
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p0

    return-object p0
.end method

.method public getConstraintSetIds()[I
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3835
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSetIds()[I

    move-result-object p0

    return-object p0
.end method

.method getConstraintSetNames(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3974
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentState()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    return p0
.end method

.method public getDebugMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 3362
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    return-void
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionScene$Transition;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3900
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getDesignTool()Landroidx/constraintlayout/motion/widget/DesignTool;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    if-nez v0, :cond_0

    .line 3759
    new-instance v0, Landroidx/constraintlayout/motion/widget/DesignTool;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/DesignTool;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    return-object p0
.end method

.method public getEndState()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    return p0
.end method

.method protected getNanoTime()J
    .locals 2

    .line 983
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    return p0
.end method

.method public getStartState()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    return p0
.end method

.method public getTargetPosition()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    return p0
.end method

.method public getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3947
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getTransitionById(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object p0

    return-object p0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    .line 1435
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 1437
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->recordState()V

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 1438
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->getTransitionState()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getTransitionTimeMs()J
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_0

    .line 3575
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    :cond_0
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    mul-float/2addr p0, v1

    float-to-long v0, p0

    return-wide v0
.end method

.method public getVelocity()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    return p0
.end method

.method public getViewVelocity(Landroid/view/View;FF[FI)V
    .locals 8

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    sub-float/2addr v0, v1

    .line 1943
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    const v3, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v2, v3

    .line 1944
    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1945
    invoke-interface {v2, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    mul-float/2addr v0, v1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1951
    instance-of v3, v1, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    if-eqz v3, :cond_1

    .line 1952
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    move-result v0

    :cond_1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 1955
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionController;

    and-int/lit8 p0, p5, 0x1

    if-nez p0, :cond_2

    .line 1958
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    move v5, p2

    move v6, p3

    move-object v7, p4

    .line 1957
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionController;->getPostLayoutDvDp(FIIFF[F)V

    goto :goto_1

    .line 1961
    :cond_2
    invoke-virtual {v1, v2, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionController;->getDpDt(FFF[F)V

    :goto_1
    const/4 p0, 0x2

    if-ge p5, p0, :cond_3

    const/4 p0, 0x0

    .line 1964
    aget p1, p4, p0

    mul-float/2addr p1, v0

    aput p1, p4, p0

    const/4 p0, 0x1

    .line 1965
    aget p1, p4, p0

    mul-float/2addr p1, v0

    aput p1, p4, p0

    :cond_3
    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 0

    .line 1277
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isAttachedToWindow()Z

    move-result p0

    return p0
.end method

.method public isInteractionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    return p0
.end method

.method public loadLayoutDescription(I)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1256
    :try_start_0
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1257
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1258
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->readFallback(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 1259
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 1260
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1261
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setRtl(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1264
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unable to parse MotionScene file"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    :cond_1
    :goto_0
    return-void
.end method

.method lookUpConstraintId(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3961
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected obtainVelocityTracker()Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;
    .locals 0

    .line 992
    invoke-static {}, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->obtain()Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 3470
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3472
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3473
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->readFallback(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    if-eqz v0, :cond_0

    .line 3475
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 3479
    :cond_1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-eqz p0, :cond_2

    .line 3481
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->apply()V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 3416
    :cond_0
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v0, :cond_4

    .line 3417
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3418
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 3421
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p0, v2}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 3427
    :cond_1
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegionId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 3429
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 3430
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3433
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    const/4 v2, 0x0

    .line 3437
    invoke-direct {p0, v2, v2, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3439
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v2, :cond_0

    .line 3169
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    :try_start_1
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutWidth:I

    if-ne p1, p4, :cond_1

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutHeight:I

    if-eq p1, p5, :cond_2

    .line 3175
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 3176
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    :cond_2
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutWidth:I

    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutHeight:I

    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOldWidth:I

    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOldHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 3188
    throw p1
.end method

.method protected onMeasure(II)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    .line 2340
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    if-eq v0, p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    if-eqz v3, :cond_3

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 2346
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    .line 2347
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->processTransitionCompleted()V

    move v0, v2

    .line 2351
    :cond_3
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDirtyHierarchy:Z

    if-eqz v3, :cond_4

    move v0, v2

    :cond_4
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2358
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2359
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v4

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 2361
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->isNotConfiguredWith(II)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_6

    .line 2362
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 2363
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 2364
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 2365
    invoke-virtual {p1, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setMeasuredId(II)V

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    if-nez p1, :cond_7

    if-eqz v1, :cond_c

    .line 2370
    :cond_7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 2371
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    .line 2372
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    .line 2373
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result p2

    add-int/2addr p2, p1

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_8

    if-nez p1, :cond_9

    :cond_8
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    int-to-float v0, p1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    sub-int/2addr v3, p1

    int-to-float p1, v3

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 2376
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_9
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    if-eq p1, v1, :cond_a

    if-nez p1, :cond_b

    :cond_a
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    int-to-float p2, p1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr v1, p1

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 2380
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 2382
    :cond_b
    invoke-virtual {p0, v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setMeasuredDimension(II)V

    .line 2384
    :cond_c
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluateLayout()V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 9

    iget-object p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p5, :cond_a

    .line 2440
    iget-object p5, p5, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-nez p5, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2444
    iget-object p5, p5, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-virtual {p5}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result p5

    if-nez p5, :cond_1

    return-void

    :cond_1
    iget-object p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2448
    iget-object p5, p5, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    const/4 v0, -0x1

    if-eqz p5, :cond_2

    .line 2449
    invoke-virtual {p5}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2450
    invoke-virtual {p5}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2452
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegionId()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 2453
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 2459
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMoveWhenScrollAtTop()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    cmpl-float v4, v1, v2

    if-eqz v4, :cond_3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4

    .line 2461
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 2467
    :cond_4
    invoke-virtual {p5}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object p5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_7

    iget-object p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object p5, p5, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-virtual {p5}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getFlags()I

    move-result p5

    and-int/2addr p5, v1

    if-eqz p5, :cond_7

    iget-object p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    int-to-float v4, p2

    int-to-float v5, p3

    .line 2468
    invoke-virtual {p5, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getProgressDirection(FF)F

    move-result p5

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpg-float v5, v4, v3

    if-gtz v5, :cond_5

    cmpg-float v5, p5, v3

    if-ltz v5, :cond_6

    :cond_5
    cmpl-float v2, v4, v2

    if-ltz v2, :cond_7

    cmpl-float p5, p5, v3

    if-lez p5, :cond_7

    .line 2472
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 2474
    new-instance p2, Landroidx/constraintlayout/motion/widget/MotionLayout$1;

    invoke-direct {p2, p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$1;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_7
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 2489
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    int-to-float p5, p2

    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    int-to-float v4, p3

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    iget-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    sub-long v5, v2, v5

    long-to-double v5, v5

    const-wide v7, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2497
    invoke-virtual {v2, p5, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->processScrollMove(FF)V

    iget p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    cmpl-float p1, p1, p5

    if-eqz p1, :cond_8

    .line 2499
    aput p2, p4, v0

    .line 2500
    aput p3, p4, v1

    .line 2502
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    .line 2503
    aget p1, p4, v0

    if-nez p1, :cond_9

    aget p1, p4, v1

    if-eqz p1, :cond_a

    :cond_9
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    :cond_a
    :goto_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0

    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    const/4 p6, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 2424
    :cond_0
    aget p1, p7, p6

    add-int/2addr p1, p4

    aput p1, p7, p6

    const/4 p1, 0x1

    .line 2425
    aget p2, p7, p1

    add-int/2addr p2, p5

    aput p2, p7, p1

    :cond_1
    iput-boolean p6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p1, :cond_0

    .line 3488
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setRtl(Z)V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p1, :cond_1

    .line 2392
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 2394
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 2395
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    div-float/2addr p2, v0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    div-float/2addr p0, v0

    .line 2418
    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->processScrollUp(FF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    if-eqz v1, :cond_1

    .line 3454
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->supportTouch()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3455
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v0, :cond_0

    .line 3456
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3457
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3459
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v1

    invoke-virtual {v0, p1, v1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->processTouchEvent(Landroid/view/MotionEvent;ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    const/4 p0, 0x1

    return p0

    .line 3465
    :cond_1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 3769
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 3770
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    if-eqz v0, :cond_4

    .line 3771
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 3775
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3777
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->isUsedOnShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 3781
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3783
    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->isUseOnHide()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 3785
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    :cond_3
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 3787
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 3797
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3799
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    .line 3802
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected parseLayoutDescription(I)V
    .locals 0

    const/4 p1, 0x0

    .line 3198
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    return-void
.end method

.method public rebuildMotion()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "MotionLayout"

    const-string v1, "This method is deprecated. Please call rebuildScene() instead."

    .line 3858
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    return-void
.end method

.method public rebuildScene()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 3866
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    .line 3867
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    return-void
.end method

.method public removeTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)Z
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3614
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public requestLayout()V
    .locals 2

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    .line 2318
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 2320
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getLayoutDuringTransition()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2324
    :cond_0
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 3349
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    .line 1310
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1311
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1313
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void

    .line 1317
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void
.end method

.method public setOnHide(F)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3818
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 3820
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 3821
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3808
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 3810
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 3811
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 1447
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    .line 1449
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 1451
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setProgress(F)V

    return-void

    :cond_1
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    .line 1464
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    .line 1469
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 1473
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 1489
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    return-void
.end method

.method public setProgress(FF)V
    .locals 1

    .line 1327
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    .line 1329
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 1331
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setProgress(F)V

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 1332
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setVelocity(F)V

    return-void

    .line 1335
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 1336
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1338
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    return-void
.end method

.method public setScene(Landroidx/constraintlayout/motion/widget/MotionScene;)V
    .locals 1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 3258
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setRtl(Z)V

    .line 3259
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    return-void
.end method

.method public setState(III)V
    .locals 1

    .line 1292
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 1296
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    if-eqz v0, :cond_0

    .line 1297
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->updateConstraints(IFF)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p2, :cond_1

    .line 1299
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    .locals 2

    .line 1040
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 1046
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne v0, v1, :cond_1

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v1, :cond_1

    .line 1047
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionChange()V

    .line 1049
    :cond_1
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$2;->$SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState:[I

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->ordinal()I

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
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_5

    .line 1061
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionCompleted()V

    goto :goto_0

    .line 1052
    :cond_3
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_4

    .line 1053
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionChange()V

    .line 1055
    :cond_4
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_5

    .line 1056
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionCompleted()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setTransition(I)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_6

    .line 1167
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object p1

    .line 1169
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 1170
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 1172
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez p1, :cond_0

    .line 1174
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 1176
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setStartState(I)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 1177
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    return-void

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-ne v0, v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1194
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 1195
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v4

    invoke-virtual {p1, v1, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 1196
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 1198
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1200
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " transitionToStart "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    goto :goto_2

    .line 1204
    :cond_5
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setTransition(II)V
    .locals 3

    .line 1134
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    .line 1136
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 1138
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setStartState(I)V

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 1139
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_2

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 1151
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 1152
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 1153
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1155
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    :cond_2
    return-void
.end method

.method protected setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1210
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 1212
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1213
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    :goto_0
    const/4 v0, 0x1

    .line 1222
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isTransitionFlag(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1227
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result p1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1228
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1234
    invoke-virtual {v1, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 1240
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 1241
    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setMeasuredId(II)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 1242
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    .line 1244
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez p0, :cond_0

    const-string p0, "MotionLayout"

    const-string p1, "MotionScene not defined"

    .line 3934
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3937
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setDuration(I)V

    return-void
.end method

.method public setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    .line 1422
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 1424
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setTransitionState(Landroid/os/Bundle;)V

    .line 1425
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 1426
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->apply()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2329
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 2331
    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Dpos/Dt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public touchAnimateTo(IFF)V
    .locals 10

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 1602
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1603
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v7, v1, v2

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

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

    :cond_2
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1636
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->willJump(FFF)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1637
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v0

    invoke-virtual {p1, p3, p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->config(FFF)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1641
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v7

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxVelocity()F

    move-result v8

    move v4, p2

    move v5, p3

    .line 1640
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/motion/utils/StopLogic;->config(FFFFFF)V

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1631
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v0

    invoke-virtual {p1, p3, p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->config(FFF)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_5
    if-ne p1, v0, :cond_6

    move p2, v1

    goto :goto_0

    :cond_6
    if-ne p1, v2, :cond_7

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_7
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1618
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v8

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxVelocity()F

    move-result v9

    move v5, p2

    move v6, p3

    .line 1617
    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/motion/utils/StopLogic;->config(FFFFFF)V

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 1653
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 1654
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    return-void
.end method

.method public transitionToEnd()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1773
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    return-void
.end method

.method public transitionToStart()V
    .locals 1

    const/4 v0, 0x0

    .line 1764
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    return-void
.end method

.method public transitionToState(I)V
    .locals 1

    .line 1783
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    .line 1785
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 1787
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    return-void

    :cond_1
    const/4 v0, -0x1

    .line 1790
    invoke-virtual {p0, p1, v0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(III)V

    return-void
.end method

.method public transitionToState(III)V
    .locals 11

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1812
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, v2, p1, p2, p3}, Landroidx/constraintlayout/widget/StateSet;->convertToConstraintSet(IIFF)I

    move-result p2

    if-eq p2, v1, :cond_0

    move p1, p2

    :cond_0
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    const/4 v0, 0x0

    if-ne p3, p1, :cond_2

    .line 1827
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    return-void

    :cond_2
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p3, p1, :cond_3

    .line 1831
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    return-void

    :cond_3
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-eq p2, v1, :cond_4

    .line 1843
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    .line 1844
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1847
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    return-void

    :cond_4
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1860
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 1861
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    iput-boolean p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    const/4 p3, 0x0

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1864
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 1866
    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1868
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    .line 1870
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v1

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 1871
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move v3, p2

    :goto_0
    if-ge v3, v1, :cond_5

    .line 1873
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1874
    new-instance v5, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-direct {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 1875
    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 1879
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v6, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    invoke-virtual {v4, v5, p3, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 1880
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 1881
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->build()V

    .line 1882
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->computeCurrentPositions()V

    .line 1883
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result p1

    .line 1884
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result p3

    move v10, p2

    :goto_1
    if-ge v10, v1, :cond_6

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 1887
    invoke-virtual {p0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionController;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1888
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 1889
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v8

    move v5, p1

    move v6, p3

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1892
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStaggered()F

    move-result p1

    cmpl-float p3, p1, v0

    if-eqz p3, :cond_8

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    const v4, -0x800001

    move v5, p2

    :goto_2
    if-ge v5, v1, :cond_7

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 1897
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1898
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v7

    .line 1899
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v6

    add-float/2addr v6, v7

    .line 1900
    invoke-static {p3, v6}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 1901
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-ge p2, v1, :cond_8

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 1905
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1906
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v6

    .line 1907
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v7

    sub-float v8, v2, p1

    div-float v8, v2, v8

    .line 1908
    iput v8, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    add-float/2addr v6, v7

    sub-float/2addr v6, p3

    mul-float/2addr v6, p1

    sub-float v7, v4, p3

    div-float/2addr v6, v7

    sub-float v6, p1, v6

    .line 1909
    iput v6, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_8
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 1917
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    return-void
.end method

.method public updateState()V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 3887
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 3888
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    return-void
.end method

.method public updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    .line 3878
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setConstraintSet(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 3880
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState()V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-ne v0, p1, :cond_1

    .line 3882
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    return-void
.end method
