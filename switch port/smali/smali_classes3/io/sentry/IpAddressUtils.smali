.class public final Lio/sentry/IpAddressUtils;
.super Ljava/lang/Object;
.source "IpAddressUtils.java"


# static fields
.field public static final DEFAULT_IP_ADDRESS:Ljava/lang/String; = "{{auto}}"

.field private static final DEFAULT_IP_ADDRESS_VALID_VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "{{auto}}"

    const-string v1, "{{ auto }}"

    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/sentry/IpAddressUtils;->DEFAULT_IP_ADDRESS_VALID_VALUES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDefault(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lio/sentry/IpAddressUtils;->DEFAULT_IP_ADDRESS_VALID_VALUES:Ljava/util/List;

    .line 17
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
