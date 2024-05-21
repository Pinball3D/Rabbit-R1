.class Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$Holder;
.super Ljava/lang/Object;
.source "RTCInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    new-instance v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;-><init>(Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$1;)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$Holder;->INSTANCE:Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$Holder;->INSTANCE:Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    return-object v0
.end method
