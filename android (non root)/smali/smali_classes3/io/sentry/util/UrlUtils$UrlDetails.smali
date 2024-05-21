.class public final Lio/sentry/util/UrlUtils$UrlDetails;
.super Ljava/lang/Object;
.source "UrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/util/UrlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UrlDetails"
.end annotation


# instance fields
.field private final fragment:Ljava/lang/String;

.field private final query:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/util/UrlUtils$UrlDetails;->url:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/util/UrlUtils$UrlDetails;->query:Ljava/lang/String;

    iput-object p3, p0, Lio/sentry/util/UrlUtils$UrlDetails;->fragment:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applyToRequest(Lio/sentry/protocol/Request;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->url:Ljava/lang/String;

    .line 174
    invoke-virtual {p1, v0}, Lio/sentry/protocol/Request;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->query:Ljava/lang/String;

    .line 175
    invoke-virtual {p1, v0}, Lio/sentry/protocol/Request;->setQueryString(Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->fragment:Ljava/lang/String;

    .line 176
    invoke-virtual {p1, p0}, Lio/sentry/protocol/Request;->setFragment(Ljava/lang/String;)V

    return-void
.end method

.method public applyToSpan(Lio/sentry/ISpan;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->query:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "http.query"

    .line 185
    invoke-interface {p1, v1, v0}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->fragment:Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "http.fragment"

    .line 188
    invoke-interface {p1, v0, p0}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public getFragment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->fragment:Ljava/lang/String;

    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->query:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getUrlOrFallback()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->url:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "unknown"

    :cond_0
    return-object p0
.end method
