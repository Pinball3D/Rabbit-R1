.class public final enum Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;
.super Ljava/lang/Enum;
.source "GeoLocationManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;",
        "",
        "code",
        "",
        "(Ljava/lang/String;II)V",
        "getCode",
        "()I",
        "SUCCESS",
        "FAIL",
        "base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

.field public static final enum FAIL:Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

.field public static final enum SUCCESS:Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;
    .locals 2

    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->SUCCESS:Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    sget-object v1, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->FAIL:Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    filled-new-array {v0, v1}, [Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 218
    new-instance v0, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->SUCCESS:Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    .line 219
    new-instance v0, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    const-string v1, "FAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->FAIL:Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    invoke-static {}, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->$values()[Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->$VALUES:[Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->code:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;",
            ">;"
        }
    .end annotation

    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;
    .locals 1

    const-class v0, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    return-object p0
.end method

.method public static values()[Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->$VALUES:[Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->code:I

    return p0
.end method
