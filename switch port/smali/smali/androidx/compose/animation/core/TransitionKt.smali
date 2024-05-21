.class public final Landroidx/compose/animation/core/TransitionKt;
.super Ljava/lang/Object;
.source "Transition.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,1156:1\n858#1,5:1229\n858#1,5:1234\n858#1,5:1239\n858#1,5:1244\n858#1,5:1249\n858#1,5:1254\n858#1,5:1259\n858#1,5:1264\n25#2:1157\n36#2:1164\n36#2:1171\n36#2:1178\n36#2:1185\n36#2:1192\n36#2:1199\n50#2:1206\n49#2:1207\n36#2:1214\n50#2:1221\n49#2:1222\n1097#3,6:1158\n1097#3,6:1165\n1097#3,6:1172\n1097#3,6:1179\n1097#3,6:1186\n1097#3,6:1193\n1097#3,6:1200\n1097#3,6:1208\n1097#3,6:1215\n1097#3,6:1223\n*S KotlinDebug\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n*L\n940#1:1229,5\n971#1:1234,5\n1002#1:1239,5\n1033#1:1244,5\n1064#1:1249,5\n1095#1:1254,5\n1125#1:1259,5\n1155#1:1264,5\n72#1:1157\n74#1:1164\n155#1:1171\n159#1:1178\n754#1:1185\n787#1:1192\n800#1:1199\n804#1:1206\n804#1:1207\n874#1:1214\n897#1:1221\n897#1:1222\n72#1:1158,6\n74#1:1165,6\n155#1:1172,6\n159#1:1179,6\n754#1:1186,6\n787#1:1193,6\n800#1:1200,6\n804#1:1208,6\n874#1:1215,6\n897#1:1223,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a-\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\u0008\u0000\u0010\u00042\u0006\u0010\u0005\u001a\u0002H\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0007\u00a2\u0006\u0002\u0010\u0008\u001a3\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\u0008\u0000\u0010\u00042\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\n2\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0007\u00a2\u0006\u0002\u0010\u000b\u001a\u0088\u0001\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\"\u0004\u0008\u0000\u0010\u000f*\u0008\u0012\u0004\u0012\u0002H\u000f0\u00032*\u0008\n\u0010\u0010\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000f0\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00130\u0011\u00a2\u0006\u0002\u0008\u0014\u00a2\u0006\u0002\u0008\u00152\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072&\u0010\u0016\u001a\"\u0012\u0013\u0012\u0011H\u000f\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u000e0\u0011\u00a2\u0006\u0002\u0008\u0014H\u0087\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u001a\u001a\u0085\u0001\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\r\"\u0004\u0008\u0000\u0010\u000f*\u0008\u0012\u0004\u0012\u0002H\u000f0\u00032*\u0008\n\u0010\u0010\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000f0\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u00130\u0011\u00a2\u0006\u0002\u0008\u0014\u00a2\u0006\u0002\u0008\u00152\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072&\u0010\u0016\u001a\"\u0012\u0013\u0012\u0011H\u000f\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u001c0\u0011\u00a2\u0006\u0002\u0008\u0014H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001a\u001a\u0085\u0001\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00010\r\"\u0004\u0008\u0000\u0010\u000f*\u0008\u0012\u0004\u0012\u0002H\u000f0\u00032*\u0008\n\u0010\u0010\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000f0\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u00130\u0011\u00a2\u0006\u0002\u0008\u0014\u00a2\u0006\u0002\u0008\u00152\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072&\u0010\u0016\u001a\"\u0012\u0013\u0012\u0011H\u000f\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u00010\u0011\u00a2\u0006\u0002\u0008\u0014H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001a\u001a\u0088\u0001\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\r\"\u0004\u0008\u0000\u0010\u000f*\u0008\u0012\u0004\u0012\u0002H\u000f0\u00032*\u0008\n\u0010\u0010\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000f0\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0\u00130\u0011\u00a2\u0006\u0002\u0008\u0014\u00a2\u0006\u0002\u0008\u00152\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072&\u0010\u0016\u001a\"\u0012\u0013\u0012\u0011H\u000f\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u001f0\u0011\u00a2\u0006\u0002\u0008\u0014H\u0087\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u001a\u001a\u0088\u0001\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\r\"\u0004\u0008\u0000\u0010\u000f*\u0008\u0012\u0004\u0012\u0002H\u000f0\u00032*\u0008\n\u0010\u0010\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000f0\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0\u00130\u0011\u00a2\u0006\u0002\u0008\u0014\u00a2\u0006\u0002\u0008\u00152\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072&\u0010\u0016\u001a\"\u0012\u0013\u0012\u0011H\u000f\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020!0\u0011\u00a2\u0006\u0002\u0008\u0014H\u0087\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u001a\u001a\u0088\u0001\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\r\"\u0004\u0008\u0000\u0010\u000f*\u0008\u0012\u0004\u0012\u0002H\u000f0\u00032*\u0008\n\u0010\u0010\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000f0\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\u00130\u0011\u00a2\u0006\u0002\u0008\u0014\u00a2\u0006\u0002\u0008\u00152\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072&\u0010\u0016\u001a\"\u0012\u0013\u0012\u0011H\u000f\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020#0\u0011\u00a2\u0006\u0002\u0008\u0014H\u0087\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u001a\u001a\u0085\u0001\u0010$\u001a\u0008\u0012\u0004\u0012\u00020%0\r\"\u0004\u0008\u0000\u0010\u000f*\u0008\u0012\u0004\u0012\u0002H\u000f0\u00032*\u0008\n\u0010\u0010\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000f0\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020%0\u00130\u0011\u00a2\u0006\u0002\u0008\u0014\u00a2\u0006\u0002\u0008\u00152\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072&\u0010\u0016\u001a\"\u0012\u0013\u0012\u0011H\u000f\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020%0\u0011\u00a2\u0006\u0002\u0008\u0014H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001a\u001a\u0088\u0001\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\'0\r\"\u0004\u0008\u0000\u0010\u000f*\u0008\u0012\u0004\u0012\u0002H\u000f0\u00032*\u0008\n\u0010\u0010\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000f0\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\'0\u00130\u0011\u00a2\u0006\u0002\u0008\u0014\u00a2\u0006\u0002\u0008\u00152\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072&\u0010\u0016\u001a\"\u0012\u0013\u0012\u0011H\u000f\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\'0\u0011\u00a2\u0006\u0002\u0008\u0014H\u0087\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u001a\u001a\u00a9\u0001\u0010(\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\r\"\u0004\u0008\u0000\u0010\u000f\"\u0004\u0008\u0001\u0010\u0004\"\u0008\u0008\u0002\u0010)*\u00020**\u0008\u0012\u0004\u0012\u0002H\u000f0\u00032\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H)0,2*\u0008\n\u0010\u0010\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000f0\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00040\u00130\u0011\u00a2\u0006\u0002\u0008\u0014\u00a2\u0006\u0002\u0008\u00152\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072&\u0010\u0016\u001a\"\u0012\u0013\u0012\u0011H\u000f\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u0002H\u00040\u0011\u00a2\u0006\u0002\u0008\u0014H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010-\u001a_\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\u0008\u0000\u0010\u000f\"\u0004\u0008\u0001\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u000f0\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072&\u0010/\u001a\"\u0012\u0013\u0012\u0011H\u000f\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(0\u0012\u0004\u0012\u0002H\u00040\u0011\u00a2\u0006\u0002\u0008\u0014H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u00101\u001aA\u00102\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\u0008\u0000\u0010\u000f\"\u0004\u0008\u0001\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u000f0\u00032\u0006\u00103\u001a\u0002H\u00042\u0006\u0010\u0005\u001a\u0002H\u00042\u0006\u00104\u001a\u00020\u0007H\u0001\u00a2\u0006\u0002\u00105\u001aa\u00106\u001a\u0018\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H)07R\u0008\u0012\u0004\u0012\u0002H\u000f0\u0003\"\u0004\u0008\u0000\u0010\u000f\"\u0004\u0008\u0001\u0010\u0004\"\u0008\u0008\u0002\u0010)*\u00020**\u0008\u0012\u0004\u0012\u0002H\u000f0\u00032\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H)0,2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u00108\u001am\u00109\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\r\"\u0004\u0008\u0000\u0010\u000f\"\u0004\u0008\u0001\u0010\u0004\"\u0008\u0008\u0002\u0010)*\u00020**\u0008\u0012\u0004\u0012\u0002H\u000f0\u00032\u0006\u0010:\u001a\u0002H\u00042\u0006\u0010;\u001a\u0002H\u00042\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u00132\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H)0,2\u0006\u0010\u0006\u001a\u00020\u0007H\u0001\u00a2\u0006\u0002\u0010=\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u009920\u0001\n\u0002\u0008\u0019\u00a8\u0006>"
    }
    d2 = {
        "AnimationDebugDurationScale",
        "",
        "updateTransition",
        "Landroidx/compose/animation/core/Transition;",
        "T",
        "targetState",
        "label",
        "",
        "(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;",
        "transitionState",
        "Landroidx/compose/animation/core/MutableTransitionState;",
        "(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;",
        "animateDp",
        "Landroidx/compose/runtime/State;",
        "Landroidx/compose/ui/unit/Dp;",
        "S",
        "transitionSpec",
        "Lkotlin/Function1;",
        "Landroidx/compose/animation/core/Transition$Segment;",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "targetValueByState",
        "Lkotlin/ParameterName;",
        "name",
        "state",
        "(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animateFloat",
        "",
        "animateInt",
        "animateIntOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "animateIntSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "animateOffset",
        "Landroidx/compose/ui/geometry/Offset;",
        "animateRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "animateSize",
        "Landroidx/compose/ui/geometry/Size;",
        "animateValue",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "typeConverter",
        "Landroidx/compose/animation/core/TwoWayConverter;",
        "(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "createChildTransition",
        "transformToChildState",
        "parentState",
        "(Landroidx/compose/animation/core/Transition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;",
        "createChildTransitionInternal",
        "initialState",
        "childLabel",
        "(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;",
        "createDeferredAnimation",
        "Landroidx/compose/animation/core/Transition$DeferredAnimation;",
        "(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;",
        "createTransitionAnimation",
        "initialValue",
        "targetValue",
        "animationSpec",
        "(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;",
        "animation-core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AnimationDebugDurationScale:I = 0x1


# direct methods
.method public static final animateDp(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Dp;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetValueByState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0xb02cd07

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(animateDp)P(2)970@39266L75:Transition.kt#pdpnli"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    .line 965
    sget-object p1, Landroidx/compose/animation/core/TransitionKt$animateDp$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateDp$1;

    check-cast p1, Lkotlin/jvm/functions/Function3;

    :cond_0
    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_1

    const-string p2, "DpAnimation"

    :cond_1
    move-object v5, p2

    .line 971
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {p2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v4

    and-int/lit8 p2, p5, 0xe

    shl-int/lit8 p5, p5, 0x3

    and-int/lit16 p6, p5, 0x380

    or-int/2addr p2, p6

    and-int/lit16 p6, p5, 0x1c00

    or-int/2addr p2, p6

    const p6, 0xe000

    and-int/2addr p5, p6

    or-int/2addr p2, p5

    const p5, -0x880d1ef

    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p5, "CC(animateValue)P(3,2)857@34142L32,858@34197L31,859@34253L23,861@34289L89:Transition.kt#pdpnli"

    invoke-static {p4, p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1234
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object p5

    shr-int/lit8 v0, p2, 0x9

    and-int/lit8 v0, v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, p5, p4, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1235
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object p5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p5, p4, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1236
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p3

    shr-int/lit8 p5, p2, 0x3

    and-int/lit8 p5, p5, 0x70

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p1, p3, p4, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    and-int/lit8 p1, p2, 0xe

    shl-int/lit8 p3, p2, 0x9

    and-int/2addr p3, p6

    or-int/2addr p1, p3

    shl-int/lit8 p2, p2, 0x6

    const/high16 p3, 0x70000

    and-int/2addr p2, p3

    or-int v7, p1, p2

    move-object v0, p0

    move-object v6, p4

    .line 1238
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 971
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public static final animateFloat(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetValueByState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x4fcbfb15

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(animateFloat)P(2)939@37552L78:Transition.kt#pdpnli"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    .line 936
    sget-object p1, Landroidx/compose/animation/core/TransitionKt$animateFloat$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateFloat$1;

    check-cast p1, Lkotlin/jvm/functions/Function3;

    :cond_0
    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_1

    const-string p2, "FloatAnimation"

    :cond_1
    move-object v5, p2

    .line 940
    sget-object p2, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {p2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v4

    and-int/lit8 p2, p5, 0xe

    shl-int/lit8 p5, p5, 0x3

    and-int/lit16 p6, p5, 0x380

    or-int/2addr p2, p6

    and-int/lit16 p6, p5, 0x1c00

    or-int/2addr p2, p6

    const p6, 0xe000

    and-int/2addr p5, p6

    or-int/2addr p2, p5

    const p5, -0x880d1ef

    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p5, "CC(animateValue)P(3,2)857@34142L32,858@34197L31,859@34253L23,861@34289L89:Transition.kt#pdpnli"

    invoke-static {p4, p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object p5

    shr-int/lit8 v0, p2, 0x9

    and-int/lit8 v0, v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, p5, p4, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1230
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object p5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p5, p4, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1231
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p3

    shr-int/lit8 p5, p2, 0x3

    and-int/lit8 p5, p5, 0x70

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p1, p3, p4, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    and-int/lit8 p1, p2, 0xe

    shl-int/lit8 p3, p2, 0x9

    and-int/2addr p3, p6

    or-int/2addr p1, p3

    shl-int/lit8 p2, p2, 0x6

    const/high16 p3, 0x70000

    and-int/2addr p2, p3

    or-int v7, p1, p2

    move-object v0, p0

    move-object v6, p4

    .line 1233
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 940
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public static final animateInt(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetValueByState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x4e9cdbfe

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(animateInt)P(2)1094@46186L76:Transition.kt#pdpnli"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    .line 1089
    sget-object p1, Landroidx/compose/animation/core/TransitionKt$animateInt$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateInt$1;

    check-cast p1, Lkotlin/jvm/functions/Function3;

    :cond_0
    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_1

    const-string p2, "IntAnimation"

    :cond_1
    move-object v5, p2

    .line 1095
    sget-object p2, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    invoke-static {p2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/IntCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v4

    and-int/lit8 p2, p5, 0xe

    shl-int/lit8 p5, p5, 0x3

    and-int/lit16 p6, p5, 0x380

    or-int/2addr p2, p6

    and-int/lit16 p6, p5, 0x1c00

    or-int/2addr p2, p6

    const p6, 0xe000

    and-int/2addr p5, p6

    or-int/2addr p2, p5

    const p5, -0x880d1ef

    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p5, "CC(animateValue)P(3,2)857@34142L32,858@34197L31,859@34253L23,861@34289L89:Transition.kt#pdpnli"

    invoke-static {p4, p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1254
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object p5

    shr-int/lit8 v0, p2, 0x9

    and-int/lit8 v0, v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, p5, p4, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1255
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object p5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p5, p4, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1256
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p3

    shr-int/lit8 p5, p2, 0x3

    and-int/lit8 p5, p5, 0x70

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p1, p3, p4, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    and-int/lit8 p1, p2, 0xe

    shl-int/lit8 p3, p2, 0x9

    and-int/2addr p3, p6

    or-int/2addr p1, p3

    shl-int/lit8 p2, p2, 0x6

    const/high16 p3, 0x70000

    and-int/2addr p2, p3

    or-int v7, p1, p2

    move-object v0, p0

    move-object v6, p4

    .line 1258
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1095
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public static final animateIntOffset(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetValueByState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x2e42d4f1

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(animateIntOffset)P(2)1063@44483L82:Transition.kt#pdpnli"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    .line 1060
    sget-object p1, Landroidx/compose/animation/core/TransitionKt$animateIntOffset$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateIntOffset$1;

    check-cast p1, Lkotlin/jvm/functions/Function3;

    :cond_0
    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_1

    const-string p2, "IntOffsetAnimation"

    :cond_1
    move-object v5, p2

    .line 1064
    sget-object p2, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-static {p2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v4

    and-int/lit8 p2, p5, 0xe

    shl-int/lit8 p5, p5, 0x3

    and-int/lit16 p6, p5, 0x380

    or-int/2addr p2, p6

    and-int/lit16 p6, p5, 0x1c00

    or-int/2addr p2, p6

    const p6, 0xe000

    and-int/2addr p5, p6

    or-int/2addr p2, p5

    const p5, -0x880d1ef

    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p5, "CC(animateValue)P(3,2)857@34142L32,858@34197L31,859@34253L23,861@34289L89:Transition.kt#pdpnli"

    invoke-static {p4, p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object p5

    shr-int/lit8 v0, p2, 0x9

    and-int/lit8 v0, v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, p5, p4, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1250
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object p5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p5, p4, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1251
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p3

    shr-int/lit8 p5, p2, 0x3

    and-int/lit8 p5, p5, 0x70

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p1, p3, p4, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    and-int/lit8 p1, p2, 0xe

    shl-int/lit8 p3, p2, 0x9

    and-int/2addr p3, p6

    or-int/2addr p1, p3

    shl-int/lit8 p2, p2, 0x6

    const/high16 p3, 0x70000

    and-int/2addr p2, p3

    or-int v7, p1, p2

    move-object v0, p0

    move-object v6, p4

    .line 1253
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1064
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public static final animateIntSize(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetValueByState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x7d6a5f61

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(animateIntSize)P(2)1124@47915L80:Transition.kt#pdpnli"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    .line 1121
    sget-object p1, Landroidx/compose/animation/core/TransitionKt$animateIntSize$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateIntSize$1;

    check-cast p1, Lkotlin/jvm/functions/Function3;

    :cond_0
    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_1

    const-string p2, "IntSizeAnimation"

    :cond_1
    move-object v5, p2

    .line 1125
    sget-object p2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-static {p2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v4

    and-int/lit8 p2, p5, 0xe

    shl-int/lit8 p5, p5, 0x3

    and-int/lit16 p6, p5, 0x380

    or-int/2addr p2, p6

    and-int/lit16 p6, p5, 0x1c00

    or-int/2addr p2, p6

    const p6, 0xe000

    and-int/2addr p5, p6

    or-int/2addr p2, p5

    const p5, -0x880d1ef

    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p5, "CC(animateValue)P(3,2)857@34142L32,858@34197L31,859@34253L23,861@34289L89:Transition.kt#pdpnli"

    invoke-static {p4, p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object p5

    shr-int/lit8 v0, p2, 0x9

    and-int/lit8 v0, v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, p5, p4, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1260
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object p5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p5, p4, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1261
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p3

    shr-int/lit8 p5, p2, 0x3

    and-int/lit8 p5, p5, 0x70

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p1, p3, p4, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    and-int/lit8 p1, p2, 0xe

    shl-int/lit8 p3, p2, 0x9

    and-int/2addr p3, p6

    or-int/2addr p1, p3

    shl-int/lit8 p2, p2, 0x6

    const/high16 p3, 0x70000

    and-int/2addr p2, p3

    or-int v7, p1, p2

    move-object v0, p0

    move-object v6, p4

    .line 1263
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1125
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public static final animateOffset(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetValueByState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7be30d0e

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(animateOffset)P(2)1001@41006L79:Transition.kt#pdpnli"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    .line 996
    sget-object p1, Landroidx/compose/animation/core/TransitionKt$animateOffset$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateOffset$1;

    check-cast p1, Lkotlin/jvm/functions/Function3;

    :cond_0
    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_1

    const-string p2, "OffsetAnimation"

    :cond_1
    move-object v5, p2

    .line 1002
    sget-object p2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {p2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v4

    and-int/lit8 p2, p5, 0xe

    shl-int/lit8 p5, p5, 0x3

    and-int/lit16 p6, p5, 0x380

    or-int/2addr p2, p6

    and-int/lit16 p6, p5, 0x1c00

    or-int/2addr p2, p6

    const p6, 0xe000

    and-int/2addr p5, p6

    or-int/2addr p2, p5

    const p5, -0x880d1ef

    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p5, "CC(animateValue)P(3,2)857@34142L32,858@34197L31,859@34253L23,861@34289L89:Transition.kt#pdpnli"

    invoke-static {p4, p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object p5

    shr-int/lit8 v0, p2, 0x9

    and-int/lit8 v0, v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, p5, p4, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1240
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object p5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p5, p4, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1241
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p3

    shr-int/lit8 p5, p2, 0x3

    and-int/lit8 p5, p5, 0x70

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p1, p3, p4, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    and-int/lit8 p1, p2, 0xe

    shl-int/lit8 p3, p2, 0x9

    and-int/2addr p3, p6

    or-int/2addr p1, p3

    shl-int/lit8 p2, p2, 0x6

    const/high16 p3, 0x70000

    and-int/2addr p2, p3

    or-int v7, p1, p2

    move-object v0, p0

    move-object v6, p4

    .line 1243
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1002
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public static final animateRect(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetValueByState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x592f64df

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(animateRect)P(2)1154@49641L77:Transition.kt#pdpnli"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    .line 1151
    sget-object p1, Landroidx/compose/animation/core/TransitionKt$animateRect$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateRect$1;

    check-cast p1, Lkotlin/jvm/functions/Function3;

    :cond_0
    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_1

    const-string p2, "RectAnimation"

    :cond_1
    move-object v5, p2

    .line 1155
    sget-object p2, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-static {p2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v4

    and-int/lit8 p2, p5, 0xe

    shl-int/lit8 p5, p5, 0x3

    and-int/lit16 p6, p5, 0x380

    or-int/2addr p2, p6

    and-int/lit16 p6, p5, 0x1c00

    or-int/2addr p2, p6

    const p6, 0xe000

    and-int/2addr p5, p6

    or-int/2addr p2, p5

    const p5, -0x880d1ef

    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p5, "CC(animateValue)P(3,2)857@34142L32,858@34197L31,859@34253L23,861@34289L89:Transition.kt#pdpnli"

    invoke-static {p4, p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object p5

    shr-int/lit8 v0, p2, 0x9

    and-int/lit8 v0, v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, p5, p4, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1265
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object p5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p5, p4, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1266
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p3

    shr-int/lit8 p5, p2, 0x3

    and-int/lit8 p5, p5, 0x70

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p1, p3, p4, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    and-int/lit8 p1, p2, 0xe

    shl-int/lit8 p3, p2, 0x9

    and-int/2addr p3, p6

    or-int/2addr p1, p3

    shl-int/lit8 p2, p2, 0x6

    const/high16 p3, 0x70000

    and-int/2addr p2, p3

    or-int v7, p1, p2

    move-object v0, p0

    move-object v6, p4

    .line 1268
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1155
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public static final animateSize(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/geometry/Size;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetValueByState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x2fd0c404

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(animateSize)P(2)1032@42735L77:Transition.kt#pdpnli"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    .line 1027
    sget-object p1, Landroidx/compose/animation/core/TransitionKt$animateSize$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateSize$1;

    check-cast p1, Lkotlin/jvm/functions/Function3;

    :cond_0
    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_1

    const-string p2, "SizeAnimation"

    :cond_1
    move-object v5, p2

    .line 1033
    sget-object p2, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-static {p2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Size$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v4

    and-int/lit8 p2, p5, 0xe

    shl-int/lit8 p5, p5, 0x3

    and-int/lit16 p6, p5, 0x380

    or-int/2addr p2, p6

    and-int/lit16 p6, p5, 0x1c00

    or-int/2addr p2, p6

    const p6, 0xe000

    and-int/2addr p5, p6

    or-int/2addr p2, p5

    const p5, -0x880d1ef

    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p5, "CC(animateValue)P(3,2)857@34142L32,858@34197L31,859@34253L23,861@34289L89:Transition.kt#pdpnli"

    invoke-static {p4, p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1244
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object p5

    shr-int/lit8 v0, p2, 0x9

    and-int/lit8 v0, v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, p5, p4, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1245
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object p5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p5, p4, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1246
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p3

    shr-int/lit8 p5, p2, 0x3

    and-int/lit8 p5, p5, 0x70

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p1, p3, p4, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    and-int/lit8 p1, p2, 0xe

    shl-int/lit8 p3, p2, 0x9

    and-int/2addr p3, p6

    or-int/2addr p1, p3

    shl-int/lit8 p2, p2, 0x6

    const/high16 p3, 0x70000

    and-int/2addr p2, p3

    or-int v7, p1, p2

    move-object v0, p0

    move-object v6, p4

    .line 1248
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1033
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public static final animateValue(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "TT;>;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeConverter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetValueByState"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x880d1ef

    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(animateValue)P(3,2)857@34142L32,858@34197L31,859@34253L23,861@34289L89:Transition.kt#pdpnli"

    invoke-static {p5, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_0

    .line 853
    sget-object p2, Landroidx/compose/animation/core/TransitionKt$animateValue$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateValue$1;

    check-cast p2, Lkotlin/jvm/functions/Function3;

    :cond_0
    and-int/lit8 p7, p7, 0x4

    if-eqz p7, :cond_1

    const-string p3, "ValueAnimation"

    :cond_1
    move-object v5, p3

    .line 858
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 p7, p6, 0x9

    and-int/lit8 p7, p7, 0x70

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, p3, p5, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 859
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-interface {p4, p3, p5, p7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 860
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object p3

    shr-int/lit8 p4, p6, 0x3

    and-int/lit8 p4, p4, 0x70

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p3, p5, p4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    and-int/lit8 p2, p6, 0xe

    const p3, 0xe000

    shl-int/lit8 p4, p6, 0x9

    and-int/2addr p3, p4

    or-int/2addr p2, p3

    shl-int/lit8 p3, p6, 0x6

    const/high16 p4, 0x70000

    and-int/2addr p3, p4

    or-int v7, p2, p3

    move-object v0, p0

    move-object v4, p1

    move-object v6, p5

    .line 862
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public static final createChildTransition(Landroidx/compose/animation/core/Transition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transformToChildState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x48730564

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(createChildTransition)786@31174L36,787@31234L74,788@31331L39,789@31382L63:Transition.kt#pdpnli"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    const-string p1, "ChildTransition"

    :cond_0
    move-object v3, p1

    and-int/lit8 p1, p4, 0xe

    const p5, 0x44faf204

    .line 787
    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p5, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p3, p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1192
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p5

    .line 1193
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p5, :cond_1

    .line 1194
    sget-object p5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p5

    if-ne v0, p5, :cond_2

    .line 787
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    .line 1196
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1192
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 788
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    :cond_3
    shr-int/lit8 p5, p4, 0x3

    and-int/lit8 p5, p5, 0x70

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, p3, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 789
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p2, v0, p3, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    shl-int/lit8 p2, p4, 0x6

    and-int/lit16 p2, p2, 0x1c00

    or-int v5, p1, p2

    move-object v0, p0

    move-object v4, p3

    .line 790
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/TransitionKt;->createChildTransitionInternal(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    move-result-object p0

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public static final createChildTransitionInternal(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;TT;TT;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childLabel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0xbd1ef36

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(createChildTransitionInternal)P(1,2)799@31645L110,803@31790L112,803@31761L141,817@32124L25:Transition.kt#pdpnli"

    invoke-static {p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.animation.core.createChildTransitionInternal (Transition.kt:794)"

    .line 799
    invoke-static {v0, p5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const v0, 0x44faf204

    .line 800
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1199
    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 1200
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1

    .line 1201
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_2

    .line 801
    :cond_1
    new-instance v1, Landroidx/compose/animation/core/Transition;

    new-instance v0, Landroidx/compose/animation/core/MutableTransitionState;

    invoke-direct {v0, p1}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, v0, p3}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;)V

    .line 1203
    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1199
    :cond_2
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 800
    check-cast v1, Landroidx/compose/animation/core/Transition;

    const p3, 0x1e7b2b64

    .line 804
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p3, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {p4, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1206
    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p3, v0

    .line 1208
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p3, :cond_3

    .line 1209
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne v0, p3, :cond_4

    .line 804
    :cond_3
    new-instance p3, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1$1;

    invoke-direct {p3, p0, v1}, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition;)V

    move-object v0, p3

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 1211
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1207
    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 p3, 0x0

    .line 804
    invoke-static {v1, v0, p4, p3}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 811
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 815
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getLastSeekedTimeNanos$animation_core_release()J

    move-result-wide v2

    .line 812
    invoke-virtual {v1, p1, p2, v2, v3}, Landroidx/compose/animation/core/Transition;->seek(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_0

    :cond_5
    shr-int/lit8 p0, p5, 0x3

    and-int/lit8 p0, p0, 0x8

    shr-int/lit8 p1, p5, 0x6

    and-int/lit8 p1, p1, 0xe

    or-int/2addr p0, p1

    .line 818
    invoke-virtual {v1, p2, p4, p0}, Landroidx/compose/animation/core/Transition;->updateTarget$animation_core_release(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 819
    invoke-virtual {v1, p3}, Landroidx/compose/animation/core/Transition;->setSeeking$animation_core_release(Z)V

    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method public static final createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<TT;TV;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeConverter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x662b6f20

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(createDeferredAnimation)P(1)753@29670L58,754@29733L102:Transition.kt#pdpnli"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-string p2, "DeferredAnimation"

    .line 752
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_1

    const/4 p5, -0x1

    const-string v1, "androidx.compose.animation.core.createDeferredAnimation (Transition.kt:749)"

    .line 753
    invoke-static {v0, p4, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    const p4, 0x44faf204

    .line 754
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p4, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p3, p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1185
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p4

    .line 1186
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p5

    if-nez p4, :cond_2

    .line 1187
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p4

    if-ne p5, p4, :cond_3

    .line 754
    :cond_2
    new-instance p5, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    invoke-direct {p5, p0, p1, p2}, Landroidx/compose/animation/core/Transition$DeferredAnimation;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;)V

    .line 1189
    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1185
    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 754
    check-cast p5, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 755
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$1;

    invoke-direct {p1, p0, p5}, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x0

    invoke-static {p5, p1, p3, p2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 760
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 761
    invoke-virtual {p5}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->setupSeeking$animation_core_release()V

    :cond_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p5
.end method

.method public static final createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;TT;TT;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "TT;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationSpec"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeConverter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x122b33ce

    invoke-interface {p6, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(createTransitionAnimation)P(1,3!1,4)873@34678L499,896@35561L128,896@35523L166:Transition.kt#pdpnli"

    invoke-static {p6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.animation.core.createTransitionAnimation (Transition.kt:866)"

    .line 873
    invoke-static {v0, p7, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const p7, 0x44faf204

    .line 874
    invoke-interface {p6, p7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p7, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p6, p7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1214
    invoke-interface {p6, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p7

    .line 1215
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p7, :cond_1

    .line 1216
    sget-object p7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p7

    if-ne v0, p7, :cond_2

    .line 879
    :cond_1
    new-instance v0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 881
    invoke-static {p4, p2}, Landroidx/compose/animation/core/AnimationStateKt;->createZeroVectorFrom(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p4

    move-object v6, p5

    .line 879
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;)V

    .line 1218
    invoke-interface {p6, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1214
    :cond_2
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 874
    check-cast v0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 886
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 888
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->updateInitialAndTargetValue$animation_core_release(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    goto :goto_0

    .line 894
    :cond_3
    invoke-virtual {v0, p2, p3}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->updateTargetValue$animation_core_release(Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    :goto_0
    const p1, 0x1e7b2b64

    .line 897
    invoke-interface {p6, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p1, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {p6, p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1221
    invoke-interface {p6, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p6, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 1223
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_4

    .line 1224
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    if-ne p2, p1, :cond_5

    .line 897
    :cond_4
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$1$1;

    invoke-direct {p1, p0, v0}, Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$1$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 1226
    invoke-interface {p6, p2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1222
    :cond_5
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    const/4 p0, 0x0

    .line 897
    invoke-static {v0, p2, p6, p0}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Landroidx/compose/runtime/State;

    return-object v0
.end method

.method public static final updateTransition(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "TT;>;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "transitionState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x34a03233

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(updateTransition)P(1)154@6617L94,157@6727L38,158@6799L195,158@6770L224:Transition.kt#pdpnli"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 153
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, -0x1

    const-string v1, "androidx.compose.animation.core.updateTransition (Transition.kt:150)"

    .line 154
    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    const p3, 0x44faf204

    .line 155
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p4, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p2, p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1171
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 1172
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2

    .line 1173
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_3

    .line 156
    :cond_2
    new-instance v1, Landroidx/compose/animation/core/Transition;

    invoke-direct {v1, p0, p1}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;)V

    .line 1175
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1171
    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 155
    check-cast v1, Landroidx/compose/animation/core/Transition;

    .line 158
    invoke-virtual {p0}, Landroidx/compose/animation/core/MutableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p2, p1}, Landroidx/compose/animation/core/Transition;->animateTo$animation_core_release(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 159
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1178
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p0

    .line 1179
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    if-nez p0, :cond_4

    .line 1180
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    if-ne p3, p0, :cond_5

    .line 159
    :cond_4
    new-instance p0, Landroidx/compose/animation/core/TransitionKt$updateTransition$2$1;

    invoke-direct {p0, v1}, Landroidx/compose/animation/core/TransitionKt$updateTransition$2$1;-><init>(Landroidx/compose/animation/core/Transition;)V

    move-object p3, p0

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 1182
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1178
    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 159
    invoke-static {v1, p3, p2, p1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method public static final updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x78f2a0ad

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(updateTransition)P(1)71@2945L51,72@3012L22,73@3068L195,73@3039L224:Transition.kt#pdpnli"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 70
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, -0x1

    const-string v1, "androidx.compose.animation.core.updateTransition (Transition.kt:67)"

    .line 71
    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    const p4, -0x1d58f75c

    .line 72
    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p4, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p2, p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1158
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p4

    .line 1159
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p4, v0, :cond_2

    .line 72
    new-instance p4, Landroidx/compose/animation/core/Transition;

    invoke-direct {p4, p0, p1}, Landroidx/compose/animation/core/Transition;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1161
    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1157
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 72
    check-cast p4, Landroidx/compose/animation/core/Transition;

    and-int/lit8 p1, p3, 0x8

    or-int/lit8 p1, p1, 0x30

    and-int/lit8 p3, p3, 0xe

    or-int/2addr p1, p3

    .line 73
    invoke-virtual {p4, p0, p2, p1}, Landroidx/compose/animation/core/Transition;->animateTo$animation_core_release(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    const p0, 0x44faf204

    .line 74
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p0, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p2, p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1164
    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p0

    .line 1165
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_3

    .line 1166
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_4

    .line 74
    :cond_3
    new-instance p0, Landroidx/compose/animation/core/TransitionKt$updateTransition$1$1;

    invoke-direct {p0, p4}, Landroidx/compose/animation/core/TransitionKt$updateTransition$1$1;-><init>(Landroidx/compose/animation/core/Transition;)V

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 1168
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1164
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    const/4 p0, 0x6

    .line 74
    invoke-static {p4, p1, p2, p0}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p4
.end method
