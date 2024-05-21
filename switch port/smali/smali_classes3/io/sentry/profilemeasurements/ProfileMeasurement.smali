.class public final Lio/sentry/profilemeasurements/ProfileMeasurement;
.super Ljava/lang/Object;
.source "ProfileMeasurement.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/profilemeasurements/ProfileMeasurement$JsonKeys;,
        Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;
    }
.end annotation


# static fields
.field public static final ID_CPU_USAGE:Ljava/lang/String; = "cpu_usage"

.field public static final ID_FROZEN_FRAME_RENDERS:Ljava/lang/String; = "frozen_frame_renders"

.field public static final ID_MEMORY_FOOTPRINT:Ljava/lang/String; = "memory_footprint"

.field public static final ID_MEMORY_NATIVE_FOOTPRINT:Ljava/lang/String; = "memory_native_footprint"

.field public static final ID_SCREEN_FRAME_RATES:Ljava/lang/String; = "screen_frame_rates"

.field public static final ID_SLOW_FRAME_RENDERS:Ljava/lang/String; = "slow_frame_renders"

.field public static final ID_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final UNIT_BYTES:Ljava/lang/String; = "byte"

.field public static final UNIT_HZ:Ljava/lang/String; = "hz"

.field public static final UNIT_NANOSECONDS:Ljava/lang/String; = "nanosecond"

.field public static final UNIT_PERCENT:Ljava/lang/String; = "percent"

.field public static final UNIT_UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private unit:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "unknown"

    invoke-direct {p0, v1, v0}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->unit:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->values:Ljava/util/Collection;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/profilemeasurements/ProfileMeasurement;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iput-object p1, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->unit:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/profilemeasurements/ProfileMeasurement;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 22
    iput-object p1, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->values:Ljava/util/Collection;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 56
    :cond_1
    check-cast p1, Lio/sentry/profilemeasurements/ProfileMeasurement;

    iget-object v2, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->unknown:Ljava/util/Map;

    .line 57
    iget-object v3, p1, Lio/sentry/profilemeasurements/ProfileMeasurement;->unknown:Ljava/util/Map;

    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->unit:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/profilemeasurements/ProfileMeasurement;->unit:Ljava/lang/String;

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->values:Ljava/util/Collection;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Ljava/util/ArrayList;

    iget-object p1, p1, Lio/sentry/profilemeasurements/ProfileMeasurement;->values:Ljava/util/Collection;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getUnit()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->unit:Ljava/lang/String;

    return-object p0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->values:Ljava/util/Collection;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->unknown:Ljava/util/Map;

    iget-object v1, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->unit:Ljava/lang/String;

    iget-object p0, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->values:Ljava/util/Collection;

    .line 64
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    const-string v0, "unit"

    .line 78
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->unit:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string v0, "values"

    .line 79
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->values:Ljava/util/Collection;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->unknown:Ljava/util/Map;

    .line 82
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 83
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 84
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 87
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->unit:Ljava/lang/String;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->unknown:Ljava/util/Map;

    return-void
.end method

.method public setValues(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->values:Ljava/util/Collection;

    return-void
.end method
