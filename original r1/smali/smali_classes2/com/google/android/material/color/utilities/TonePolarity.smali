.class public final enum Lcom/google/android/material/color/utilities/TonePolarity;
.super Ljava/lang/Enum;
.source "TonePolarity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/color/utilities/TonePolarity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/color/utilities/TonePolarity;

.field public static final enum DARKER:Lcom/google/android/material/color/utilities/TonePolarity;

.field public static final enum FARTHER:Lcom/google/android/material/color/utilities/TonePolarity;

.field public static final enum LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

.field public static final enum NEARER:Lcom/google/android/material/color/utilities/TonePolarity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    new-instance v0, Lcom/google/android/material/color/utilities/TonePolarity;

    const-string v1, "DARKER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/color/utilities/TonePolarity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/color/utilities/TonePolarity;->DARKER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 37
    new-instance v1, Lcom/google/android/material/color/utilities/TonePolarity;

    const-string v2, "LIGHTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/color/utilities/TonePolarity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 38
    new-instance v2, Lcom/google/android/material/color/utilities/TonePolarity;

    const-string v3, "NEARER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/color/utilities/TonePolarity;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 39
    new-instance v3, Lcom/google/android/material/color/utilities/TonePolarity;

    const-string v4, "FARTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/color/utilities/TonePolarity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/material/color/utilities/TonePolarity;->FARTHER:Lcom/google/android/material/color/utilities/TonePolarity;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/material/color/utilities/TonePolarity;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/TonePolarity;->$VALUES:[Lcom/google/android/material/color/utilities/TonePolarity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/color/utilities/TonePolarity;
    .locals 1

    const-class v0, Lcom/google/android/material/color/utilities/TonePolarity;

    .line 34
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/color/utilities/TonePolarity;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/color/utilities/TonePolarity;
    .locals 1

    sget-object v0, Lcom/google/android/material/color/utilities/TonePolarity;->$VALUES:[Lcom/google/android/material/color/utilities/TonePolarity;

    .line 34
    invoke-virtual {v0}, [Lcom/google/android/material/color/utilities/TonePolarity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/color/utilities/TonePolarity;

    return-object v0
.end method
