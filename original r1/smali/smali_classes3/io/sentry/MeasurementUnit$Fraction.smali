.class public final enum Lio/sentry/MeasurementUnit$Fraction;
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
    name = "Fraction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/MeasurementUnit$Fraction;",
        ">;",
        "Lio/sentry/MeasurementUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/MeasurementUnit$Fraction;

.field public static final enum PERCENT:Lio/sentry/MeasurementUnit$Fraction;

.field public static final enum RATIO:Lio/sentry/MeasurementUnit$Fraction;


# direct methods
.method private static synthetic $values()[Lio/sentry/MeasurementUnit$Fraction;
    .locals 2

    sget-object v0, Lio/sentry/MeasurementUnit$Fraction;->RATIO:Lio/sentry/MeasurementUnit$Fraction;

    sget-object v1, Lio/sentry/MeasurementUnit$Fraction;->PERCENT:Lio/sentry/MeasurementUnit$Fraction;

    filled-new-array {v0, v1}, [Lio/sentry/MeasurementUnit$Fraction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 110
    new-instance v0, Lio/sentry/MeasurementUnit$Fraction;

    const-string v1, "RATIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Fraction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Fraction;->RATIO:Lio/sentry/MeasurementUnit$Fraction;

    .line 113
    new-instance v0, Lio/sentry/MeasurementUnit$Fraction;

    const-string v1, "PERCENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Fraction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Fraction;->PERCENT:Lio/sentry/MeasurementUnit$Fraction;

    .line 108
    invoke-static {}, Lio/sentry/MeasurementUnit$Fraction;->$values()[Lio/sentry/MeasurementUnit$Fraction;

    move-result-object v0

    sput-object v0, Lio/sentry/MeasurementUnit$Fraction;->$VALUES:[Lio/sentry/MeasurementUnit$Fraction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/MeasurementUnit$Fraction;
    .locals 1

    const-class v0, Lio/sentry/MeasurementUnit$Fraction;

    .line 108
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/MeasurementUnit$Fraction;

    return-object p0
.end method

.method public static values()[Lio/sentry/MeasurementUnit$Fraction;
    .locals 1

    sget-object v0, Lio/sentry/MeasurementUnit$Fraction;->$VALUES:[Lio/sentry/MeasurementUnit$Fraction;

    .line 108
    invoke-virtual {v0}, [Lio/sentry/MeasurementUnit$Fraction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/MeasurementUnit$Fraction;

    return-object v0
.end method


# virtual methods
.method public apiName()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lio/sentry/MeasurementUnit$Fraction;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
