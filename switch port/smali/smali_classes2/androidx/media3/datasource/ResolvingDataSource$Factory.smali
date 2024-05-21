.class public final Landroidx/media3/datasource/ResolvingDataSource$Factory;
.super Ljava/lang/Object;
.source "ResolvingDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/ResolvingDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final resolver:Landroidx/media3/datasource/ResolvingDataSource$Resolver;

.field private final upstreamFactory:Landroidx/media3/datasource/DataSource$Factory;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/datasource/ResolvingDataSource$Resolver;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/ResolvingDataSource$Factory;->upstreamFactory:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p2, p0, Landroidx/media3/datasource/ResolvingDataSource$Factory;->resolver:Landroidx/media3/datasource/ResolvingDataSource$Resolver;

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 0

    .line 65
    invoke-virtual {p0}, Landroidx/media3/datasource/ResolvingDataSource$Factory;->createDataSource()Landroidx/media3/datasource/ResolvingDataSource;

    move-result-object p0

    return-object p0
.end method

.method public createDataSource()Landroidx/media3/datasource/ResolvingDataSource;
    .locals 2

    .line 82
    new-instance v0, Landroidx/media3/datasource/ResolvingDataSource;

    iget-object v1, p0, Landroidx/media3/datasource/ResolvingDataSource$Factory;->upstreamFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v1}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v1

    iget-object p0, p0, Landroidx/media3/datasource/ResolvingDataSource$Factory;->resolver:Landroidx/media3/datasource/ResolvingDataSource$Resolver;

    invoke-direct {v0, v1, p0}, Landroidx/media3/datasource/ResolvingDataSource;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/ResolvingDataSource$Resolver;)V

    return-object v0
.end method
