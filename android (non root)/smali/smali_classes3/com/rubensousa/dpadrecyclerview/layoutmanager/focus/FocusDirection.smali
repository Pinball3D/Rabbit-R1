.class public final enum Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;
.super Ljava/lang/Enum;
.source "FocusDirection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0080\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;",
        "",
        "(Ljava/lang/String;I)V",
        "getScrollSign",
        "",
        "reverseLayout",
        "",
        "PREVIOUS_ITEM",
        "NEXT_ITEM",
        "PREVIOUS_COLUMN",
        "NEXT_COLUMN",
        "Companion",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

.field public static final Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;

.field public static final enum NEXT_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

.field public static final enum NEXT_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

.field public static final enum PREVIOUS_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

.field public static final enum PREVIOUS_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;


# direct methods
.method private static final synthetic $values()[Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;
    .locals 4

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    sget-object v1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    sget-object v2, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    sget-object v3, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    filled-new-array {v0, v1, v2, v3}, [Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    const-string v1, "PREVIOUS_ITEM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    .line 23
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    const-string v1, "NEXT_ITEM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    .line 24
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    const-string v1, "PREVIOUS_COLUMN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    .line 25
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    const-string v1, "NEXT_COLUMN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    invoke-static {}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->$values()[Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    move-result-object v0

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->$VALUES:[Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final from(IZZ)Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;->from(IZZ)Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    move-result-object p0

    return-object p0
.end method

.method public static final getAbsoluteDirection(IZZ)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;->getAbsoluteDirection(IZZ)I

    move-result p0

    return p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;
    .locals 1

    const-class v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    return-object p0
.end method

.method public static values()[Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;
    .locals 1

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->$VALUES:[Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    return-object v0
.end method


# virtual methods
.method public final getScrollSign(Z)I
    .locals 3

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    const/4 v2, 0x1

    if-ne p0, v0, :cond_1

    move v1, v2

    :cond_1
    if-eq v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_3
    :goto_1
    return v1
.end method
