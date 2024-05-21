.class public final Landroidx/compose/ui/focus/FocusOwnerImpl;
.super Ljava/lang/Object;
.source "FocusOwnerImpl.kt"

# interfaces
.implements Landroidx/compose/ui/focus/FocusOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusOwnerImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusOwnerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusOwnerImpl.kt\nandroidx/compose/ui/focus/FocusOwnerImpl\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 8 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 9 NodeKind.kt\nandroidx/compose/ui/node/NodeKind\n*L\n1#1,290:1\n244#1:361\n245#1:433\n246#1:440\n247#1:487\n248#1:534\n249#1:541\n244#1:612\n245#1:684\n246#1:691\n247#1:738\n248#1:785\n249#1:792\n244#1:863\n245#1:935\n246#1:942\n247#1:989\n248#1:1036\n249#1:1043\n96#2:291\n96#2:360\n104#2:542\n104#2:611\n98#2:793\n98#2:862\n90#2,7:1213\n90#2:1229\n262#3:292\n230#3,5:293\n58#3:298\n59#3,8:300\n383#3,5:308\n263#3:313\n388#3:314\n393#3,2:316\n395#3,8:321\n403#3,9:332\n412#3,8:344\n68#3,7:352\n265#3:359\n253#3,2:362\n230#3,5:364\n58#3:369\n59#3,8:371\n383#3,5:379\n255#3,3:384\n388#3:387\n393#3,2:389\n395#3,8:394\n403#3,9:405\n412#3,8:417\n68#3,7:425\n258#3:432\n383#3,12:441\n395#3,8:456\n403#3,9:467\n412#3,8:479\n383#3,12:488\n395#3,8:503\n403#3,9:514\n412#3,8:526\n262#3:543\n230#3,5:544\n58#3:549\n59#3,8:551\n383#3,5:559\n263#3:564\n388#3:565\n393#3,2:567\n395#3,8:572\n403#3,9:583\n412#3,8:595\n68#3,7:603\n265#3:610\n253#3,2:613\n230#3,5:615\n58#3:620\n59#3,8:622\n383#3,5:630\n255#3,3:635\n388#3:638\n393#3,2:640\n395#3,8:645\n403#3,9:656\n412#3,8:668\n68#3,7:676\n258#3:683\n383#3,12:692\n395#3,8:707\n403#3,9:718\n412#3,8:730\n383#3,12:739\n395#3,8:754\n403#3,9:765\n412#3,8:777\n262#3:794\n230#3,5:795\n58#3:800\n59#3,8:802\n383#3,5:810\n263#3:815\n388#3:816\n393#3,2:818\n395#3,8:823\n403#3,9:834\n412#3,8:846\n68#3,7:854\n265#3:861\n253#3,2:864\n230#3,5:866\n58#3:871\n59#3,8:873\n383#3,5:881\n255#3,3:886\n388#3:889\n393#3,2:891\n395#3,8:896\n403#3,9:907\n412#3,8:919\n68#3,7:927\n258#3:934\n383#3,12:943\n395#3,8:958\n403#3,9:969\n412#3,8:981\n383#3,12:990\n395#3,8:1005\n403#3,9:1016\n412#3,8:1028\n253#3,2:1044\n230#3,5:1046\n58#3:1051\n59#3,8:1053\n383#3,5:1061\n255#3,3:1066\n388#3:1069\n393#3,2:1071\n395#3,8:1076\n403#3,9:1087\n412#3,8:1099\n68#3,7:1107\n258#3:1114\n383#3,6:1121\n393#3,2:1128\n395#3,8:1133\n403#3,9:1144\n412#3,8:1156\n383#3,6:1164\n393#3,2:1171\n395#3,8:1176\n403#3,9:1187\n412#3,8:1199\n190#3:1221\n191#3,6:1223\n198#3,3:1231\n1#4:299\n1#4:370\n1#4:550\n1#4:621\n1#4:801\n1#4:872\n1#4:1052\n1#4:1222\n261#5:315\n261#5:388\n261#5:566\n261#5:639\n261#5:817\n261#5:890\n261#5:1070\n261#5:1127\n261#5:1170\n261#5:1230\n234#6,3:318\n237#6,3:341\n234#6,3:391\n237#6,3:414\n234#6,3:453\n237#6,3:476\n234#6,3:500\n237#6,3:523\n234#6,3:569\n237#6,3:592\n234#6,3:642\n237#6,3:665\n234#6,3:704\n237#6,3:727\n234#6,3:751\n237#6,3:774\n234#6,3:820\n237#6,3:843\n234#6,3:893\n237#6,3:916\n234#6,3:955\n237#6,3:978\n234#6,3:1002\n237#6,3:1025\n234#6,3:1073\n237#6,3:1096\n234#6,3:1130\n237#6,3:1153\n234#6,3:1173\n237#6,3:1196\n1182#7:329\n1161#7,2:330\n1182#7:402\n1161#7,2:403\n1182#7:464\n1161#7,2:465\n1182#7:511\n1161#7,2:512\n1182#7:580\n1161#7,2:581\n1182#7:653\n1161#7,2:654\n1182#7:715\n1161#7,2:716\n1182#7:762\n1161#7,2:763\n1182#7:831\n1161#7,2:832\n1182#7:904\n1161#7,2:905\n1182#7:966\n1161#7,2:967\n1182#7:1013\n1161#7,2:1014\n1182#7:1084\n1161#7,2:1085\n1182#7:1141\n1161#7,2:1142\n1182#7:1184\n1161#7,2:1185\n51#8,6:434\n33#8,6:535\n51#8,6:685\n33#8,6:786\n51#8,6:936\n33#8,6:1037\n51#8,6:1115\n33#8,6:1207\n47#9:1220\n*S KotlinDebug\n*F\n+ 1 FocusOwnerImpl.kt\nandroidx/compose/ui/focus/FocusOwnerImpl\n*L\n190#1:361\n190#1:433\n190#1:440\n190#1:487\n190#1:534\n190#1:541\n203#1:612\n203#1:684\n203#1:691\n203#1:738\n203#1:785\n203#1:792\n218#1:863\n218#1:935\n218#1:942\n218#1:989\n218#1:1036\n218#1:1043\n188#1:291\n191#1:360\n201#1:542\n204#1:611\n216#1:793\n219#1:862\n260#1:1213,7\n261#1:1229\n188#1:292\n188#1:293,5\n188#1:298\n188#1:300,8\n188#1:308,5\n188#1:313\n188#1:314\n188#1:316,2\n188#1:321,8\n188#1:332,9\n188#1:344,8\n188#1:352,7\n188#1:359\n190#1:362,2\n190#1:364,5\n190#1:369\n190#1:371,8\n190#1:379,5\n190#1:384,3\n190#1:387\n190#1:389,2\n190#1:394,8\n190#1:405,9\n190#1:417,8\n190#1:425,7\n190#1:432\n190#1:441,12\n190#1:456,8\n190#1:467,9\n190#1:479,8\n190#1:488,12\n190#1:503,8\n190#1:514,9\n190#1:526,8\n201#1:543\n201#1:544,5\n201#1:549\n201#1:551,8\n201#1:559,5\n201#1:564\n201#1:565\n201#1:567,2\n201#1:572,8\n201#1:583,9\n201#1:595,8\n201#1:603,7\n201#1:610\n203#1:613,2\n203#1:615,5\n203#1:620\n203#1:622,8\n203#1:630,5\n203#1:635,3\n203#1:638\n203#1:640,2\n203#1:645,8\n203#1:656,9\n203#1:668,8\n203#1:676,7\n203#1:683\n203#1:692,12\n203#1:707,8\n203#1:718,9\n203#1:730,8\n203#1:739,12\n203#1:754,8\n203#1:765,9\n203#1:777,8\n216#1:794\n216#1:795,5\n216#1:800\n216#1:802,8\n216#1:810,5\n216#1:815\n216#1:816\n216#1:818,2\n216#1:823,8\n216#1:834,9\n216#1:846,8\n216#1:854,7\n216#1:861\n218#1:864,2\n218#1:866,5\n218#1:871\n218#1:873,8\n218#1:881,5\n218#1:886,3\n218#1:889\n218#1:891,2\n218#1:896,8\n218#1:907,9\n218#1:919,8\n218#1:927,7\n218#1:934\n218#1:943,12\n218#1:958,8\n218#1:969,9\n218#1:981,8\n218#1:990,12\n218#1:1005,8\n218#1:1016,9\n218#1:1028,8\n244#1:1044,2\n244#1:1046,5\n244#1:1051\n244#1:1053,8\n244#1:1061,5\n244#1:1066,3\n244#1:1069\n244#1:1071,2\n244#1:1076,8\n244#1:1087,9\n244#1:1099,8\n244#1:1107,7\n244#1:1114\n246#1:1121,6\n246#1:1128,2\n246#1:1133,8\n246#1:1144,9\n246#1:1156,8\n247#1:1164,6\n247#1:1171,2\n247#1:1176,8\n247#1:1187,9\n247#1:1199,8\n260#1:1221\n260#1:1223,6\n260#1:1231,3\n188#1:299\n190#1:370\n201#1:550\n203#1:621\n216#1:801\n218#1:872\n244#1:1052\n260#1:1222\n188#1:315\n190#1:388\n201#1:566\n203#1:639\n216#1:817\n218#1:890\n244#1:1070\n246#1:1127\n247#1:1170\n261#1:1230\n188#1:318,3\n188#1:341,3\n190#1:391,3\n190#1:414,3\n190#1:453,3\n190#1:476,3\n190#1:500,3\n190#1:523,3\n201#1:569,3\n201#1:592,3\n203#1:642,3\n203#1:665,3\n203#1:704,3\n203#1:727,3\n203#1:751,3\n203#1:774,3\n216#1:820,3\n216#1:843,3\n218#1:893,3\n218#1:916,3\n218#1:955,3\n218#1:978,3\n218#1:1002,3\n218#1:1025,3\n244#1:1073,3\n244#1:1096,3\n246#1:1130,3\n246#1:1153,3\n247#1:1173,3\n247#1:1196,3\n188#1:329\n188#1:330,2\n190#1:402\n190#1:403,2\n190#1:464\n190#1:465,2\n190#1:511\n190#1:512,2\n201#1:580\n201#1:581,2\n203#1:653\n203#1:654,2\n203#1:715\n203#1:716,2\n203#1:762\n203#1:763,2\n216#1:831\n216#1:832,2\n218#1:904\n218#1:905,2\n218#1:966\n218#1:967,2\n218#1:1013\n218#1:1014,2\n244#1:1084\n244#1:1085,2\n246#1:1141\n246#1:1142,2\n247#1:1184\n247#1:1185,2\n190#1:434,6\n190#1:535,6\n203#1:685,6\n203#1:786,6\n218#1:936,6\n218#1:1037,6\n245#1:1115,6\n248#1:1207,6\n260#1:1220\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0018\u0010\u0002\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016J\u001d\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008 \u0010!J\u001d\u0010\"\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008#\u0010!J\u0010\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020&H\u0016J\n\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\u001d\u0010)\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020+H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008,\u0010-J\u0008\u0010.\u001a\u00020\u0005H\u0016J\u0010\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u000201H\u0016J\u0010\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u000202H\u0016J\u0010\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u0014H\u0016J\u0008\u00103\u001a\u00020\u0005H\u0016J\u001d\u00104\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020+H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00085\u0010-J\u000e\u00106\u001a\u0004\u0018\u000107*\u000208H\u0002J\\\u00109\u001a\u00020\u0005\"\n\u0008\u0000\u0010:\u0018\u0001*\u000208*\u0002082\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u0002H:0<2\u0012\u0010=\u001a\u000e\u0012\u0004\u0012\u0002H:\u0012\u0004\u0012\u00020\u00050\u00032\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u0002H:\u0012\u0004\u0012\u00020\u00050\u0003H\u0082\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008?\u0010@R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006A"
    }
    d2 = {
        "Landroidx/compose/ui/focus/FocusOwnerImpl;",
        "Landroidx/compose/ui/focus/FocusOwner;",
        "onRequestApplyChangesListener",
        "Lkotlin/Function1;",
        "Lkotlin/Function0;",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "focusInvalidationManager",
        "Landroidx/compose/ui/focus/FocusInvalidationManager;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "setLayoutDirection",
        "(Landroidx/compose/ui/unit/LayoutDirection;)V",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "getModifier",
        "()Landroidx/compose/ui/Modifier;",
        "rootFocusNode",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "getRootFocusNode$ui_release",
        "()Landroidx/compose/ui/focus/FocusTargetNode;",
        "setRootFocusNode$ui_release",
        "(Landroidx/compose/ui/focus/FocusTargetNode;)V",
        "clearFocus",
        "force",
        "",
        "refreshFocusEvents",
        "dispatchInterceptedSoftKeyboardEvent",
        "keyEvent",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "dispatchInterceptedSoftKeyboardEvent-ZmokQxo",
        "(Landroid/view/KeyEvent;)Z",
        "dispatchKeyEvent",
        "dispatchKeyEvent-ZmokQxo",
        "dispatchRotaryEvent",
        "event",
        "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;",
        "getFocusRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "moveFocus",
        "focusDirection",
        "Landroidx/compose/ui/focus/FocusDirection;",
        "moveFocus-3ESFkO8",
        "(I)Z",
        "releaseFocus",
        "scheduleInvalidation",
        "node",
        "Landroidx/compose/ui/focus/FocusEventModifierNode;",
        "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;",
        "takeFocus",
        "wrapAroundFocus",
        "wrapAroundFocus-3ESFkO8",
        "lastLocalKeyInputNode",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "traverseAncestors",
        "T",
        "type",
        "Landroidx/compose/ui/node/NodeKind;",
        "onPreVisit",
        "onVisit",
        "traverseAncestors-Y-YKmho",
        "(Landroidx/compose/ui/node/DelegatableNode;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

.field public layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private final modifier:Landroidx/compose/ui/Modifier;

.field private rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onRequestApplyChangesListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 58
    new-instance v0, Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 65
    new-instance p1, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;-><init>(Landroidx/compose/ui/focus/FocusOwnerImpl;)V

    check-cast p1, Landroidx/compose/ui/Modifier;

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->modifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method private final lastLocalKeyInputNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/Modifier$Node;
    .locals 4

    const/16 p0, 0x400

    .line 1213
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    const/16 v1, 0x2000

    .line 1219
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 1221
    invoke-interface {p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1223
    invoke-interface {p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    .line 1224
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v1

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1225
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 1227
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 1229
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 1230
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    move-object v2, p1

    .line 1231
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-object v2

    .line 1221
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "visitLocalDescendants called on an unattached node"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final synthetic traverseAncestors-Y-YKmho(Landroidx/compose/ui/node/DelegatableNode;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/compose/ui/node/DelegatableNode;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 1051
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1053
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 1054
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    const/16 v6, 0x10

    const-string v7, "T"

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v3, :cond_c

    .line 1056
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 1057
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v11

    and-int v11, v11, p2

    if-eqz v11, :cond_a

    :goto_1
    if-eqz v2, :cond_a

    .line 1059
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int v11, v11, p2

    if-eqz v11, :cond_9

    .line 1060
    move-object v11, v2

    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    move-object v11, v2

    move-object v12, v4

    :goto_2
    if-eqz v11, :cond_9

    .line 1064
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v13, v11, Ljava/lang/Object;

    if-eqz v13, :cond_1

    if-nez v5, :cond_0

    .line 1066
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 1067
    :cond_0
    move-object v13, v5

    check-cast v13, Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1069
    :cond_1
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    .line 1070
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int v13, v13, p2

    if-eqz v13, :cond_8

    .line 1069
    instance-of v13, v11, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v13, :cond_8

    .line 1072
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/node/DelegatingNode;

    .line 1073
    invoke-virtual {v13}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move v14, v9

    :goto_3
    if-eqz v13, :cond_7

    .line 1075
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/Modifier$Node;

    .line 1070
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v15

    and-int v15, v15, p2

    if-eqz v15, :cond_6

    add-int/lit8 v14, v14, 0x1

    if-ne v14, v10, :cond_2

    move-object v11, v13

    goto :goto_4

    .line 1083
    :cond_2
    move-object v15, v12

    check-cast v15, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v12, :cond_3

    .line 1086
    new-instance v12, Landroidx/compose/runtime/collection/MutableVector;

    new-array v15, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v12, v15, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1084
    move-object v15, v12

    check-cast v15, Landroidx/compose/runtime/collection/MutableVector;

    .line 1087
    :cond_3
    move-object v15, v11

    check-cast v15, Landroidx/compose/ui/Modifier$Node;

    if-eqz v11, :cond_5

    .line 1089
    move-object v15, v12

    check-cast v15, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v12, :cond_4

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v11, v4

    .line 1092
    :cond_5
    move-object v15, v12

    check-cast v15, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v12, :cond_6

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1096
    :cond_6
    :goto_4
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    goto :goto_3

    :cond_7
    if-ne v14, v10, :cond_8

    goto :goto_2

    .line 1104
    :cond_8
    :goto_5
    move-object v11, v12

    check-cast v11, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v12}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_2

    .line 1107
    :cond_9
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto/16 :goto_1

    .line 1110
    :cond_a
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1111
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto/16 :goto_0

    :cond_b
    move-object v2, v4

    goto/16 :goto_0

    .line 1114
    :cond_c
    move-object v2, v5

    check-cast v2, Ljava/util/List;

    if-eqz v5, :cond_e

    .line 1116
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_e

    :goto_6
    add-int/lit8 v3, v2, -0x1

    .line 1117
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1118
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-gez v3, :cond_d

    goto :goto_7

    :cond_d
    move v2, v3

    goto :goto_6

    .line 246
    :cond_e
    :goto_7
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object v3, v4

    :goto_8
    if-eqz v2, :cond_17

    .line 1124
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v11, v2, Ljava/lang/Object;

    if-eqz v11, :cond_f

    .line 1125
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 1126
    :cond_f
    move-object v11, v2

    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .line 1127
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int v11, v11, p2

    if-eqz v11, :cond_16

    .line 1126
    instance-of v11, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_16

    .line 1129
    move-object v11, v2

    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    .line 1130
    invoke-virtual {v11}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move v12, v9

    :goto_9
    if-eqz v11, :cond_15

    .line 1132
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    .line 1127
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int v13, v13, p2

    if-eqz v13, :cond_14

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v10, :cond_10

    move-object v2, v11

    goto :goto_a

    .line 1140
    :cond_10
    move-object v13, v3

    check-cast v13, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v3, :cond_11

    .line 1143
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v13, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1141
    move-object v13, v3

    check-cast v13, Landroidx/compose/runtime/collection/MutableVector;

    .line 1144
    :cond_11
    move-object v13, v2

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    if-eqz v2, :cond_13

    .line 1146
    move-object v13, v3

    check-cast v13, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_12

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_12
    move-object v2, v4

    .line 1149
    :cond_13
    move-object v13, v3

    check-cast v13, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_14

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1153
    :cond_14
    :goto_a
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_9

    :cond_15
    if-ne v12, v10, :cond_16

    goto :goto_8

    .line 1161
    :cond_16
    :goto_b
    move-object v2, v3

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_8

    .line 247
    :cond_17
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object v2, v4

    :goto_c
    if-eqz v0, :cond_20

    .line 1167
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v3, v0, Ljava/lang/Object;

    if-eqz v3, :cond_18

    .line 1168
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 1169
    :cond_18
    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .line 1170
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v3

    and-int v3, v3, p2

    if-eqz v3, :cond_1f

    .line 1169
    instance-of v3, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v3, :cond_1f

    .line 1172
    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 1173
    invoke-virtual {v3}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    move v11, v9

    :goto_d
    if-eqz v3, :cond_1e

    .line 1175
    move-object v12, v3

    check-cast v12, Landroidx/compose/ui/Modifier$Node;

    .line 1170
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int v12, v12, p2

    if-eqz v12, :cond_1d

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v10, :cond_19

    move-object v0, v3

    goto :goto_e

    .line 1183
    :cond_19
    move-object v12, v2

    check-cast v12, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v2, :cond_1a

    .line 1186
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v2, v12, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1184
    move-object v12, v2

    check-cast v12, Landroidx/compose/runtime/collection/MutableVector;

    .line 1187
    :cond_1a
    move-object v12, v0

    check-cast v12, Landroidx/compose/ui/Modifier$Node;

    if-eqz v0, :cond_1c

    .line 1189
    move-object v12, v2

    check-cast v12, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_1b

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_1b
    move-object v0, v4

    .line 1192
    :cond_1c
    move-object v12, v2

    check-cast v12, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_1d

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1196
    :cond_1d
    :goto_e
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_d

    :cond_1e
    if-ne v11, v10, :cond_1f

    goto :goto_c

    .line 1204
    :cond_1f
    :goto_f
    move-object v0, v2

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_c

    :cond_20
    if-eqz v5, :cond_21

    .line 1208
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    :goto_10
    if-ge v9, v0, :cond_21

    .line 1209
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1210
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_21
    return-void

    .line 1051
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "visitAncestors called on an unattached node"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final wrapAroundFocus-3ESFkO8(I)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 273
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->getHasFocus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getNext-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getPrevious-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus(Z)V

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 280
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 283
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->moveFocus-3ESFkO8(I)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public clearFocus(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus(ZZ)V

    return-void
.end method

.method public clearFocus(ZZ)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_1

    iget-object v3, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 124
    sget-object v4, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getExit-dhqQ-8s()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/focus/FocusTransactionsKt;->performCustomClearFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/focus/FocusOwnerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Landroidx/compose/ui/focus/CustomDestinationResult;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v2, :cond_0

    if-eq v3, v1, :cond_0

    if-eq v3, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v3, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 133
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v3

    iget-object v4, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 134
    invoke-static {v4, p1, p2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 135
    sget-object p1, Landroidx/compose/ui/focus/FocusOwnerImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_3

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 137
    sget-object p1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    goto :goto_1

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 136
    :cond_3
    sget-object p1, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 135
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusTargetNode;->setFocusState(Landroidx/compose/ui/focus/FocusStateImpl;)V

    :cond_4
    return-void
.end method

.method public dispatchInterceptedSoftKeyboardEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 13

    const-string v0, "keyEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 200
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p0

    const-string/jumbo v0, "visitAncestors called on an unattached node"

    const/high16 v1, 0x20000

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p0, :cond_d

    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    .line 542
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v6

    .line 549
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 551
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    .line 552
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_b

    .line 554
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 555
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v6

    if-eqz v8, :cond_9

    :goto_1
    if-eqz v7, :cond_9

    .line 557
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v6

    if-eqz v8, :cond_8

    move-object v9, v4

    move-object v8, v7

    :goto_2
    if-eqz v8, :cond_8

    .line 562
    instance-of v10, v8, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    if-eqz v10, :cond_0

    goto/16 :goto_5

    .line 566
    :cond_0
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v6

    if-eqz v10, :cond_7

    .line 565
    instance-of v10, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_7

    .line 568
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 569
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move v11, v3

    :goto_3
    if-eqz v10, :cond_6

    .line 566
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v6

    if-eqz v12, :cond_5

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v5, :cond_1

    move-object v8, v10

    goto :goto_4

    :cond_1
    if-nez v9, :cond_2

    .line 582
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v2, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v9, v12, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v8, :cond_4

    if-eqz v9, :cond_3

    .line 585
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v8, v4

    :cond_4
    if-eqz v9, :cond_5

    .line 588
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_5
    :goto_4
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto :goto_3

    :cond_6
    if-ne v11, v5, :cond_7

    goto :goto_2

    .line 600
    :cond_7
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_2

    .line 603
    :cond_8
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_1

    .line 606
    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 607
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_0

    :cond_a
    move-object v7, v4

    goto/16 :goto_0

    :cond_b
    move-object v8, v4

    .line 610
    :goto_5
    check-cast v8, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    goto :goto_6

    .line 549
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    move-object v8, v4

    :goto_6
    if-eqz v8, :cond_32

    .line 203
    check-cast v8, Landroidx/compose/ui/node/DelegatableNode;

    .line 611
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result p0

    .line 620
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 622
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 623
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    move-object v6, v4

    :goto_7
    if-eqz v1, :cond_1a

    .line 625
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    .line 626
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, p0

    if-eqz v7, :cond_18

    :goto_8
    if-eqz v0, :cond_18

    .line 628
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, p0

    if-eqz v7, :cond_17

    move-object v7, v0

    move-object v9, v4

    :goto_9
    if-eqz v7, :cond_17

    .line 633
    instance-of v10, v7, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    if-eqz v10, :cond_f

    if-nez v6, :cond_e

    .line 635
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 636
    :cond_e
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 639
    :cond_f
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, p0

    if-eqz v10, :cond_16

    .line 638
    instance-of v10, v7, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_16

    .line 641
    move-object v10, v7

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 642
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move v11, v3

    :goto_a
    if-eqz v10, :cond_15

    .line 639
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, p0

    if-eqz v12, :cond_14

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v5, :cond_10

    move-object v7, v10

    goto :goto_b

    :cond_10
    if-nez v9, :cond_11

    .line 655
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v2, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v9, v12, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_11
    if-eqz v7, :cond_13

    if-eqz v9, :cond_12

    .line 658
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_12
    move-object v7, v4

    :cond_13
    if-eqz v9, :cond_14

    .line 661
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_14
    :goto_b
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto :goto_a

    :cond_15
    if-ne v11, v5, :cond_16

    goto :goto_9

    .line 673
    :cond_16
    :goto_c
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_9

    .line 676
    :cond_17
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_8

    .line 679
    :cond_18
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 680
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto/16 :goto_7

    :cond_19
    move-object v0, v4

    goto/16 :goto_7

    :cond_1a
    if-eqz v6, :cond_1d

    .line 686
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1d

    :goto_d
    add-int/lit8 v1, v0, -0x1

    .line 687
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 688
    check-cast v0, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    .line 205
    invoke-interface {v0, p1}, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;->onPreInterceptKeyBeforeSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return v5

    :cond_1b
    if-gez v1, :cond_1c

    goto :goto_e

    :cond_1c
    move v0, v1

    goto :goto_d

    .line 691
    :cond_1d
    :goto_e
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object v1, v4

    :goto_f
    if-eqz v0, :cond_26

    .line 695
    instance-of v7, v0, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    if-eqz v7, :cond_1e

    .line 696
    check-cast v0, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    .line 205
    invoke-interface {v0, p1}, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;->onPreInterceptKeyBeforeSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_25

    return v5

    .line 639
    :cond_1e
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, p0

    if-eqz v7, :cond_25

    .line 697
    instance-of v7, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_25

    .line 703
    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 704
    invoke-virtual {v7}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v9, v3

    :goto_10
    if-eqz v7, :cond_24

    .line 639
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, p0

    if-eqz v10, :cond_23

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v5, :cond_1f

    move-object v0, v7

    goto :goto_11

    :cond_1f
    if-nez v1, :cond_20

    .line 717
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v2, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v10, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_20
    if-eqz v0, :cond_22

    if-eqz v1, :cond_21

    .line 720
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_21
    move-object v0, v4

    :cond_22
    if-eqz v1, :cond_23

    .line 723
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_23
    :goto_11
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_10

    :cond_24
    if-ne v9, v5, :cond_25

    goto :goto_f

    .line 735
    :cond_25
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_f

    .line 738
    :cond_26
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object v1, v4

    :goto_12
    if-eqz v0, :cond_2f

    .line 742
    instance-of v7, v0, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    if-eqz v7, :cond_27

    .line 743
    check-cast v0, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    .line 206
    invoke-interface {v0, p1}, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;->onInterceptKeyBeforeSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2e

    return v5

    .line 639
    :cond_27
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, p0

    if-eqz v7, :cond_2e

    .line 744
    instance-of v7, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_2e

    .line 750
    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 751
    invoke-virtual {v7}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v8, v3

    :goto_13
    if-eqz v7, :cond_2d

    .line 639
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, p0

    if-eqz v9, :cond_2c

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v5, :cond_28

    move-object v0, v7

    goto :goto_14

    :cond_28
    if-nez v1, :cond_29

    .line 764
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v2, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v9, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_29
    if-eqz v0, :cond_2b

    if-eqz v1, :cond_2a

    .line 767
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_2a
    move-object v0, v4

    :cond_2b
    if-eqz v1, :cond_2c

    .line 770
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_2c
    :goto_14
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_13

    :cond_2d
    if-ne v8, v5, :cond_2e

    goto :goto_12

    .line 782
    :cond_2e
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_12

    :cond_2f
    if-eqz v6, :cond_32

    .line 787
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    move v0, v3

    :goto_15
    if-ge v0, p0, :cond_32

    .line 788
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 789
    check-cast v1, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    .line 206
    invoke-interface {v1, p1}, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;->onInterceptKeyBeforeSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_30

    return v5

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 620
    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    return v3
.end method

.method public dispatchKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 13

    const-string v0, "keyEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 183
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 187
    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->lastLocalKeyInputNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    const-string/jumbo v1, "visitAncestors called on an unattached node"

    const/16 v2, 0x2000

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p0, :cond_e

    .line 291
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result p0

    .line 298
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 300
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    .line 301
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_b

    .line 303
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 304
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, p0

    if-eqz v8, :cond_9

    :goto_1
    if-eqz v7, :cond_9

    .line 306
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, p0

    if-eqz v8, :cond_8

    move-object v9, v5

    move-object v8, v7

    :goto_2
    if-eqz v8, :cond_8

    .line 311
    instance-of v10, v8, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v10, :cond_0

    goto/16 :goto_5

    .line 315
    :cond_0
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, p0

    if-eqz v10, :cond_7

    .line 314
    instance-of v10, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_7

    .line 317
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 318
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move v11, v4

    :goto_3
    if-eqz v10, :cond_6

    .line 315
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, p0

    if-eqz v12, :cond_5

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v6, :cond_1

    move-object v8, v10

    goto :goto_4

    :cond_1
    if-nez v9, :cond_2

    .line 331
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v3, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v9, v12, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v8, :cond_4

    if-eqz v9, :cond_3

    .line 334
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v8, v5

    :cond_4
    if-eqz v9, :cond_5

    .line 337
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_5
    :goto_4
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto :goto_3

    :cond_6
    if-ne v11, v6, :cond_7

    goto :goto_2

    .line 349
    :cond_7
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_2

    .line 352
    :cond_8
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_1

    .line 355
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 356
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_0

    :cond_a
    move-object v7, v5

    goto/16 :goto_0

    :cond_b
    move-object v8, v5

    .line 188
    :goto_5
    check-cast v8, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v8, :cond_c

    invoke-interface {v8}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_6

    :cond_c
    move-object p0, v5

    goto :goto_6

    .line 298
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_6
    if-eqz p0, :cond_33

    .line 190
    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    .line 360
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 369
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 371
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 372
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    move-object v7, v5

    :goto_7
    if-eqz v2, :cond_1b

    .line 374
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 375
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_19

    :goto_8
    if-eqz v1, :cond_19

    .line 377
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_18

    move-object v8, v1

    move-object v9, v5

    :goto_9
    if-eqz v8, :cond_18

    .line 382
    instance-of v10, v8, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v10, :cond_10

    if-nez v7, :cond_f

    .line 384
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    .line 385
    :cond_f
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 388
    :cond_10
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v0

    if-eqz v10, :cond_17

    .line 387
    instance-of v10, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_17

    .line 390
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 391
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move v11, v4

    :goto_a
    if-eqz v10, :cond_16

    .line 388
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v0

    if-eqz v12, :cond_15

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v6, :cond_11

    move-object v8, v10

    goto :goto_b

    :cond_11
    if-nez v9, :cond_12

    .line 404
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v3, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v9, v12, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_12
    if-eqz v8, :cond_14

    if-eqz v9, :cond_13

    .line 407
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_13
    move-object v8, v5

    :cond_14
    if-eqz v9, :cond_15

    .line 410
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_15
    :goto_b
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto :goto_a

    :cond_16
    if-ne v11, v6, :cond_17

    goto :goto_9

    .line 422
    :cond_17
    :goto_c
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_9

    .line 425
    :cond_18
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_8

    .line 428
    :cond_19
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 429
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto/16 :goto_7

    :cond_1a
    move-object v1, v5

    goto/16 :goto_7

    :cond_1b
    if-eqz v7, :cond_1e

    .line 435
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1e

    :goto_d
    add-int/lit8 v2, v1, -0x1

    .line 436
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 437
    check-cast v1, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 192
    invoke-interface {v1, p1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return v6

    :cond_1c
    if-gez v2, :cond_1d

    goto :goto_e

    :cond_1d
    move v1, v2

    goto :goto_d

    .line 440
    :cond_1e
    :goto_e
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move-object v2, v5

    :goto_f
    if-eqz v1, :cond_27

    .line 444
    instance-of v8, v1, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v8, :cond_1f

    .line 445
    check-cast v1, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 192
    invoke-interface {v1, p1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_26

    return v6

    .line 388
    :cond_1f
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_26

    .line 446
    instance-of v8, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_26

    .line 452
    move-object v8, v1

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 453
    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move v9, v4

    :goto_10
    if-eqz v8, :cond_25

    .line 388
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v0

    if-eqz v10, :cond_24

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v6, :cond_20

    move-object v1, v8

    goto :goto_11

    :cond_20
    if-nez v2, :cond_21

    .line 466
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v3, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v2, v10, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_21
    if-eqz v1, :cond_23

    if-eqz v2, :cond_22

    .line 469
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_22
    move-object v1, v5

    :cond_23
    if-eqz v2, :cond_24

    .line 472
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_24
    :goto_11
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_10

    :cond_25
    if-ne v9, v6, :cond_26

    goto :goto_f

    .line 484
    :cond_26
    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_f

    .line 487
    :cond_27
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    move-object v1, v5

    :goto_12
    if-eqz p0, :cond_30

    .line 491
    instance-of v2, p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v2, :cond_28

    .line 492
    check-cast p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 193
    invoke-interface {p0, p1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2f

    return v6

    .line 388
    :cond_28
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, v0

    if-eqz v2, :cond_2f

    .line 493
    instance-of v2, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_2f

    .line 499
    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/node/DelegatingNode;

    .line 500
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move v8, v4

    :goto_13
    if-eqz v2, :cond_2e

    .line 388
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_2d

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v6, :cond_29

    move-object p0, v2

    goto :goto_14

    :cond_29
    if-nez v1, :cond_2a

    .line 513
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v3, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v9, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_2a
    if-eqz p0, :cond_2c

    if-eqz v1, :cond_2b

    .line 516
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_2b
    move-object p0, v5

    :cond_2c
    if-eqz v1, :cond_2d

    .line 519
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_2d
    :goto_14
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_13

    :cond_2e
    if-ne v8, v6, :cond_2f

    goto :goto_12

    .line 531
    :cond_2f
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_12

    :cond_30
    if-eqz v7, :cond_33

    .line 536
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p0

    move v0, v4

    :goto_15
    if-ge v0, p0, :cond_33

    .line 537
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 538
    check-cast v1, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 193
    invoke-interface {v1, p1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_31

    return v6

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 369
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    return v4

    .line 184
    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Event can\'t be processed because we do not have an active focus target."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispatchRotaryEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z
    .locals 13

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 215
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p0

    const-string/jumbo v0, "visitAncestors called on an unattached node"

    const/16 v1, 0x4000

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p0, :cond_d

    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    .line 793
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v6

    .line 800
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 802
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    .line 803
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_b

    .line 805
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 806
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v6

    if-eqz v8, :cond_9

    :goto_1
    if-eqz v7, :cond_9

    .line 808
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v6

    if-eqz v8, :cond_8

    move-object v9, v4

    move-object v8, v7

    :goto_2
    if-eqz v8, :cond_8

    .line 813
    instance-of v10, v8, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    if-eqz v10, :cond_0

    goto/16 :goto_5

    .line 817
    :cond_0
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v6

    if-eqz v10, :cond_7

    .line 816
    instance-of v10, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_7

    .line 819
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 820
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move v11, v3

    :goto_3
    if-eqz v10, :cond_6

    .line 817
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v6

    if-eqz v12, :cond_5

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v5, :cond_1

    move-object v8, v10

    goto :goto_4

    :cond_1
    if-nez v9, :cond_2

    .line 833
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v2, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v9, v12, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v8, :cond_4

    if-eqz v9, :cond_3

    .line 836
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v8, v4

    :cond_4
    if-eqz v9, :cond_5

    .line 839
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 843
    :cond_5
    :goto_4
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto :goto_3

    :cond_6
    if-ne v11, v5, :cond_7

    goto :goto_2

    .line 851
    :cond_7
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_2

    .line 854
    :cond_8
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_1

    .line 857
    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 858
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_0

    :cond_a
    move-object v7, v4

    goto/16 :goto_0

    :cond_b
    move-object v8, v4

    .line 861
    :goto_5
    check-cast v8, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    goto :goto_6

    .line 800
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    move-object v8, v4

    :goto_6
    if-eqz v8, :cond_32

    .line 218
    check-cast v8, Landroidx/compose/ui/node/DelegatableNode;

    .line 862
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result p0

    .line 871
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 873
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 874
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    move-object v6, v4

    :goto_7
    if-eqz v1, :cond_1a

    .line 876
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    .line 877
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, p0

    if-eqz v7, :cond_18

    :goto_8
    if-eqz v0, :cond_18

    .line 879
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, p0

    if-eqz v7, :cond_17

    move-object v7, v0

    move-object v9, v4

    :goto_9
    if-eqz v7, :cond_17

    .line 884
    instance-of v10, v7, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    if-eqz v10, :cond_f

    if-nez v6, :cond_e

    .line 886
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 887
    :cond_e
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 890
    :cond_f
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, p0

    if-eqz v10, :cond_16

    .line 889
    instance-of v10, v7, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_16

    .line 892
    move-object v10, v7

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 893
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move v11, v3

    :goto_a
    if-eqz v10, :cond_15

    .line 890
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, p0

    if-eqz v12, :cond_14

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v5, :cond_10

    move-object v7, v10

    goto :goto_b

    :cond_10
    if-nez v9, :cond_11

    .line 906
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v2, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v9, v12, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_11
    if-eqz v7, :cond_13

    if-eqz v9, :cond_12

    .line 909
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_12
    move-object v7, v4

    :cond_13
    if-eqz v9, :cond_14

    .line 912
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 916
    :cond_14
    :goto_b
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto :goto_a

    :cond_15
    if-ne v11, v5, :cond_16

    goto :goto_9

    .line 924
    :cond_16
    :goto_c
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_9

    .line 927
    :cond_17
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_8

    .line 930
    :cond_18
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 931
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto/16 :goto_7

    :cond_19
    move-object v0, v4

    goto/16 :goto_7

    :cond_1a
    if-eqz v6, :cond_1d

    .line 937
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1d

    :goto_d
    add-int/lit8 v1, v0, -0x1

    .line 938
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 939
    check-cast v0, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 220
    invoke-interface {v0, p1}, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;->onPreRotaryScrollEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return v5

    :cond_1b
    if-gez v1, :cond_1c

    goto :goto_e

    :cond_1c
    move v0, v1

    goto :goto_d

    .line 942
    :cond_1d
    :goto_e
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object v1, v4

    :goto_f
    if-eqz v0, :cond_26

    .line 946
    instance-of v7, v0, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    if-eqz v7, :cond_1e

    .line 947
    check-cast v0, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 220
    invoke-interface {v0, p1}, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;->onPreRotaryScrollEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z

    move-result v0

    if-eqz v0, :cond_25

    return v5

    .line 890
    :cond_1e
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, p0

    if-eqz v7, :cond_25

    .line 948
    instance-of v7, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_25

    .line 954
    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 955
    invoke-virtual {v7}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v9, v3

    :goto_10
    if-eqz v7, :cond_24

    .line 890
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, p0

    if-eqz v10, :cond_23

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v5, :cond_1f

    move-object v0, v7

    goto :goto_11

    :cond_1f
    if-nez v1, :cond_20

    .line 968
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v2, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v10, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_20
    if-eqz v0, :cond_22

    if-eqz v1, :cond_21

    .line 971
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_21
    move-object v0, v4

    :cond_22
    if-eqz v1, :cond_23

    .line 974
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 978
    :cond_23
    :goto_11
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_10

    :cond_24
    if-ne v9, v5, :cond_25

    goto :goto_f

    .line 986
    :cond_25
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_f

    .line 989
    :cond_26
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object v1, v4

    :goto_12
    if-eqz v0, :cond_2f

    .line 993
    instance-of v7, v0, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    if-eqz v7, :cond_27

    .line 994
    check-cast v0, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 221
    invoke-interface {v0, p1}, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;->onRotaryScrollEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z

    move-result v0

    if-eqz v0, :cond_2e

    return v5

    .line 890
    :cond_27
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, p0

    if-eqz v7, :cond_2e

    .line 995
    instance-of v7, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_2e

    .line 1001
    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 1002
    invoke-virtual {v7}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v8, v3

    :goto_13
    if-eqz v7, :cond_2d

    .line 890
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, p0

    if-eqz v9, :cond_2c

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v5, :cond_28

    move-object v0, v7

    goto :goto_14

    :cond_28
    if-nez v1, :cond_29

    .line 1015
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v2, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v9, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_29
    if-eqz v0, :cond_2b

    if-eqz v1, :cond_2a

    .line 1018
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_2a
    move-object v0, v4

    :cond_2b
    if-eqz v1, :cond_2c

    .line 1021
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1025
    :cond_2c
    :goto_14
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_13

    :cond_2d
    if-ne v8, v5, :cond_2e

    goto :goto_12

    .line 1033
    :cond_2e
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_12

    :cond_2f
    if-eqz v6, :cond_32

    .line 1038
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    move v0, v3

    :goto_15
    if-ge v0, p0, :cond_32

    .line 1039
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1040
    check-cast v1, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 221
    invoke-interface {v1, p1}, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;->onRotaryScrollEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z

    move-result v1

    if-eqz v1, :cond_30

    return v5

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 871
    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    return v3
.end method

.method public getFocusRect()Landroidx/compose/ui/geometry/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 255
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "layoutDirection"

    .line 79
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getModifier()Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->modifier:Landroidx/compose/ui/Modifier;

    return-object p0
.end method

.method public final getRootFocusNode$ui_release()Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    return-object p0
.end method

.method public moveFocus-3ESFkO8(I)Z
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 151
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-static {v0, p1, v2}, Landroidx/compose/ui/focus/FocusTraversalKt;->customFocusSearch--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v2

    .line 155
    sget-object v3, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    .line 156
    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    if-eq v2, p0, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusRequester;->focus$ui_release()Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v4

    :cond_1
    return v1

    .line 160
    :cond_2
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v3, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 162
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    new-instance v6, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$foundNextItem$1;

    invoke-direct {v6, v0, p1, v2}, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$foundNextItem$1;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, p1, v5, v6}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusSearch-sMXa3k8(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    .line 176
    iget-boolean v2, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v2, :cond_4

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->wrapAroundFocus-3ESFkO8(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v4

    :cond_4
    return v1
.end method

.method public releaseFocus()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    const/4 v0, 0x1

    .line 104
    invoke-static {p0, v0, v0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z

    return-void
.end method

.method public scheduleInvalidation(Landroidx/compose/ui/focus/FocusEventModifierNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 232
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusEventModifierNode;)V

    return-void
.end method

.method public scheduleInvalidation(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 236
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V

    return-void
.end method

.method public scheduleInvalidation(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 228
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusTargetNode;)V

    return-void
.end method

.method public setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method public final setRootFocusNode$ui_release(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    return-void
.end method

.method public takeFocus()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 90
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 91
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->setFocusState(Landroidx/compose/ui/focus/FocusStateImpl;)V

    :cond_0
    return-void
.end method
