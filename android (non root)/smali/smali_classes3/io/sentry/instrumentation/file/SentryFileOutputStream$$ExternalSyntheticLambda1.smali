.class public final synthetic Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;


# instance fields
.field public final synthetic f$0:Lio/sentry/instrumentation/file/SentryFileOutputStream;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/sentry/instrumentation/file/SentryFileOutputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda1;->f$0:Lio/sentry/instrumentation/file/SentryFileOutputStream;

    iput p2, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda1;->f$0:Lio/sentry/instrumentation/file/SentryFileOutputStream;

    iget p0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, p0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->lambda$write$0$io-sentry-instrumentation-file-SentryFileOutputStream(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
