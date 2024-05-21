.class synthetic Lio/sentry/android/core/AndroidTransportGate$1;
.super Ljava/lang/Object;
.source "AndroidTransportGate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AndroidTransportGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$sentry$IConnectionStatusProvider$ConnectionStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    invoke-static {}, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->values()[Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/sentry/android/core/AndroidTransportGate$1;->$SwitchMap$io$sentry$IConnectionStatusProvider$ConnectionStatus:[I

    :try_start_0
    sget-object v1, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->CONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    invoke-virtual {v1}, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/sentry/android/core/AndroidTransportGate$1;->$SwitchMap$io$sentry$IConnectionStatusProvider$ConnectionStatus:[I

    sget-object v1, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->UNKNOWN:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    invoke-virtual {v1}, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lio/sentry/android/core/AndroidTransportGate$1;->$SwitchMap$io$sentry$IConnectionStatusProvider$ConnectionStatus:[I

    sget-object v1, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->NO_PERMISSION:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    invoke-virtual {v1}, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
