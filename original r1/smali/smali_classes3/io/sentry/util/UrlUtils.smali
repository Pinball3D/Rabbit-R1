.class public final Lio/sentry/util/UrlUtils;
.super Ljava/lang/Object;
.source "UrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/UrlUtils$UrlDetails;
    }
.end annotation


# static fields
.field private static final AUTH_REGEX:Ljava/util/regex/Pattern;

.field public static final SENSITIVE_DATA_SUBSTITUTE:Ljava/lang/String; = "[Filtered]"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(.+://)(.*@)(.*)"

    .line 18
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/util/UrlUtils;->AUTH_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static baseUrlOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "?"

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 126
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "#"

    .line 128
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 130
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static extractBaseUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 58
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-ltz p2, :cond_1

    .line 60
    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static extractFragment(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractQuery(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    if-lez p1, :cond_1

    if-lez p2, :cond_0

    if-le p2, p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 72
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isAbsoluteUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "://"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static parse(Ljava/lang/String;)Lio/sentry/util/UrlUtils$UrlDetails;
    .locals 1

    .line 29
    invoke-static {p0}, Lio/sentry/util/UrlUtils;->isAbsoluteUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p0}, Lio/sentry/util/UrlUtils;->splitAbsoluteUrl(Ljava/lang/String;)Lio/sentry/util/UrlUtils$UrlDetails;

    move-result-object p0

    return-object p0

    .line 32
    :cond_0
    invoke-static {p0}, Lio/sentry/util/UrlUtils;->splitRelativeUrl(Ljava/lang/String;)Lio/sentry/util/UrlUtils$UrlDetails;

    move-result-object p0

    return-object p0
.end method

.method public static parseNullable(Ljava/lang/String;)Lio/sentry/util/UrlUtils$UrlDetails;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 25
    :cond_0
    invoke-static {p0}, Lio/sentry/util/UrlUtils;->parse(Ljava/lang/String;)Lio/sentry/util/UrlUtils$UrlDetails;

    move-result-object p0

    return-object p0
.end method

.method private static splitAbsoluteUrl(Ljava/lang/String;)Lio/sentry/util/UrlUtils$UrlDetails;
    .locals 4

    const/4 v0, 0x0

    .line 92
    :try_start_0
    invoke-static {p0}, Lio/sentry/util/UrlUtils;->urlWithAuthRemoved(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-static {v1}, Lio/sentry/util/UrlUtils;->baseUrlOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "#"

    .line 95
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance p0, Lio/sentry/util/UrlUtils$UrlDetails;

    invoke-direct {p0, v0, v0, v0}, Lio/sentry/util/UrlUtils$UrlDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 99
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v2

    .line 101
    new-instance v3, Lio/sentry/util/UrlUtils$UrlDetails;

    invoke-direct {v3, p0, v1, v2}, Lio/sentry/util/UrlUtils$UrlDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 104
    :catch_0
    new-instance p0, Lio/sentry/util/UrlUtils$UrlDetails;

    invoke-direct {p0, v0, v0, v0}, Lio/sentry/util/UrlUtils$UrlDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static splitRelativeUrl(Ljava/lang/String;)Lio/sentry/util/UrlUtils$UrlDetails;
    .locals 3

    const-string v0, "?"

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#"

    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 45
    invoke-static {p0, v0, v1}, Lio/sentry/util/UrlUtils;->extractBaseUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {p0, v0, v1}, Lio/sentry/util/UrlUtils;->extractQuery(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {p0, v1}, Lio/sentry/util/UrlUtils;->extractFragment(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 50
    new-instance v1, Lio/sentry/util/UrlUtils$UrlDetails;

    invoke-direct {v1, v2, v0, p0}, Lio/sentry/util/UrlUtils$UrlDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static urlWithAuthRemoved(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lio/sentry/util/UrlUtils;->AUTH_REGEX:Ljava/util/regex/Pattern;

    .line 109
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 p0, 0x2

    .line 111
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ":"

    .line 113
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "[Filtered]:[Filtered]@"

    goto :goto_0

    :cond_0
    const-string p0, "[Filtered]@"

    .line 116
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method
