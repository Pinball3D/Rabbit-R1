.class final enum Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;
.super Ljava/lang/Enum;
.source "SentryGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/internal/gestures/SentryGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GestureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

.field public static final enum Click:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

.field public static final enum Scroll:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

.field public static final enum Swipe:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

.field public static final enum Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;


# direct methods
.method private static synthetic $values()[Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;
    .locals 4

    sget-object v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Click:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    sget-object v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Scroll:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    sget-object v2, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Swipe:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    sget-object v3, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    filled-new-array {v0, v1, v2, v3}, [Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    const-string v1, "Click"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Click:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 37
    new-instance v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    const-string v1, "Scroll"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Scroll:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 38
    new-instance v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    const-string v1, "Swipe"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Swipe:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 39
    new-instance v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    const-string v1, "Unknown"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 35
    invoke-static {}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->$values()[Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->$VALUES:[Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

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

.method public static valueOf(Ljava/lang/String;)Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;
    .locals 1

    const-class v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 35
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    return-object p0
.end method

.method public static values()[Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;
    .locals 1

    sget-object v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->$VALUES:[Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 35
    invoke-virtual {v0}, [Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    return-object v0
.end method
