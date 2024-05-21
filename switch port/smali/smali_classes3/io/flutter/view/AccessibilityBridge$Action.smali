.class public final enum Lio/flutter/view/AccessibilityBridge$Action;
.super Ljava/lang/Enum;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/view/AccessibilityBridge$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum COPY:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum CUSTOM_ACTION:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum CUT:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum DID_GAIN_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum DID_LOSE_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum DISMISS:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum PASTE:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum SET_SELECTION:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum SET_TEXT:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum SHOW_ON_SCREEN:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum TAP:Lio/flutter/view/AccessibilityBridge$Action;


# instance fields
.field public final value:I


# direct methods
.method private static synthetic $values()[Lio/flutter/view/AccessibilityBridge$Action;
    .locals 22

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->TAP:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v2, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v3, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v4, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v5, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v6, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v7, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v8, Lio/flutter/view/AccessibilityBridge$Action;->SHOW_ON_SCREEN:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v9, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v10, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v11, Lio/flutter/view/AccessibilityBridge$Action;->SET_SELECTION:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v12, Lio/flutter/view/AccessibilityBridge$Action;->COPY:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v13, Lio/flutter/view/AccessibilityBridge$Action;->CUT:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v14, Lio/flutter/view/AccessibilityBridge$Action;->PASTE:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v15, Lio/flutter/view/AccessibilityBridge$Action;->DID_GAIN_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v16, Lio/flutter/view/AccessibilityBridge$Action;->DID_LOSE_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v17, Lio/flutter/view/AccessibilityBridge$Action;->CUSTOM_ACTION:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v18, Lio/flutter/view/AccessibilityBridge$Action;->DISMISS:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v19, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v20, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    sget-object v21, Lio/flutter/view/AccessibilityBridge$Action;->SET_TEXT:Lio/flutter/view/AccessibilityBridge$Action;

    filled-new-array/range {v0 .. v21}, [Lio/flutter/view/AccessibilityBridge$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 2151
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const-string v1, "TAP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->TAP:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2152
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const-string v1, "LONG_PRESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2153
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const-string v1, "SCROLL_LEFT"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2154
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const-string v1, "SCROLL_RIGHT"

    const/4 v2, 0x3

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2155
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const-string v1, "SCROLL_UP"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2156
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/4 v1, 0x5

    const/16 v3, 0x20

    const-string v5, "SCROLL_DOWN"

    invoke-direct {v0, v5, v1, v3}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2157
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/4 v1, 0x6

    const/16 v3, 0x40

    const-string v5, "INCREASE"

    invoke-direct {v0, v5, v1, v3}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2158
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/4 v1, 0x7

    const/16 v3, 0x80

    const-string v5, "DECREASE"

    invoke-direct {v0, v5, v1, v3}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2159
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const-string v1, "SHOW_ON_SCREEN"

    const/16 v3, 0x100

    invoke-direct {v0, v1, v4, v3}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SHOW_ON_SCREEN:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2160
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v1, 0x9

    const/16 v3, 0x200

    const-string v4, "MOVE_CURSOR_FORWARD_BY_CHARACTER"

    invoke-direct {v0, v4, v1, v3}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2161
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v1, 0xa

    const/16 v3, 0x400

    const-string v4, "MOVE_CURSOR_BACKWARD_BY_CHARACTER"

    invoke-direct {v0, v4, v1, v3}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2162
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v1, 0xb

    const/16 v3, 0x800

    const-string v4, "SET_SELECTION"

    invoke-direct {v0, v4, v1, v3}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SET_SELECTION:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2163
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v1, 0xc

    const/16 v3, 0x1000

    const-string v4, "COPY"

    invoke-direct {v0, v4, v1, v3}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->COPY:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2164
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v1, 0xd

    const/16 v3, 0x2000

    const-string v4, "CUT"

    invoke-direct {v0, v4, v1, v3}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->CUT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2165
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v1, 0xe

    const/16 v3, 0x4000

    const-string v4, "PASTE"

    invoke-direct {v0, v4, v1, v3}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->PASTE:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2166
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v1, 0xf

    const v3, 0x8000

    const-string v4, "DID_GAIN_ACCESSIBILITY_FOCUS"

    invoke-direct {v0, v4, v1, v3}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DID_GAIN_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2167
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const-string v1, "DID_LOSE_ACCESSIBILITY_FOCUS"

    const/high16 v3, 0x10000

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DID_LOSE_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2168
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v1, 0x11

    const/high16 v2, 0x20000

    const-string v3, "CUSTOM_ACTION"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->CUSTOM_ACTION:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2169
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v1, 0x12

    const/high16 v2, 0x40000

    const-string v3, "DISMISS"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DISMISS:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2170
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v1, 0x13

    const/high16 v2, 0x80000

    const-string v3, "MOVE_CURSOR_FORWARD_BY_WORD"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2171
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v1, 0x14

    const/high16 v2, 0x100000

    const-string v3, "MOVE_CURSOR_BACKWARD_BY_WORD"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2172
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v1, 0x15

    const/high16 v2, 0x200000

    const-string v3, "SET_TEXT"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SET_TEXT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2150
    invoke-static {}, Lio/flutter/view/AccessibilityBridge$Action;->$values()[Lio/flutter/view/AccessibilityBridge$Action;

    move-result-object v0

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->$VALUES:[Lio/flutter/view/AccessibilityBridge$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/AccessibilityBridge$Action;
    .locals 1

    const-class v0, Lio/flutter/view/AccessibilityBridge$Action;

    .line 2150
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/view/AccessibilityBridge$Action;

    return-object p0
.end method

.method public static values()[Lio/flutter/view/AccessibilityBridge$Action;
    .locals 1

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->$VALUES:[Lio/flutter/view/AccessibilityBridge$Action;

    .line 2150
    invoke-virtual {v0}, [Lio/flutter/view/AccessibilityBridge$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/view/AccessibilityBridge$Action;

    return-object v0
.end method
