.class final Lio/sentry/android/core/ApplicationNotResponding;
.super Ljava/lang/RuntimeException;
.source "ApplicationNotResponding.java"


# static fields
.field private static final serialVersionUID:J = 0x38134d53dcf0fd8L


# instance fields
.field private final thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Thread;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string p1, "Thread must be provided."

    .line 24
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Thread;

    iput-object p1, p0, Lio/sentry/android/core/ApplicationNotResponding;->thread:Ljava/lang/Thread;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/android/core/ApplicationNotResponding;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method


# virtual methods
.method public getThread()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/ApplicationNotResponding;->thread:Ljava/lang/Thread;

    return-object p0
.end method
