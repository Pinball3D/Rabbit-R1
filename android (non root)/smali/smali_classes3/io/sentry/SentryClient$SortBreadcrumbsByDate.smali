.class final Lio/sentry/SentryClient$SortBreadcrumbsByDate;
.super Ljava/lang/Object;
.source "SentryClient.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SortBreadcrumbsByDate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/sentry/Breadcrumb;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/SentryClient$1;)V
    .locals 0

    .line 1007
    invoke-direct {p0}, Lio/sentry/SentryClient$SortBreadcrumbsByDate;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/sentry/Breadcrumb;Lio/sentry/Breadcrumb;)I
    .locals 0

    .line 1012
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1007
    check-cast p1, Lio/sentry/Breadcrumb;

    check-cast p2, Lio/sentry/Breadcrumb;

    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryClient$SortBreadcrumbsByDate;->compare(Lio/sentry/Breadcrumb;Lio/sentry/Breadcrumb;)I

    move-result p0

    return p0
.end method
