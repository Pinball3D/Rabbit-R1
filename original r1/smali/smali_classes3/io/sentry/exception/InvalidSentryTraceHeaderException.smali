.class public final Lio/sentry/exception/InvalidSentryTraceHeaderException;
.super Ljava/lang/Exception;
.source "InvalidSentryTraceHeaderException.java"


# static fields
.field private static final serialVersionUID:J = -0x73ecf18d1363d90cL


# instance fields
.field private final sentryTraceHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lio/sentry/exception/InvalidSentryTraceHeaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sentry-trace header does not conform to expected format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lio/sentry/exception/InvalidSentryTraceHeaderException;->sentryTraceHeader:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSentryTraceHeader()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/exception/InvalidSentryTraceHeaderException;->sentryTraceHeader:Ljava/lang/String;

    return-object p0
.end method
