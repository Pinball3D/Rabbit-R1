.class public final synthetic Ltech/rabbit/r1launcher/settings/Settings2Fragment$EntriesMappings;
.super Ljava/lang/Object;
.source "Settings2Fragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/settings/Settings2Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "EntriesMappings"
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
.field public static final synthetic entries$0:Lkotlin/enums/EnumEntries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/enums/EnumEntries<",
            "Ltech/rabbit/r1launcher/settings/SettingItems;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ltech/rabbit/r1launcher/settings/SettingItems;->values()[Ltech/rabbit/r1launcher/settings/SettingItems;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/settings/Settings2Fragment$EntriesMappings;->entries$0:Lkotlin/enums/EnumEntries;

    return-void
.end method
