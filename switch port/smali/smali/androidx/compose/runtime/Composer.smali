.class public interface abstract Landroidx/compose/runtime/Composer;
.super Ljava/lang/Object;
.source "Composer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/Composer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ca\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0010\u000c\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\t\n\u0002\u0010\n\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u0000 \u0083\u00012\u00020\u0001:\u0002\u0083\u0001J@\u00105\u001a\u000206\"\u0004\u0008\u0000\u00107\"\u0004\u0008\u0001\u001082\u0006\u00109\u001a\u0002H72\u001d\u0010:\u001a\u0019\u0012\u0004\u0012\u0002H8\u0012\u0004\u0012\u0002H7\u0012\u0004\u0012\u0002060;\u00a2\u0006\u0002\u0008<H\'\u00a2\u0006\u0002\u0010=J\u0008\u0010>\u001a\u00020?H\'J\u0012\u0010@\u001a\u00020\"2\u0008\u00109\u001a\u0004\u0018\u00010\u0001H\'J\u0010\u0010@\u001a\u00020\"2\u0006\u00109\u001a\u00020\"H\u0017J\u0010\u0010@\u001a\u00020\"2\u0006\u00109\u001a\u00020AH\u0017J\u0010\u0010@\u001a\u00020\"2\u0006\u00109\u001a\u00020BH\u0017J\u0010\u0010@\u001a\u00020\"2\u0006\u00109\u001a\u00020CH\u0017J\u0010\u0010@\u001a\u00020\"2\u0006\u00109\u001a\u00020DH\u0017J\u0010\u0010@\u001a\u00020\"2\u0006\u00109\u001a\u00020\u0016H\u0017J\u0010\u0010@\u001a\u00020\"2\u0006\u00109\u001a\u00020EH\u0017J\u0010\u0010@\u001a\u00020\"2\u0006\u00109\u001a\u00020FH\u0017J\u0012\u0010G\u001a\u00020\"2\u0008\u00109\u001a\u0004\u0018\u00010\u0001H\u0017J\u0008\u0010H\u001a\u000206H&J!\u0010I\u001a\u0002H8\"\u0004\u0008\u0000\u001082\u000c\u0010J\u001a\u0008\u0012\u0004\u0012\u0002H80KH\'\u00a2\u0006\u0002\u0010LJ\u001c\u0010M\u001a\u000206\"\u0004\u0008\u0000\u001082\u000c\u0010N\u001a\u0008\u0012\u0004\u0012\u0002H80OH\'J\u0010\u0010P\u001a\u0002062\u0006\u0010@\u001a\u00020\"H\'J\u0008\u0010Q\u001a\u000206H\'J\u0008\u0010R\u001a\u000206H&J\u0008\u0010S\u001a\u000206H\'J\u0008\u0010T\u001a\u000206H\'J\u0008\u0010U\u001a\u000206H\'J\u0008\u0010V\u001a\u000206H\'J\u0008\u0010W\u001a\u000206H\'J\u0008\u0010X\u001a\u000206H\'J\n\u0010Y\u001a\u0004\u0018\u00010ZH\'J\u0008\u0010[\u001a\u000206H\'J\u0010\u0010\\\u001a\u0002062\u0006\u0010]\u001a\u00020\u0016H\'J\u001e\u0010^\u001a\u0002062\n\u00109\u001a\u0006\u0012\u0002\u0008\u00030_2\u0008\u0010`\u001a\u0004\u0018\u00010\u0001H\'J$\u0010a\u001a\u0002062\u001a\u0010b\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020e\u0012\u0006\u0012\u0004\u0018\u00010e0d0cH\'J\u001c\u0010f\u001a\u00020\u00012\u0008\u0010g\u001a\u0004\u0018\u00010\u00012\u0008\u0010h\u001a\u0004\u0018\u00010\u0001H\'J\u0016\u0010i\u001a\u0002062\u000c\u0010j\u001a\u0008\u0012\u0004\u0012\u0002060OH\'J\u0010\u0010k\u001a\u0002062\u0006\u0010l\u001a\u00020*H\'J\n\u0010m\u001a\u0004\u0018\u00010\u0001H\'J\u0008\u0010n\u001a\u000206H\'J\u0008\u0010o\u001a\u000206H\'J\u0010\u0010p\u001a\u0002062\u0006\u0010p\u001a\u00020qH&J\u0008\u0010r\u001a\u000206H&J\u0018\u0010s\u001a\u0002062\u0006\u0010J\u001a\u00020\u00162\u0006\u0010p\u001a\u00020qH&J\u0008\u0010t\u001a\u000206H\'J\u001a\u0010u\u001a\u0002062\u0006\u0010J\u001a\u00020\u00162\u0008\u0010v\u001a\u0004\u0018\u00010\u0001H\'J\u0008\u0010w\u001a\u000206H\'J!\u0010x\u001a\u0002062\u0012\u0010y\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030{0zH\'\u00a2\u0006\u0002\u0010|J\u0010\u0010}\u001a\u0002062\u0006\u0010J\u001a\u00020\u0016H\'J\u0010\u0010~\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0016H\'J\u001a\u0010\u007f\u001a\u0002062\u0006\u0010J\u001a\u00020\u00162\u0008\u0010v\u001a\u0004\u0018\u00010\u0001H\'J\t\u0010\u0080\u0001\u001a\u000206H\'J\u0013\u0010\u0081\u0001\u001a\u0002062\u0008\u00109\u001a\u0004\u0018\u00010\u0001H\'J\t\u0010\u0082\u0001\u001a\u000206H\'R\u001e\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u00038&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\t8fX\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\n\u0010\u0005\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\u0012X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u00168&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0017\u0010\u0005\u001a\u0004\u0008\u0018\u0010\u0019R\u0012\u0010\u001a\u001a\u00020\u001bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u00168&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001f\u0010\u0005\u001a\u0004\u0008 \u0010\u0019R\u001a\u0010!\u001a\u00020\"8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008#\u0010\u0005\u001a\u0004\u0008$\u0010%R\u001a\u0010&\u001a\u00020\"8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\'\u0010\u0005\u001a\u0004\u0008(\u0010%R\u001c\u0010)\u001a\u0004\u0018\u00010*8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008+\u0010\u0005\u001a\u0004\u0008,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010\u00018&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008/\u0010\u0005\u001a\u0004\u00080\u00101R\u001a\u00102\u001a\u00020\"8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u00083\u0010\u0005\u001a\u0004\u00084\u0010%\u0082\u0001\u0002\u0084\u0001\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0085\u0001\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/runtime/Composer;",
        "",
        "applier",
        "Landroidx/compose/runtime/Applier;",
        "getApplier$annotations",
        "()V",
        "getApplier",
        "()Landroidx/compose/runtime/Applier;",
        "applyCoroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getApplyCoroutineContext$annotations",
        "getApplyCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "composition",
        "Landroidx/compose/runtime/ControlledComposition;",
        "getComposition",
        "()Landroidx/compose/runtime/ControlledComposition;",
        "compositionData",
        "Landroidx/compose/runtime/tooling/CompositionData;",
        "getCompositionData",
        "()Landroidx/compose/runtime/tooling/CompositionData;",
        "compoundKeyHash",
        "",
        "getCompoundKeyHash$annotations",
        "getCompoundKeyHash",
        "()I",
        "currentCompositionLocalMap",
        "Landroidx/compose/runtime/CompositionLocalMap;",
        "getCurrentCompositionLocalMap",
        "()Landroidx/compose/runtime/CompositionLocalMap;",
        "currentMarker",
        "getCurrentMarker$annotations",
        "getCurrentMarker",
        "defaultsInvalid",
        "",
        "getDefaultsInvalid$annotations",
        "getDefaultsInvalid",
        "()Z",
        "inserting",
        "getInserting$annotations",
        "getInserting",
        "recomposeScope",
        "Landroidx/compose/runtime/RecomposeScope;",
        "getRecomposeScope$annotations",
        "getRecomposeScope",
        "()Landroidx/compose/runtime/RecomposeScope;",
        "recomposeScopeIdentity",
        "getRecomposeScopeIdentity$annotations",
        "getRecomposeScopeIdentity",
        "()Ljava/lang/Object;",
        "skipping",
        "getSkipping$annotations",
        "getSkipping",
        "apply",
        "",
        "V",
        "T",
        "value",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "buildContext",
        "Landroidx/compose/runtime/CompositionContext;",
        "changed",
        "",
        "",
        "",
        "",
        "",
        "",
        "changedInstance",
        "collectParameterInformation",
        "consume",
        "key",
        "Landroidx/compose/runtime/CompositionLocal;",
        "(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;",
        "createNode",
        "factory",
        "Lkotlin/Function0;",
        "deactivateToEndGroup",
        "disableReusing",
        "disableSourceInformation",
        "enableReusing",
        "endDefaults",
        "endMovableGroup",
        "endNode",
        "endProviders",
        "endReplaceableGroup",
        "endRestartGroup",
        "Landroidx/compose/runtime/ScopeUpdateScope;",
        "endReusableGroup",
        "endToMarker",
        "marker",
        "insertMovableContent",
        "Landroidx/compose/runtime/MovableContent;",
        "parameter",
        "insertMovableContentReferences",
        "references",
        "",
        "Lkotlin/Pair;",
        "Landroidx/compose/runtime/MovableContentStateReference;",
        "joinKey",
        "left",
        "right",
        "recordSideEffect",
        "effect",
        "recordUsed",
        "scope",
        "rememberedValue",
        "skipCurrentGroup",
        "skipToGroupEnd",
        "sourceInformation",
        "",
        "sourceInformationMarkerEnd",
        "sourceInformationMarkerStart",
        "startDefaults",
        "startMovableGroup",
        "dataKey",
        "startNode",
        "startProviders",
        "values",
        "",
        "Landroidx/compose/runtime/ProvidedValue;",
        "([Landroidx/compose/runtime/ProvidedValue;)V",
        "startReplaceableGroup",
        "startRestartGroup",
        "startReusableGroup",
        "startReusableNode",
        "updateRememberedValue",
        "useNode",
        "Companion",
        "Landroidx/compose/runtime/ComposerImpl;",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/runtime/Composer$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->$$INSTANCE:Landroidx/compose/runtime/Composer$Companion;

    sput-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    return-void
.end method

.method public static synthetic getApplier$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    return-void
.end method

.method public static synthetic getApplyCoroutineContext$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCompoundKeyHash$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCurrentMarker$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    return-void
.end method

.method public static synthetic getDefaultsInvalid$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    return-void
.end method

.method public static synthetic getInserting$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    return-void
.end method

.method public static synthetic getRecomposeScope$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRecomposeScopeIdentity$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    return-void
.end method

.method public static synthetic getSkipping$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    return-void
.end method


# virtual methods
.method public abstract apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TV;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TV;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract buildContext()Landroidx/compose/runtime/CompositionContext;
.end method

.method public changed(B)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 831
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(B)Z

    move-result p0

    return p0
.end method

.method public changed(C)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 815
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(C)Z

    move-result p0

    return p0
.end method

.method public changed(D)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 911
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/Composer;->changed(D)Z

    move-result p0

    return p0
.end method

.method public changed(F)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 879
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result p0

    return p0
.end method

.method public changed(I)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 863
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result p0

    return p0
.end method

.method public changed(J)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 895
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result p0

    return p0
.end method

.method public abstract changed(Ljava/lang/Object;)Z
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public changed(S)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 847
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(S)Z

    move-result p0

    return p0
.end method

.method public changed(Z)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 799
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result p0

    return p0
.end method

.method public changedInstance(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 926
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public abstract collectParameterInformation()V
.end method

.method public abstract consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract createNode(Lkotlin/jvm/functions/Function0;)V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation
.end method

.method public abstract deactivateToEndGroup(Z)V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract disableReusing()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract disableSourceInformation()V
.end method

.method public abstract enableReusing()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract endDefaults()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract endMovableGroup()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract endNode()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract endProviders()V
.end method

.method public abstract endReplaceableGroup()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract endReusableGroup()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract endToMarker(I)V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract getApplier()Landroidx/compose/runtime/Applier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/Applier<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getApplyCoroutineContext()Lkotlin/coroutines/CoroutineContext;
.end method

.method public abstract getComposition()Landroidx/compose/runtime/ControlledComposition;
.end method

.method public abstract getCompositionData()Landroidx/compose/runtime/tooling/CompositionData;
.end method

.method public abstract getCompoundKeyHash()I
.end method

.method public abstract getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;
.end method

.method public abstract getCurrentMarker()I
.end method

.method public abstract getDefaultsInvalid()Z
.end method

.method public abstract getInserting()Z
.end method

.method public abstract getRecomposeScope()Landroidx/compose/runtime/RecomposeScope;
.end method

.method public abstract getRecomposeScopeIdentity()Ljava/lang/Object;
.end method

.method public abstract getSkipping()Z
.end method

.method public abstract insertMovableContent(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MovableContent<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract insertMovableContentReferences(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract joinKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract recordSideEffect(Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract recordUsed(Landroidx/compose/runtime/RecomposeScope;)V
.end method

.method public abstract rememberedValue()Ljava/lang/Object;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract skipCurrentGroup()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract skipToGroupEnd()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract sourceInformation(Ljava/lang/String;)V
.end method

.method public abstract sourceInformationMarkerEnd()V
.end method

.method public abstract sourceInformationMarkerStart(ILjava/lang/String;)V
.end method

.method public abstract startDefaults()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract startMovableGroup(ILjava/lang/Object;)V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract startNode()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract startProviders([Landroidx/compose/runtime/ProvidedValue;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/runtime/ProvidedValue<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract startReplaceableGroup(I)V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract startRestartGroup(I)Landroidx/compose/runtime/Composer;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract startReusableGroup(ILjava/lang/Object;)V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract startReusableNode()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract updateRememberedValue(Ljava/lang/Object;)V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract useNode()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method
