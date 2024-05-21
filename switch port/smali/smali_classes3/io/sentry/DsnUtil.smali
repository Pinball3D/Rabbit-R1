.class public final Lio/sentry/DsnUtil;
.super Ljava/lang/Object;
.source "DsnUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static urlContainsDsnHost(Lio/sentry/SentryOptions;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 26
    :cond_2
    new-instance v1, Lio/sentry/Dsn;

    invoke-direct {v1, p0}, Lio/sentry/Dsn;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Lio/sentry/Dsn;->getSentryUri()Ljava/net/URI;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    return v0

    .line 34
    :cond_3
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
