.class public final Lio/sentry/BaggageHeader;
.super Ljava/lang/Object;
.source "BaggageHeader.java"


# static fields
.field public static final BAGGAGE_HEADER:Ljava/lang/String; = "baggage"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/BaggageHeader;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromBaggageAndOutgoingHeader(Lio/sentry/Baggage;Ljava/util/List;)Lio/sentry/BaggageHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/Baggage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/BaggageHeader;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 17
    iget-object v1, p0, Lio/sentry/Baggage;->logger:Lio/sentry/ILogger;

    .line 18
    invoke-static {p1, v0, v1}, Lio/sentry/Baggage;->fromHeader(Ljava/util/List;ZLio/sentry/ILogger;)Lio/sentry/Baggage;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lio/sentry/Baggage;->getThirdPartyHeader()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/Baggage;->toHeaderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 24
    :cond_0
    new-instance p1, Lio/sentry/BaggageHeader;

    invoke-direct {p1, p0}, Lio/sentry/BaggageHeader;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "baggage"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/BaggageHeader;->value:Ljava/lang/String;

    return-object p0
.end method
