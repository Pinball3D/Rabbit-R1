.class public final enum Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;
.super Ljava/lang/Enum;
.source "BeanMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/wss/respon/BeanMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

.field public static final enum INDICATING_SIGN_IN_SUCCESS:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

.field public static final enum PLAYER_ALREADY_IN_CONNECT_STATE:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

.field public static final enum PLAYER_READY:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

.field public static final enum SPOTIFY_PLAYER_STATUS:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

.field public static final enum UNKNOWN:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;


# direct methods
.method private static synthetic $values()[Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;
    .locals 5

    sget-object v0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->PLAYER_READY:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    sget-object v1, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->INDICATING_SIGN_IN_SUCCESS:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    sget-object v2, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->PLAYER_ALREADY_IN_CONNECT_STATE:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    sget-object v3, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->SPOTIFY_PLAYER_STATUS:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    sget-object v4, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->UNKNOWN:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    const-string v1, "PLAYER_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->PLAYER_READY:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    .line 52
    new-instance v0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    const-string v1, "INDICATING_SIGN_IN_SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->INDICATING_SIGN_IN_SUCCESS:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    .line 53
    new-instance v0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    const-string v1, "PLAYER_ALREADY_IN_CONNECT_STATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->PLAYER_ALREADY_IN_CONNECT_STATE:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    .line 54
    new-instance v0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    const-string v1, "SPOTIFY_PLAYER_STATUS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->SPOTIFY_PLAYER_STATUS:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    .line 55
    new-instance v0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->UNKNOWN:Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    .line 50
    invoke-static {}, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->$values()[Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->$VALUES:[Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;
    .locals 1

    const-class v0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    .line 50
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    return-object p0
.end method

.method public static values()[Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->$VALUES:[Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    .line 50
    invoke-virtual {v0}, [Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltech/rabbit/r1launcher/wss/respon/BeanMatcher$Type;

    return-object v0
.end method
