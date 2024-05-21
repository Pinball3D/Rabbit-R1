.class public Lcom/airbnb/lottie/utils/LottieTrace;
.super Ljava/lang/Object;
.source "LottieTrace.java"


# static fields
.field private static final MAX_DEPTH:I = 0x5


# instance fields
.field private depthPastMaxDepth:I

.field private final sections:[Ljava/lang/String;

.field private final startTimeNs:[J

.field private traceDepth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->sections:[Ljava/lang/String;

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->startTimeNs:[J

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->traceDepth:I

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->depthPastMaxDepth:I

    return-void
.end method


# virtual methods
.method public beginSection(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->traceDepth:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget p1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->depthPastMaxDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->depthPastMaxDepth:I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->sections:[Ljava/lang/String;

    .line 18
    aput-object p1, v1, v0

    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->startTimeNs:[J

    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 21
    invoke-static {p1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    iget p1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->traceDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->traceDepth:I

    return-void
.end method

.method public endSection(Ljava/lang/String;)F
    .locals 3

    iget v0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->depthPastMaxDepth:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->depthPastMaxDepth:I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->traceDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->traceDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->sections:[Ljava/lang/String;

    .line 34
    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->startTimeNs:[J

    iget p0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->traceDepth:I

    aget-wide p0, p1, p0

    sub-long/2addr v0, p0

    long-to-float p0, v0

    const p1, 0x49742400    # 1000000.0f

    div-float/2addr p0, p1

    return p0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unbalanced trace call "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ". Expected "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->sections:[Ljava/lang/String;

    iget p0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->traceDepth:I

    aget-object p0, v1, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t end trace section. There are none."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
