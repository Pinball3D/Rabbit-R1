.class public final Lio/sentry/transport/NoOpEnvelopeCache;
.super Ljava/lang/Object;
.source "NoOpEnvelopeCache.java"

# interfaces
.implements Lio/sentry/cache/IEnvelopeCache;


# static fields
.field private static final instance:Lio/sentry/transport/NoOpEnvelopeCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lio/sentry/transport/NoOpEnvelopeCache;

    invoke-direct {v0}, Lio/sentry/transport/NoOpEnvelopeCache;-><init>()V

    sput-object v0, Lio/sentry/transport/NoOpEnvelopeCache;->instance:Lio/sentry/transport/NoOpEnvelopeCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/transport/NoOpEnvelopeCache;
    .locals 1

    sget-object v0, Lio/sentry/transport/NoOpEnvelopeCache;->instance:Lio/sentry/transport/NoOpEnvelopeCache;

    return-object v0
.end method


# virtual methods
.method public discard(Lio/sentry/SentryEnvelope;)V
    .locals 0

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/sentry/SentryEnvelope;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public store(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 0

    return-void
.end method
