.class public final enum Lcom/google/android/material/color/utilities/Variant;
.super Ljava/lang/Enum;
.source "Variant.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/color/utilities/Variant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/color/utilities/Variant;

.field public static final enum CONTENT:Lcom/google/android/material/color/utilities/Variant;

.field public static final enum EXPRESSIVE:Lcom/google/android/material/color/utilities/Variant;

.field public static final enum FIDELITY:Lcom/google/android/material/color/utilities/Variant;

.field public static final enum FRUIT_SALAD:Lcom/google/android/material/color/utilities/Variant;

.field public static final enum MONOCHROME:Lcom/google/android/material/color/utilities/Variant;

.field public static final enum NEUTRAL:Lcom/google/android/material/color/utilities/Variant;

.field public static final enum RAINBOW:Lcom/google/android/material/color/utilities/Variant;

.field public static final enum TONAL_SPOT:Lcom/google/android/material/color/utilities/Variant;

.field public static final enum VIBRANT:Lcom/google/android/material/color/utilities/Variant;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 30
    new-instance v0, Lcom/google/android/material/color/utilities/Variant;

    const-string v1, "MONOCHROME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/color/utilities/Variant;->MONOCHROME:Lcom/google/android/material/color/utilities/Variant;

    .line 31
    new-instance v1, Lcom/google/android/material/color/utilities/Variant;

    const-string v2, "NEUTRAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/material/color/utilities/Variant;->NEUTRAL:Lcom/google/android/material/color/utilities/Variant;

    .line 32
    new-instance v2, Lcom/google/android/material/color/utilities/Variant;

    const-string v3, "TONAL_SPOT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/material/color/utilities/Variant;->TONAL_SPOT:Lcom/google/android/material/color/utilities/Variant;

    .line 33
    new-instance v3, Lcom/google/android/material/color/utilities/Variant;

    const-string v4, "VIBRANT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/material/color/utilities/Variant;->VIBRANT:Lcom/google/android/material/color/utilities/Variant;

    .line 34
    new-instance v4, Lcom/google/android/material/color/utilities/Variant;

    const-string v5, "EXPRESSIVE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/android/material/color/utilities/Variant;->EXPRESSIVE:Lcom/google/android/material/color/utilities/Variant;

    .line 35
    new-instance v5, Lcom/google/android/material/color/utilities/Variant;

    const-string v6, "FIDELITY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/material/color/utilities/Variant;->FIDELITY:Lcom/google/android/material/color/utilities/Variant;

    .line 36
    new-instance v6, Lcom/google/android/material/color/utilities/Variant;

    const-string v7, "CONTENT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/android/material/color/utilities/Variant;->CONTENT:Lcom/google/android/material/color/utilities/Variant;

    .line 37
    new-instance v7, Lcom/google/android/material/color/utilities/Variant;

    const-string v8, "RAINBOW"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/material/color/utilities/Variant;->RAINBOW:Lcom/google/android/material/color/utilities/Variant;

    .line 38
    new-instance v8, Lcom/google/android/material/color/utilities/Variant;

    const-string v9, "FRUIT_SALAD"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/google/android/material/color/utilities/Variant;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/android/material/color/utilities/Variant;->FRUIT_SALAD:Lcom/google/android/material/color/utilities/Variant;

    filled-new-array/range {v0 .. v8}, [Lcom/google/android/material/color/utilities/Variant;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/Variant;->$VALUES:[Lcom/google/android/material/color/utilities/Variant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/color/utilities/Variant;
    .locals 1

    const-class v0, Lcom/google/android/material/color/utilities/Variant;

    .line 28
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/color/utilities/Variant;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/color/utilities/Variant;
    .locals 1

    sget-object v0, Lcom/google/android/material/color/utilities/Variant;->$VALUES:[Lcom/google/android/material/color/utilities/Variant;

    .line 28
    invoke-virtual {v0}, [Lcom/google/android/material/color/utilities/Variant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/color/utilities/Variant;

    return-object v0
.end method
