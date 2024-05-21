.class public final synthetic Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$WhenMappings;
.super Ljava/lang/Object;
.source "FocusDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->values()[Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->CONTINUOUS:Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->CIRCULAR:Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    invoke-virtual {v3}, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->STANDARD:Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    invoke-virtual {v4}, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->values()[Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_3
    sget-object v4, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    invoke-virtual {v4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
