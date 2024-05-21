.class public interface abstract Landroidx/media3/datasource/ResolvingDataSource$Resolver;
.super Ljava/lang/Object;
.source "ResolvingDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/ResolvingDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Resolver"
.end annotation


# virtual methods
.method public abstract resolveDataSpec(Landroidx/media3/datasource/DataSpec;)Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public resolveReportedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    return-object p1
.end method
