.class public final enum Lorg/webrtc/SessionDescription$Type;
.super Ljava/lang/Enum;
.source "SessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/SessionDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/webrtc/SessionDescription$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/SessionDescription$Type;

.field public static final enum ANSWER:Lorg/webrtc/SessionDescription$Type;

.field public static final enum OFFER:Lorg/webrtc/SessionDescription$Type;

.field public static final enum PRANSWER:Lorg/webrtc/SessionDescription$Type;

.field public static final enum ROLLBACK:Lorg/webrtc/SessionDescription$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lorg/webrtc/SessionDescription$Type;

    const-string v1, "OFFER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/webrtc/SessionDescription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/SessionDescription$Type;->OFFER:Lorg/webrtc/SessionDescription$Type;

    .line 24
    new-instance v1, Lorg/webrtc/SessionDescription$Type;

    const-string v2, "PRANSWER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/webrtc/SessionDescription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/webrtc/SessionDescription$Type;->PRANSWER:Lorg/webrtc/SessionDescription$Type;

    .line 25
    new-instance v2, Lorg/webrtc/SessionDescription$Type;

    const-string v3, "ANSWER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/webrtc/SessionDescription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/webrtc/SessionDescription$Type;->ANSWER:Lorg/webrtc/SessionDescription$Type;

    .line 26
    new-instance v3, Lorg/webrtc/SessionDescription$Type;

    const-string v4, "ROLLBACK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/webrtc/SessionDescription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/webrtc/SessionDescription$Type;->ROLLBACK:Lorg/webrtc/SessionDescription$Type;

    filled-new-array {v0, v1, v2, v3}, [Lorg/webrtc/SessionDescription$Type;

    move-result-object v0

    sput-object v0, Lorg/webrtc/SessionDescription$Type;->$VALUES:[Lorg/webrtc/SessionDescription$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromCanonicalForm(Ljava/lang/String;)Lorg/webrtc/SessionDescription$Type;
    .locals 1

    .line 34
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-class v0, Lorg/webrtc/SessionDescription$Type;

    invoke-static {v0, p0}, Lorg/webrtc/SessionDescription$Type;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/webrtc/SessionDescription$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/SessionDescription$Type;
    .locals 1

    const-class v0, Lorg/webrtc/SessionDescription$Type;

    .line 22
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/webrtc/SessionDescription$Type;

    return-object p0
.end method

.method public static values()[Lorg/webrtc/SessionDescription$Type;
    .locals 1

    sget-object v0, Lorg/webrtc/SessionDescription$Type;->$VALUES:[Lorg/webrtc/SessionDescription$Type;

    .line 22
    invoke-virtual {v0}, [Lorg/webrtc/SessionDescription$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/SessionDescription$Type;

    return-object v0
.end method


# virtual methods
.method public canonicalForm()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/webrtc/SessionDescription$Type;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
