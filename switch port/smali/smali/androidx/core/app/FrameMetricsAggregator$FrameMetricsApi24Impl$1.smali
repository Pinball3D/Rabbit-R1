.class Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;


# direct methods
.method constructor <init>(Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 8

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 352
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 p3, 0x1

    and-int/2addr p1, p3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 353
    iget-object v2, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v2, v2, v0

    .line 354
    invoke-virtual {p2, v1}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v3

    .line 353
    invoke-virtual {p1, v2, v3, v4}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_0
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 356
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 v2, 0x2

    and-int/2addr p1, v2

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 357
    iget-object v3, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v3, v3, p3

    .line 358
    invoke-virtual {p2, p3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    .line 357
    invoke-virtual {p1, v3, v4, v5}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_1
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 361
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 p3, 0x4

    and-int/2addr p1, p3

    const/4 v3, 0x3

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 362
    iget-object v4, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v4, v4, v2

    .line 363
    invoke-virtual {p2, v3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v5

    .line 362
    invoke-virtual {p1, v4, v5, v6}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_2
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 366
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 367
    iget-object v4, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v3, v4, v3

    .line 368
    invoke-virtual {p2, p3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    .line 367
    invoke-virtual {p1, v3, v4, v5}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_3
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 370
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit8 p1, p1, 0x10

    const/4 v3, 0x5

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 371
    iget-object v4, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object p3, v4, p3

    .line 372
    invoke-virtual {p2, v3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    .line 371
    invoke-virtual {p1, p3, v4, v5}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_4
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 374
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit8 p1, p1, 0x40

    const/4 p3, 0x7

    const/4 v4, 0x6

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 375
    iget-object v5, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v5, v5, v4

    .line 376
    invoke-virtual {p2, p3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 375
    invoke-virtual {p1, v5, v6, v7}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_5
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 379
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 380
    iget-object v5, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v3, v5, v3

    .line 381
    invoke-virtual {p2, v4}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    .line 380
    invoke-virtual {p1, v3, v4, v5}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_6
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 384
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 385
    iget-object v3, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object p3, v3, p3

    .line 386
    invoke-virtual {p2, v0}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v3

    .line 385
    invoke-virtual {p1, p3, v3, v4}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_7
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 389
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_8

    iget-object p0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 390
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object p1, p1, v1

    .line 391
    invoke-virtual {p2, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide p2

    .line 390
    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_8
    return-void
.end method
