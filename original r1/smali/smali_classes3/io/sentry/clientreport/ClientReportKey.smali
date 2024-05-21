.class final Lio/sentry/clientreport/ClientReportKey;
.super Ljava/lang/Object;
.source "ClientReportKey.java"


# instance fields
.field private final category:Ljava/lang/String;

.field private final reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/clientreport/ClientReportKey;->reason:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/clientreport/ClientReportKey;->category:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lio/sentry/clientreport/ClientReportKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 29
    :cond_1
    check-cast p1, Lio/sentry/clientreport/ClientReportKey;

    .line 30
    invoke-virtual {p0}, Lio/sentry/clientreport/ClientReportKey;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/sentry/clientreport/ClientReportKey;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    invoke-virtual {p0}, Lio/sentry/clientreport/ClientReportKey;->getCategory()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lio/sentry/clientreport/ClientReportKey;->getCategory()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/clientreport/ClientReportKey;->category:Ljava/lang/String;

    return-object p0
.end method

.method public getReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/clientreport/ClientReportKey;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 36
    invoke-virtual {p0}, Lio/sentry/clientreport/ClientReportKey;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/sentry/clientreport/ClientReportKey;->getCategory()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
