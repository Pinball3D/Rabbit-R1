.class public final Lio/sentry/vendor/gson/stream/MalformedJsonException;
.super Ljava/io/IOException;
.source "MalformedJsonException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p2}, Lio/sentry/vendor/gson/stream/MalformedJsonException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lio/sentry/vendor/gson/stream/MalformedJsonException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
