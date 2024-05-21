.class public Lio/flutter/view/VsyncWaiter;
.super Ljava/lang/Object;
.source "VsyncWaiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/VsyncWaiter$FrameCallback;,
        Lio/flutter/view/VsyncWaiter$DisplayListener;
    }
.end annotation


# static fields
.field private static instance:Lio/flutter/view/VsyncWaiter;

.field private static listener:Lio/flutter/view/VsyncWaiter$DisplayListener;


# instance fields
.field private final asyncWaitForVsyncDelegate:Lio/flutter/embedding/engine/FlutterJNI$AsyncWaitForVsyncDelegate;

.field private flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

.field private frameCallback:Lio/flutter/view/VsyncWaiter$FrameCallback;

.field private refreshPeriodNanos:J


# direct methods
.method private constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/flutter/view/VsyncWaiter;->refreshPeriodNanos:J

    .line 50
    new-instance v0, Lio/flutter/view/VsyncWaiter$FrameCallback;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/flutter/view/VsyncWaiter$FrameCallback;-><init>(Lio/flutter/view/VsyncWaiter;J)V

    iput-object v0, p0, Lio/flutter/view/VsyncWaiter;->frameCallback:Lio/flutter/view/VsyncWaiter$FrameCallback;

    .line 108
    new-instance v0, Lio/flutter/view/VsyncWaiter$1;

    invoke-direct {v0, p0}, Lio/flutter/view/VsyncWaiter$1;-><init>(Lio/flutter/view/VsyncWaiter;)V

    iput-object v0, p0, Lio/flutter/view/VsyncWaiter;->asyncWaitForVsyncDelegate:Lio/flutter/embedding/engine/FlutterJNI$AsyncWaitForVsyncDelegate;

    iput-object p1, p0, Lio/flutter/view/VsyncWaiter;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    return-void
.end method

.method static synthetic access$000(Lio/flutter/view/VsyncWaiter;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lio/flutter/view/VsyncWaiter;->refreshPeriodNanos:J

    return-wide v0
.end method

.method static synthetic access$002(Lio/flutter/view/VsyncWaiter;J)J
    .locals 0

    .line 16
    iput-wide p1, p0, Lio/flutter/view/VsyncWaiter;->refreshPeriodNanos:J

    return-wide p1
.end method

.method static synthetic access$100(Lio/flutter/view/VsyncWaiter;)Lio/flutter/embedding/engine/FlutterJNI;
    .locals 0

    .line 16
    iget-object p0, p0, Lio/flutter/view/VsyncWaiter;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    return-object p0
.end method

.method static synthetic access$200(Lio/flutter/view/VsyncWaiter;)Lio/flutter/view/VsyncWaiter$FrameCallback;
    .locals 0

    .line 16
    iget-object p0, p0, Lio/flutter/view/VsyncWaiter;->frameCallback:Lio/flutter/view/VsyncWaiter$FrameCallback;

    return-object p0
.end method

.method static synthetic access$202(Lio/flutter/view/VsyncWaiter;Lio/flutter/view/VsyncWaiter$FrameCallback;)Lio/flutter/view/VsyncWaiter$FrameCallback;
    .locals 0

    .line 16
    iput-object p1, p0, Lio/flutter/view/VsyncWaiter;->frameCallback:Lio/flutter/view/VsyncWaiter$FrameCallback;

    return-object p1
.end method

.method public static getInstance(FLio/flutter/embedding/engine/FlutterJNI;)Lio/flutter/view/VsyncWaiter;
    .locals 4

    sget-object v0, Lio/flutter/view/VsyncWaiter;->instance:Lio/flutter/view/VsyncWaiter;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lio/flutter/view/VsyncWaiter;

    invoke-direct {v0, p1}, Lio/flutter/view/VsyncWaiter;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    sput-object v0, Lio/flutter/view/VsyncWaiter;->instance:Lio/flutter/view/VsyncWaiter;

    .line 57
    :cond_0
    invoke-virtual {p1, p0}, Lio/flutter/embedding/engine/FlutterJNI;->setRefreshRateFPS(F)V

    sget-object p1, Lio/flutter/view/VsyncWaiter;->instance:Lio/flutter/view/VsyncWaiter;

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    float-to-double v2, p0

    div-double/2addr v0, v2

    double-to-long v0, v0

    .line 58
    iput-wide v0, p1, Lio/flutter/view/VsyncWaiter;->refreshPeriodNanos:J

    return-object p1
.end method

.method public static getInstance(Landroid/hardware/display/DisplayManager;Lio/flutter/embedding/engine/FlutterJNI;)Lio/flutter/view/VsyncWaiter;
    .locals 5

    sget-object v0, Lio/flutter/view/VsyncWaiter;->instance:Lio/flutter/view/VsyncWaiter;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lio/flutter/view/VsyncWaiter;

    invoke-direct {v0, p1}, Lio/flutter/view/VsyncWaiter;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    sput-object v0, Lio/flutter/view/VsyncWaiter;->instance:Lio/flutter/view/VsyncWaiter;

    :cond_0
    sget-object v0, Lio/flutter/view/VsyncWaiter;->listener:Lio/flutter/view/VsyncWaiter$DisplayListener;

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Lio/flutter/view/VsyncWaiter$DisplayListener;

    sget-object v1, Lio/flutter/view/VsyncWaiter;->instance:Lio/flutter/view/VsyncWaiter;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Lio/flutter/view/VsyncWaiter$DisplayListener;-><init>(Lio/flutter/view/VsyncWaiter;Landroid/hardware/display/DisplayManager;)V

    sput-object v0, Lio/flutter/view/VsyncWaiter;->listener:Lio/flutter/view/VsyncWaiter$DisplayListener;

    .line 71
    invoke-virtual {v0}, Lio/flutter/view/VsyncWaiter$DisplayListener;->register()V

    :cond_1
    sget-object v0, Lio/flutter/view/VsyncWaiter;->instance:Lio/flutter/view/VsyncWaiter;

    .line 73
    iget-wide v0, v0, Lio/flutter/view/VsyncWaiter;->refreshPeriodNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    sget-object v0, Lio/flutter/view/VsyncWaiter;->instance:Lio/flutter/view/VsyncWaiter;

    const-wide v1, 0x41cdcd6500000000L    # 1.0E9

    float-to-double v3, p0

    div-double/2addr v1, v3

    double-to-long v1, v1

    .line 76
    iput-wide v1, v0, Lio/flutter/view/VsyncWaiter;->refreshPeriodNanos:J

    .line 77
    invoke-virtual {p1, p0}, Lio/flutter/embedding/engine/FlutterJNI;->setRefreshRateFPS(F)V

    :cond_2
    sget-object p0, Lio/flutter/view/VsyncWaiter;->instance:Lio/flutter/view/VsyncWaiter;

    return-object p0
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lio/flutter/view/VsyncWaiter;->instance:Lio/flutter/view/VsyncWaiter;

    sput-object v0, Lio/flutter/view/VsyncWaiter;->listener:Lio/flutter/view/VsyncWaiter$DisplayListener;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/VsyncWaiter;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object p0, p0, Lio/flutter/view/VsyncWaiter;->asyncWaitForVsyncDelegate:Lio/flutter/embedding/engine/FlutterJNI$AsyncWaitForVsyncDelegate;

    .line 132
    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/FlutterJNI;->setAsyncWaitForVsyncDelegate(Lio/flutter/embedding/engine/FlutterJNI$AsyncWaitForVsyncDelegate;)V

    return-void
.end method
