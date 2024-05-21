.class public final Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;
.super Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvalidContentTypeException"
.end annotation


# instance fields
.field public final contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;)V
    .locals 3

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid content type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d3

    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v1, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;II)V

    iput-object p1, p0, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;->contentType:Ljava/lang/String;

    return-void
.end method
