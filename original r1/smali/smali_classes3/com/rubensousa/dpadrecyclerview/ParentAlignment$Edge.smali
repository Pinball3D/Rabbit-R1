.class public final enum Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;
.super Ljava/lang/Enum;
.source "ParentAlignment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/ParentAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Edge"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;",
        "",
        "(Ljava/lang/String;I)V",
        "NONE",
        "MIN",
        "MAX",
        "MIN_MAX",
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

.field private static final synthetic $VALUES:[Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

.field public static final enum MAX:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

.field public static final enum MIN:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

.field public static final enum MIN_MAX:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

.field public static final enum NONE:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;


# direct methods
.method private static final synthetic $values()[Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;
    .locals 4

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->NONE:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    sget-object v1, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->MIN:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    sget-object v2, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->MAX:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    sget-object v3, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->MIN_MAX:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    filled-new-array {v0, v1, v2, v3}, [Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 116
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->NONE:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    .line 122
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    const-string v1, "MIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->MIN:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    .line 128
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    const-string v1, "MAX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->MAX:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    .line 134
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    const-string v1, "MIN_MAX"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->MIN_MAX:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    invoke-static {}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->$values()[Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    move-result-object v0

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->$VALUES:[Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;
    .locals 1

    const-class v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    return-object p0
.end method

.method public static values()[Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;
    .locals 1

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->$VALUES:[Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    return-object v0
.end method
