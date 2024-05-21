.class Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14$1;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;


# direct methods
.method constructor <init>(Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;)V
    .locals 0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14$1;->this$0:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14$1;->this$0:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14$1;->this$0:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;

    .line 234
    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;->mDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->dispatchAnimationFrame()V

    return-void
.end method
