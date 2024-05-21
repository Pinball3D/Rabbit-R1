.class public final enum Lio/sentry/MeasurementUnit$Information;
.super Ljava/lang/Enum;
.source "MeasurementUnit.java"

# interfaces
.implements Lio/sentry/MeasurementUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/MeasurementUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Information"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/MeasurementUnit$Information;",
        ">;",
        "Lio/sentry/MeasurementUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/MeasurementUnit$Information;

.field public static final enum BIT:Lio/sentry/MeasurementUnit$Information;

.field public static final enum BYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum EXABYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum EXBIBYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum GIBIBYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum GIGABYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum KIBIBYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum KILOBYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum MEBIBYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum MEGABYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum PEBIBYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum PETABYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum TEBIBYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum TERABYTE:Lio/sentry/MeasurementUnit$Information;


# direct methods
.method private static synthetic $values()[Lio/sentry/MeasurementUnit$Information;
    .locals 14

    sget-object v0, Lio/sentry/MeasurementUnit$Information;->BIT:Lio/sentry/MeasurementUnit$Information;

    sget-object v1, Lio/sentry/MeasurementUnit$Information;->BYTE:Lio/sentry/MeasurementUnit$Information;

    sget-object v2, Lio/sentry/MeasurementUnit$Information;->KILOBYTE:Lio/sentry/MeasurementUnit$Information;

    sget-object v3, Lio/sentry/MeasurementUnit$Information;->KIBIBYTE:Lio/sentry/MeasurementUnit$Information;

    sget-object v4, Lio/sentry/MeasurementUnit$Information;->MEGABYTE:Lio/sentry/MeasurementUnit$Information;

    sget-object v5, Lio/sentry/MeasurementUnit$Information;->MEBIBYTE:Lio/sentry/MeasurementUnit$Information;

    sget-object v6, Lio/sentry/MeasurementUnit$Information;->GIGABYTE:Lio/sentry/MeasurementUnit$Information;

    sget-object v7, Lio/sentry/MeasurementUnit$Information;->GIBIBYTE:Lio/sentry/MeasurementUnit$Information;

    sget-object v8, Lio/sentry/MeasurementUnit$Information;->TERABYTE:Lio/sentry/MeasurementUnit$Information;

    sget-object v9, Lio/sentry/MeasurementUnit$Information;->TEBIBYTE:Lio/sentry/MeasurementUnit$Information;

    sget-object v10, Lio/sentry/MeasurementUnit$Information;->PETABYTE:Lio/sentry/MeasurementUnit$Information;

    sget-object v11, Lio/sentry/MeasurementUnit$Information;->PEBIBYTE:Lio/sentry/MeasurementUnit$Information;

    sget-object v12, Lio/sentry/MeasurementUnit$Information;->EXABYTE:Lio/sentry/MeasurementUnit$Information;

    sget-object v13, Lio/sentry/MeasurementUnit$Information;->EXBIBYTE:Lio/sentry/MeasurementUnit$Information;

    filled-new-array/range {v0 .. v13}, [Lio/sentry/MeasurementUnit$Information;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 60
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "BIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->BIT:Lio/sentry/MeasurementUnit$Information;

    .line 63
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "BYTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->BYTE:Lio/sentry/MeasurementUnit$Information;

    .line 66
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "KILOBYTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->KILOBYTE:Lio/sentry/MeasurementUnit$Information;

    .line 69
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "KIBIBYTE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->KIBIBYTE:Lio/sentry/MeasurementUnit$Information;

    .line 72
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "MEGABYTE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->MEGABYTE:Lio/sentry/MeasurementUnit$Information;

    .line 75
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "MEBIBYTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->MEBIBYTE:Lio/sentry/MeasurementUnit$Information;

    .line 78
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "GIGABYTE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->GIGABYTE:Lio/sentry/MeasurementUnit$Information;

    .line 81
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "GIBIBYTE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->GIBIBYTE:Lio/sentry/MeasurementUnit$Information;

    .line 84
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "TERABYTE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->TERABYTE:Lio/sentry/MeasurementUnit$Information;

    .line 87
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "TEBIBYTE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->TEBIBYTE:Lio/sentry/MeasurementUnit$Information;

    .line 90
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "PETABYTE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->PETABYTE:Lio/sentry/MeasurementUnit$Information;

    .line 93
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "PEBIBYTE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->PEBIBYTE:Lio/sentry/MeasurementUnit$Information;

    .line 96
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "EXABYTE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->EXABYTE:Lio/sentry/MeasurementUnit$Information;

    .line 99
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "EXBIBYTE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->EXBIBYTE:Lio/sentry/MeasurementUnit$Information;

    .line 58
    invoke-static {}, Lio/sentry/MeasurementUnit$Information;->$values()[Lio/sentry/MeasurementUnit$Information;

    move-result-object v0

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->$VALUES:[Lio/sentry/MeasurementUnit$Information;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/MeasurementUnit$Information;
    .locals 1

    const-class v0, Lio/sentry/MeasurementUnit$Information;

    .line 58
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/MeasurementUnit$Information;

    return-object p0
.end method

.method public static values()[Lio/sentry/MeasurementUnit$Information;
    .locals 1

    sget-object v0, Lio/sentry/MeasurementUnit$Information;->$VALUES:[Lio/sentry/MeasurementUnit$Information;

    .line 58
    invoke-virtual {v0}, [Lio/sentry/MeasurementUnit$Information;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/MeasurementUnit$Information;

    return-object v0
.end method


# virtual methods
.method public apiName()Ljava/lang/String;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lio/sentry/MeasurementUnit$Information;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
