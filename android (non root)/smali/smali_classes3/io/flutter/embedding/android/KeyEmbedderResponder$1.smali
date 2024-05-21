.class synthetic Lio/flutter/embedding/android/KeyEmbedderResponder$1;
.super Ljava/lang/Object;
.source "KeyEmbedderResponder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/KeyEmbedderResponder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$flutter$embedding$android$KeyData$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 160
    invoke-static {}, Lio/flutter/embedding/android/KeyData$Type;->values()[Lio/flutter/embedding/android/KeyData$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/flutter/embedding/android/KeyEmbedderResponder$1;->$SwitchMap$io$flutter$embedding$android$KeyData$Type:[I

    :try_start_0
    sget-object v1, Lio/flutter/embedding/android/KeyData$Type;->kDown:Lio/flutter/embedding/android/KeyData$Type;

    invoke-virtual {v1}, Lio/flutter/embedding/android/KeyData$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/flutter/embedding/android/KeyEmbedderResponder$1;->$SwitchMap$io$flutter$embedding$android$KeyData$Type:[I

    sget-object v1, Lio/flutter/embedding/android/KeyData$Type;->kUp:Lio/flutter/embedding/android/KeyData$Type;

    invoke-virtual {v1}, Lio/flutter/embedding/android/KeyData$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lio/flutter/embedding/android/KeyEmbedderResponder$1;->$SwitchMap$io$flutter$embedding$android$KeyData$Type:[I

    sget-object v1, Lio/flutter/embedding/android/KeyData$Type;->kRepeat:Lio/flutter/embedding/android/KeyData$Type;

    invoke-virtual {v1}, Lio/flutter/embedding/android/KeyData$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
