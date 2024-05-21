.class public interface abstract Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;
.super Ljava/lang/Object;
.source "ResolvingDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Resolver"
.end annotation


# virtual methods
.method public abstract resolveDataSpec(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lcom/google/android/exoplayer2/upstream/DataSpec;
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
