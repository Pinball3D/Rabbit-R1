.class public final Lcom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;
.super Ljava/lang/Object;
.source "PriorityDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/PriorityDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final priority:I

.field private final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/util/PriorityTaskManager;I)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iput p3, p0, Lcom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->priority:I

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/PriorityDataSource;

    move-result-object p0

    return-object p0
.end method

.method public createDataSource()Lcom/google/android/exoplayer2/upstream/PriorityDataSource;
    .locals 3

    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/upstream/PriorityDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 68
    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iget p0, p0, Lcom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->priority:I

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/exoplayer2/upstream/PriorityDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/util/PriorityTaskManager;I)V

    return-object v0
.end method
