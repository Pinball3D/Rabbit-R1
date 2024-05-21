.class public final enum Lio/flutter/embedding/android/RenderMode;
.super Ljava/lang/Enum;
.source "RenderMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/android/RenderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/embedding/android/RenderMode;

.field public static final enum image:Lio/flutter/embedding/android/RenderMode;

.field public static final enum surface:Lio/flutter/embedding/android/RenderMode;

.field public static final enum texture:Lio/flutter/embedding/android/RenderMode;


# direct methods
.method private static synthetic $values()[Lio/flutter/embedding/android/RenderMode;
    .locals 3

    sget-object v0, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    sget-object v1, Lio/flutter/embedding/android/RenderMode;->texture:Lio/flutter/embedding/android/RenderMode;

    sget-object v2, Lio/flutter/embedding/android/RenderMode;->image:Lio/flutter/embedding/android/RenderMode;

    filled-new-array {v0, v1, v2}, [Lio/flutter/embedding/android/RenderMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lio/flutter/embedding/android/RenderMode;

    const-string v1, "surface"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/android/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    .line 24
    new-instance v0, Lio/flutter/embedding/android/RenderMode;

    const-string v1, "texture"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/android/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/RenderMode;->texture:Lio/flutter/embedding/android/RenderMode;

    .line 33
    new-instance v0, Lio/flutter/embedding/android/RenderMode;

    const-string v1, "image"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/android/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/RenderMode;->image:Lio/flutter/embedding/android/RenderMode;

    .line 8
    invoke-static {}, Lio/flutter/embedding/android/RenderMode;->$values()[Lio/flutter/embedding/android/RenderMode;

    move-result-object v0

    sput-object v0, Lio/flutter/embedding/android/RenderMode;->$VALUES:[Lio/flutter/embedding/android/RenderMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/RenderMode;
    .locals 1

    const-class v0, Lio/flutter/embedding/android/RenderMode;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/android/RenderMode;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/android/RenderMode;
    .locals 1

    sget-object v0, Lio/flutter/embedding/android/RenderMode;->$VALUES:[Lio/flutter/embedding/android/RenderMode;

    .line 8
    invoke-virtual {v0}, [Lio/flutter/embedding/android/RenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/android/RenderMode;

    return-object v0
.end method
