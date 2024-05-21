.class final enum Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;
.super Ljava/lang/Enum;
.source "CurrentParsingState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

.field public static final enum ALPHA:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

.field public static final enum ISO_IEC_646:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

.field public static final enum NUMERIC:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    const-string v1, "NUMERIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->NUMERIC:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 39
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    const-string v2, "ALPHA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->ALPHA:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 40
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    const-string v3, "ISO_IEC_646"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->ISO_IEC_646:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    filled-new-array {v0, v1, v2}, [Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->$VALUES:[Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;
    .locals 1

    const-class v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 37
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;
    .locals 1

    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->$VALUES:[Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 37
    invoke-virtual {v0}, [Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    return-object v0
.end method
