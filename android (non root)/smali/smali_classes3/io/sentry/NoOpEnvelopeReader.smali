.class public final Lio/sentry/NoOpEnvelopeReader;
.super Ljava/lang/Object;
.source "NoOpEnvelopeReader.java"

# interfaces
.implements Lio/sentry/IEnvelopeReader;


# static fields
.field private static final instance:Lio/sentry/NoOpEnvelopeReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lio/sentry/NoOpEnvelopeReader;

    invoke-direct {v0}, Lio/sentry/NoOpEnvelopeReader;-><init>()V

    sput-object v0, Lio/sentry/NoOpEnvelopeReader;->instance:Lio/sentry/NoOpEnvelopeReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpEnvelopeReader;
    .locals 1

    sget-object v0, Lio/sentry/NoOpEnvelopeReader;->instance:Lio/sentry/NoOpEnvelopeReader;

    return-object v0
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
