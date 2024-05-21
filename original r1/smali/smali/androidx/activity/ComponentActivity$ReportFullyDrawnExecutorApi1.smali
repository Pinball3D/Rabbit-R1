.class Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi1;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReportFullyDrawnExecutorApi1"
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1174
    invoke-direct {p0}, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi1;->createHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi1;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private createHandler()Landroid/os/Handler;
    .locals 1

    .line 1196
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    .line 1197
    new-instance v0, Landroid/os/Handler;

    if-nez p0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    :cond_0
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method


# virtual methods
.method public activityDestroyed()V
    .locals 0

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi1;->mHandler:Landroid/os/Handler;

    .line 1191
    invoke-virtual {p0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public viewCreated(Landroid/view/View;)V
    .locals 0

    return-void
.end method
