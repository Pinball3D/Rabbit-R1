.class public Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;
.super Landroidx/media3/common/ParserException;
.source "UnrecognizedInputFormatException.java"


# instance fields
.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/media3/common/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;->uri:Landroid/net/Uri;

    return-void
.end method
