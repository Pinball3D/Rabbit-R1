.class public final synthetic Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;


# instance fields
.field public final synthetic f$0:Lio/sentry/instrumentation/file/SentryFileOutputStream;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lio/sentry/instrumentation/file/SentryFileOutputStream;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda2;->f$0:Lio/sentry/instrumentation/file/SentryFileOutputStream;

    iput-object p2, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda2;->f$1:[B

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda2;->f$0:Lio/sentry/instrumentation/file/SentryFileOutputStream;

    iget-object p0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda2;->f$1:[B

    invoke-virtual {v0, p0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->lambda$write$1$io-sentry-instrumentation-file-SentryFileOutputStream([B)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
