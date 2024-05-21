.class public final Landroidx/media3/datasource/PriorityDataSource$Factory;
.super Ljava/lang/Object;
.source "PriorityDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/PriorityDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final priority:I

.field private final priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

.field private final upstreamFactory:Landroidx/media3/datasource/DataSource$Factory;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/common/PriorityTaskManager;I)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/PriorityDataSource$Factory;->upstreamFactory:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p2, p0, Landroidx/media3/datasource/PriorityDataSource$Factory;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    iput p3, p0, Landroidx/media3/datasource/PriorityDataSource$Factory;->priority:I

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 0

    .line 44
    invoke-virtual {p0}, Landroidx/media3/datasource/PriorityDataSource$Factory;->createDataSource()Landroidx/media3/datasource/PriorityDataSource;

    move-result-object p0

    return-object p0
.end method

.method public createDataSource()Landroidx/media3/datasource/PriorityDataSource;
    .locals 3

    .line 69
    new-instance v0, Landroidx/media3/datasource/PriorityDataSource;

    iget-object v1, p0, Landroidx/media3/datasource/PriorityDataSource$Factory;->upstreamFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 70
    invoke-interface {v1}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/datasource/PriorityDataSource$Factory;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    iget p0, p0, Landroidx/media3/datasource/PriorityDataSource$Factory;->priority:I

    invoke-direct {v0, v1, v2, p0}, Landroidx/media3/datasource/PriorityDataSource;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/common/PriorityTaskManager;I)V

    return-object v0
.end method
