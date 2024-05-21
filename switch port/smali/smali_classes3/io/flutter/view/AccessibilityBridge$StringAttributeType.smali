.class final enum Lio/flutter/view/AccessibilityBridge$StringAttributeType;
.super Ljava/lang/Enum;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StringAttributeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/view/AccessibilityBridge$StringAttributeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/view/AccessibilityBridge$StringAttributeType;

.field public static final enum LOCALE:Lio/flutter/view/AccessibilityBridge$StringAttributeType;

.field public static final enum SPELLOUT:Lio/flutter/view/AccessibilityBridge$StringAttributeType;


# direct methods
.method private static synthetic $values()[Lio/flutter/view/AccessibilityBridge$StringAttributeType;
    .locals 2

    sget-object v0, Lio/flutter/view/AccessibilityBridge$StringAttributeType;->SPELLOUT:Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$StringAttributeType;->LOCALE:Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    filled-new-array {v0, v1}, [Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2310
    new-instance v0, Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    const-string v1, "SPELLOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/view/AccessibilityBridge$StringAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$StringAttributeType;->SPELLOUT:Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    .line 2311
    new-instance v0, Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    const-string v1, "LOCALE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/flutter/view/AccessibilityBridge$StringAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$StringAttributeType;->LOCALE:Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    .line 2309
    invoke-static {}, Lio/flutter/view/AccessibilityBridge$StringAttributeType;->$values()[Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    move-result-object v0

    sput-object v0, Lio/flutter/view/AccessibilityBridge$StringAttributeType;->$VALUES:[Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2309
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/AccessibilityBridge$StringAttributeType;
    .locals 1

    const-class v0, Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    .line 2309
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    return-object p0
.end method

.method public static values()[Lio/flutter/view/AccessibilityBridge$StringAttributeType;
    .locals 1

    sget-object v0, Lio/flutter/view/AccessibilityBridge$StringAttributeType;->$VALUES:[Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    .line 2309
    invoke-virtual {v0}, [Lio/flutter/view/AccessibilityBridge$StringAttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/view/AccessibilityBridge$StringAttributeType;

    return-object v0
.end method
