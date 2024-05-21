.class public final Lio/sentry/exception/ExceptionMechanismException;
.super Ljava/lang/RuntimeException;
.source "ExceptionMechanismException.java"


# static fields
.field private static final serialVersionUID:J = 0x1f9b66fbce644fbL


# instance fields
.field private final exceptionMechanism:Lio/sentry/protocol/Mechanism;

.field private final snapshot:Z

.field private final thread:Ljava/lang/Thread;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/exception/ExceptionMechanismException;-><init>(Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;Ljava/lang/Thread;Z)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v0, "Mechanism is required."

    .line 34
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/protocol/Mechanism;

    iput-object p1, p0, Lio/sentry/exception/ExceptionMechanismException;->exceptionMechanism:Lio/sentry/protocol/Mechanism;

    const-string p1, "Throwable is required."

    .line 35
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lio/sentry/exception/ExceptionMechanismException;->throwable:Ljava/lang/Throwable;

    const-string p1, "Thread is required."

    .line 36
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Thread;

    iput-object p1, p0, Lio/sentry/exception/ExceptionMechanismException;->thread:Ljava/lang/Thread;

    iput-boolean p4, p0, Lio/sentry/exception/ExceptionMechanismException;->snapshot:Z

    return-void
.end method


# virtual methods
.method public getExceptionMechanism()Lio/sentry/protocol/Mechanism;
    .locals 0

    iget-object p0, p0, Lio/sentry/exception/ExceptionMechanismException;->exceptionMechanism:Lio/sentry/protocol/Mechanism;

    return-object p0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lio/sentry/exception/ExceptionMechanismException;->thread:Ljava/lang/Thread;

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lio/sentry/exception/ExceptionMechanismException;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public isSnapshot()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/exception/ExceptionMechanismException;->snapshot:Z

    return p0
.end method
