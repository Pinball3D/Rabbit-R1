.class public abstract Landroidx/compose/ui/node/NodeCoordinator;
.super Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.source "NodeCoordinator.kt"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;
.implements Landroidx/compose/ui/layout/LayoutCoordinates;
.implements Landroidx/compose/ui/node/OwnerScope;
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/NodeCoordinator$Companion;,
        Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/LookaheadCapablePlaceable;",
        "Landroidx/compose/ui/layout/Measurable;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "Landroidx/compose/ui/node/OwnerScope;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/Canvas;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNodeCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NodeCoordinator.kt\nandroidx/compose/ui/node/NodeCoordinator\n+ 2 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 3 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 4 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 5 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 8 NodeChain.kt\nandroidx/compose/ui/node/NodeChain\n+ 9 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 10 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 11 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n+ 12 Size.kt\nandroidx/compose/ui/geometry/Size\n*L\n1#1,1351:1\n96#1,5:1352\n101#1,4:1400\n96#1,9:1404\n107#1:1415\n96#1,13:1416\n109#1:1472\n101#1,10:1473\n107#1:1545\n96#1,13:1546\n109#1:1602\n101#1,10:1603\n107#1:1618\n96#1,13:1619\n109#1:1675\n101#1,10:1676\n383#2,6:1357\n393#2,2:1364\n395#2,8:1369\n403#2,9:1380\n412#2,8:1392\n383#2,6:1429\n393#2,2:1436\n395#2,8:1441\n403#2,9:1452\n412#2,8:1464\n383#2,6:1490\n393#2,2:1497\n395#2,8:1502\n403#2,9:1513\n412#2,8:1525\n383#2,6:1559\n393#2,2:1566\n395#2,8:1571\n403#2,9:1582\n412#2,8:1594\n383#2,6:1632\n393#2,2:1639\n395#2,8:1644\n403#2,9:1655\n412#2,8:1667\n206#2:1688\n207#2,8:1690\n219#2:1700\n190#2:1701\n191#2,6:1703\n220#2:1709\n383#2,6:1710\n393#2,2:1717\n395#2,8:1722\n403#2,9:1733\n412#2,8:1745\n221#2:1753\n198#2,3:1754\n261#3:1363\n261#3:1435\n261#3:1488\n261#3:1496\n261#3:1565\n261#3:1638\n261#3:1716\n234#4,3:1366\n237#4,3:1389\n234#4,3:1438\n237#4,3:1461\n234#4,3:1499\n237#4,3:1522\n234#4,3:1568\n237#4,3:1591\n234#4,3:1641\n237#4,3:1664\n234#4,3:1719\n237#4,3:1742\n1182#5:1377\n1161#5,2:1378\n1182#5:1449\n1161#5,2:1450\n1182#5:1510\n1161#5,2:1511\n1182#5:1579\n1161#5,2:1580\n1182#5:1652\n1161#5,2:1653\n1182#5:1730\n1161#5,2:1731\n1#6:1413\n1#6:1689\n1#6:1702\n74#7:1414\n82#7:1483\n82#7:1487\n82#7:1489\n84#7:1536\n84#7:1544\n74#7:1616\n84#7:1617\n72#7:1686\n72#7:1687\n78#7:1698\n78#7:1699\n743#8,3:1484\n746#8,3:1533\n495#9,4:1537\n500#9:1614\n129#10,3:1541\n133#10:1613\n86#11:1615\n66#12,5:1757\n*S KotlinDebug\n*F\n+ 1 NodeCoordinator.kt\nandroidx/compose/ui/node/NodeCoordinator\n*L\n107#1:1352,5\n107#1:1400,4\n117#1:1404,9\n215#1:1415\n215#1:1416,13\n215#1:1472\n215#1:1473,10\n294#1:1545\n294#1:1546,13\n294#1:1602\n294#1:1603,10\n374#1:1618\n374#1:1619,13\n374#1:1675\n374#1:1676,10\n108#1:1357,6\n108#1:1364,2\n108#1:1369,8\n108#1:1380,9\n108#1:1392,8\n215#1:1429,6\n215#1:1436,2\n215#1:1441,8\n215#1:1452,9\n215#1:1464,8\n239#1:1490,6\n239#1:1497,2\n239#1:1502,8\n239#1:1513,9\n239#1:1525,8\n294#1:1559,6\n294#1:1566,2\n294#1:1571,8\n294#1:1582,9\n294#1:1594,8\n374#1:1632,6\n374#1:1639,2\n374#1:1644,8\n374#1:1655,9\n374#1:1667,8\n1067#1:1688\n1067#1:1690,8\n1100#1:1700\n1100#1:1701\n1100#1:1703,6\n1100#1:1709\n1100#1:1710,6\n1100#1:1717,2\n1100#1:1722,8\n1100#1:1733,9\n1100#1:1745,8\n1100#1:1753\n1100#1:1754,3\n108#1:1363\n215#1:1435\n238#1:1488\n239#1:1496\n294#1:1565\n374#1:1638\n1100#1:1716\n108#1:1366,3\n108#1:1389,3\n215#1:1438,3\n215#1:1461,3\n239#1:1499,3\n239#1:1522,3\n294#1:1568,3\n294#1:1591,3\n374#1:1641,3\n374#1:1664,3\n1100#1:1719,3\n1100#1:1742,3\n108#1:1377\n108#1:1378,2\n215#1:1449\n215#1:1450,2\n239#1:1510\n239#1:1511,2\n294#1:1579\n294#1:1580,2\n374#1:1652\n374#1:1653,2\n1100#1:1730\n1100#1:1731,2\n1067#1:1689\n1100#1:1702\n215#1:1414\n231#1:1483\n238#1:1487\n239#1:1489\n292#1:1536\n294#1:1544\n360#1:1616\n374#1:1617\n667#1:1686\n1067#1:1687\n1099#1:1698\n1100#1:1699\n237#1:1484,3\n237#1:1533,3\n293#1:1537,4\n293#1:1614\n293#1:1541,3\n293#1:1613\n340#1:1615\n1142#1:1757,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\"\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008#\u0008 \u0018\u0000 \u0092\u00022\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005:\u0004\u0092\u0002\u0093\u0002B\r\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ$\u0010\u0086\u0001\u001a\u00020\u00072\u0007\u0010\u0087\u0001\u001a\u00020\u00002\u0007\u0010\u0088\u0001\u001a\u00020\u000e2\u0007\u0010\u0089\u0001\u001a\u00020 H\u0002J,\u0010\u0086\u0001\u001a\u00030\u008a\u00012\u0007\u0010\u0087\u0001\u001a\u00020\u00002\u0008\u0010\u008b\u0001\u001a\u00030\u008a\u0001H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u008c\u0001\u0010\u008d\u0001J \u0010\u008e\u0001\u001a\u00020Q2\u0006\u0010P\u001a\u00020QH\u0004\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u008f\u0001\u0010\u0090\u0001J*\u0010\u0091\u0001\u001a\u00020\u001a2\u0008\u0010\u0092\u0001\u001a\u00030\u008a\u00012\u0006\u0010P\u001a\u00020QH\u0004\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0093\u0001\u0010\u0094\u0001J\u0010\u0010\u0095\u0001\u001a\u00020\u00072\u0007\u0010\u0096\u0001\u001a\u00020\u0006J\u001c\u0010\u0097\u0001\u001a\u00020\u00072\u0007\u0010\u0096\u0001\u001a\u00020\u00062\u0008\u0010\u0098\u0001\u001a\u00030\u0099\u0001H\u0004J\u0012\u0010\u009a\u0001\u001a\u00020\u00072\u0007\u0010\u0096\u0001\u001a\u00020\u0006H\u0002J\t\u0010\u009b\u0001\u001a\u00020\u0007H&J\u0018\u0010\u009c\u0001\u001a\u00020\u00002\u0007\u0010\u009d\u0001\u001a\u00020\u0000H\u0000\u00a2\u0006\u0003\u0008\u009e\u0001J\"\u0010\u009f\u0001\u001a\u00030\u008a\u00012\u0007\u0010b\u001a\u00030\u008a\u0001H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00a0\u0001\u0010\u0090\u0001J\u001b\u0010\u00a1\u0001\u001a\u00020\u00072\u0007\u0010\u00a2\u0001\u001a\u00020\u000e2\u0007\u0010\u0089\u0001\u001a\u00020 H\u0002J&\u0010\u00a3\u0001\u001a\u00020 2\u000c\u0010\u00a4\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u00a5\u0001H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001J&\u0010\u00a8\u0001\u001a\u0004\u0018\u00010w2\u000c\u0010\u00a4\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u00a5\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001J\u0014\u0010\u00ab\u0001\u001a\u0004\u0018\u00010w2\u0007\u0010\u00ac\u0001\u001a\u00020 H\u0002JF\u0010\u00ad\u0001\u001a\u00020\u00072\u0008\u0010\u00ae\u0001\u001a\u00030\u00af\u00012\u0008\u0010\u0092\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u00b0\u0001\u001a\u00030\u00b1\u00012\u0007\u0010\u00b2\u0001\u001a\u00020 2\u0007\u0010\u00b3\u0001\u001a\u00020 \u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001JH\u0010\u00b6\u0001\u001a\u00020\u00072\u0008\u0010\u00ae\u0001\u001a\u00030\u00af\u00012\u0008\u0010\u0092\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u00b0\u0001\u001a\u00030\u00b1\u00012\u0007\u0010\u00b2\u0001\u001a\u00020 2\u0007\u0010\u00b3\u0001\u001a\u00020 H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00b7\u0001\u0010\u00b5\u0001J\t\u0010\u00b8\u0001\u001a\u00020\u0007H\u0016J\u0013\u0010\u00b9\u0001\u001a\u00020\u00072\u0007\u0010\u0096\u0001\u001a\u00020\u0006H\u0096\u0002J\"\u0010\u00ba\u0001\u001a\u00020 2\u0008\u0010\u0092\u0001\u001a\u00030\u008a\u0001H\u0004\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001J\u0007\u0010\u00bd\u0001\u001a\u00020 J\u001c\u0010\u00be\u0001\u001a\u00030\u00bf\u00012\u0007\u0010\u00c0\u0001\u001a\u00020\u00032\u0007\u0010\u0089\u0001\u001a\u00020 H\u0016J,\u0010\u00c1\u0001\u001a\u00030\u008a\u00012\u0007\u0010\u00c0\u0001\u001a\u00020\u00032\u0008\u0010\u00c2\u0001\u001a\u00030\u008a\u0001H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001J#\u0010\u00c5\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u00c6\u0001\u001a\u00030\u008a\u0001H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00c7\u0001\u0010\u0090\u0001J#\u0010\u00c8\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u00c6\u0001\u001a\u00030\u008a\u0001H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00c9\u0001\u0010\u0090\u0001J#\u0010\u00ca\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u0092\u0001\u001a\u00030\u008a\u0001H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00cb\u0001\u0010\u0090\u0001J\u000f\u0010\u00cc\u0001\u001a\u00020\u0007H\u0000\u00a2\u0006\u0003\u0008\u00cd\u0001J\t\u0010\u00ce\u0001\u001a\u00020\u0007H\u0016J\u0007\u0010\u00cf\u0001\u001a\u00020\u0007J\u001b\u0010\u00d0\u0001\u001a\u00020\u00072\u0007\u0010\u00d1\u0001\u001a\u00020V2\u0007\u0010\u00d2\u0001\u001a\u00020VH\u0014J\u0007\u0010\u00d3\u0001\u001a\u00020\u0007J\u0007\u0010\u00d4\u0001\u001a\u00020\u0007J\u0007\u0010\u00d5\u0001\u001a\u00020\u0007J\u0012\u0010\u00d6\u0001\u001a\u00020\u00072\u0007\u0010\u0096\u0001\u001a\u00020\u0006H\u0016J8\u0010\u00d7\u0001\u001a\u00030\u00d8\u00012\u0007\u0010\u00d9\u0001\u001a\u00020-2\u0010\u0008\u0004\u0010\u00da\u0001\u001a\t\u0012\u0005\u0012\u00030\u00d8\u00010$H\u0084\u0008\u00f8\u0001\u0003\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00db\u0001\u0010\u00dc\u0001JD\u0010\u00dd\u0001\u001a\u00020\u00072\u0006\u0010b\u001a\u00020a2\u0007\u0010\u0082\u0001\u001a\u00020\u001a2\u0019\u00106\u001a\u0015\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005\u00a2\u0006\u0002\u00085H\u0014\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00de\u0001\u0010\u00df\u0001JD\u0010\u00e0\u0001\u001a\u00020\u00072\u0006\u0010b\u001a\u00020a2\u0007\u0010\u0082\u0001\u001a\u00020\u001a2\u0019\u00106\u001a\u0015\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005\u00a2\u0006\u0002\u00085H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00e1\u0001\u0010\u00df\u0001JB\u0010\u00e2\u0001\u001a\u00020\u00072\u0006\u0010b\u001a\u00020a2\u0007\u0010\u0082\u0001\u001a\u00020\u001a2\u0019\u00106\u001a\u0015\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005\u00a2\u0006\u0002\u00085\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00e3\u0001\u0010\u00df\u0001J\u001d\u0010\u00e4\u0001\u001a\u00020\u00072\u0008\u0010\u0088\u0001\u001a\u00030\u00bf\u0001H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u00e5\u0001J,\u0010\u00e6\u0001\u001a\u00020\u00072\u0007\u0010\u00a2\u0001\u001a\u00020\u000e2\u0007\u0010\u0089\u0001\u001a\u00020 2\t\u0008\u0002\u0010\u00e7\u0001\u001a\u00020 H\u0000\u00a2\u0006\u0003\u0008\u00e8\u0001J\u000f\u0010\u00e9\u0001\u001a\u00020\u0007H\u0010\u00a2\u0006\u0003\u0008\u00ea\u0001J\u0007\u0010\u00eb\u0001\u001a\u00020 J\"\u0010\u00ec\u0001\u001a\u00030\u008a\u00012\u0007\u0010b\u001a\u00030\u008a\u0001H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00ed\u0001\u0010\u0090\u0001J\u0008\u0010\u00ee\u0001\u001a\u00030\u00bf\u0001J+\u0010\u00ef\u0001\u001a\u00020\u00072\u0007\u0010\u00c0\u0001\u001a\u00020\u00032\u0008\u0010\u00f0\u0001\u001a\u00030\u00f1\u0001H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00f2\u0001\u0010\u00f3\u0001J+\u0010\u00f4\u0001\u001a\u00020\u00072\u0007\u0010\u0087\u0001\u001a\u00020\u00002\u0008\u0010\u00f0\u0001\u001a\u00030\u00f1\u0001H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00f5\u0001\u0010\u00f6\u0001J+\u0010\u00f7\u0001\u001a\u00020\u00072\u0007\u0010\u0087\u0001\u001a\u00020\u00002\u0008\u0010\u00f0\u0001\u001a\u00030\u00f1\u0001H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00f8\u0001\u0010\u00f6\u0001J-\u0010\u00f9\u0001\u001a\u00020\u00072\u0019\u00106\u001a\u0015\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005\u00a2\u0006\u0002\u000852\t\u0008\u0002\u0010\u00fa\u0001\u001a\u00020 J\u0014\u0010\u00fb\u0001\u001a\u00020\u00072\t\u0008\u0002\u0010\u00fc\u0001\u001a\u00020 H\u0002JL\u0010\u00fd\u0001\u001a\u00020\u0007\"\u0007\u0008\u0000\u0010\u00fe\u0001\u0018\u00012\u000f\u0010\u00a4\u0001\u001a\n\u0012\u0005\u0012\u0003H\u00fe\u00010\u00a5\u00012\u0014\u0010\u00da\u0001\u001a\u000f\u0012\u0005\u0012\u0003H\u00fe\u0001\u0012\u0004\u0012\u00020\u00070\u0005H\u0086\u0008\u00f8\u0001\u0003\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00ff\u0001\u0010\u0080\u0002J4\u0010\u00fd\u0001\u001a\u00020\u00072\u0007\u0010\u0081\u0002\u001a\u00020V2\u0007\u0010\u00ac\u0001\u001a\u00020 2\u0013\u0010\u00da\u0001\u001a\u000e\u0012\u0004\u0012\u00020w\u0012\u0004\u0012\u00020\u00070\u0005H\u0086\u0008\u00f8\u0001\u0003J#\u0010\u0082\u0002\u001a\u00030\u008a\u00012\u0008\u0010\u0083\u0002\u001a\u00030\u008a\u0001H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0084\u0002\u0010\u0090\u0001J+\u0010\u0085\u0002\u001a\u00020\u00072\u0007\u0010\u0096\u0001\u001a\u00020\u00062\u0013\u0010\u00da\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u0084\u0008\u00f8\u0001\u0003J\"\u0010\u0086\u0002\u001a\u00020 2\u0008\u0010\u0092\u0001\u001a\u00030\u008a\u0001H\u0004\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0087\u0002\u0010\u00bc\u0001JN\u0010\u0088\u0002\u001a\u00020\u0007*\u0004\u0018\u00010w2\u0008\u0010\u00ae\u0001\u001a\u00030\u00af\u00012\u0008\u0010\u0092\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u00b0\u0001\u001a\u00030\u00b1\u00012\u0007\u0010\u00b2\u0001\u001a\u00020 2\u0007\u0010\u00b3\u0001\u001a\u00020 H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0089\u0002\u0010\u008a\u0002JW\u0010\u008b\u0002\u001a\u00020\u0007*\u0004\u0018\u00010w2\u0008\u0010\u00ae\u0001\u001a\u00030\u00af\u00012\u0008\u0010\u0092\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u00b0\u0001\u001a\u00030\u00b1\u00012\u0007\u0010\u00b2\u0001\u001a\u00020 2\u0007\u0010\u00b3\u0001\u001a\u00020 2\u0007\u0010\u008c\u0002\u001a\u00020\u001aH\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u008d\u0002\u0010\u008e\u0002JW\u0010\u008f\u0002\u001a\u00020\u0007*\u0004\u0018\u00010w2\u0008\u0010\u00ae\u0001\u001a\u00030\u00af\u00012\u0008\u0010\u0092\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u00b0\u0001\u001a\u00030\u00b1\u00012\u0007\u0010\u00b2\u0001\u001a\u00020 2\u0007\u0010\u00b3\u0001\u001a\u00020 2\u0007\u0010\u008c\u0002\u001a\u00020\u001aH\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0090\u0002\u0010\u008e\u0002J\r\u0010\u0091\u0002\u001a\u00020\u0000*\u00020\u0003H\u0002R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001cR\u0014\u0010\u001f\u001a\u00020 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0014\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00070$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u00020 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\"R\u000e\u0010&\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u00020 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\"R\u000e\u0010(\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010*\u001a\u00020 2\u0006\u0010)\u001a\u00020 @BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\"R\u001d\u0010,\u001a\u00020-8@X\u0080\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\"\u00101\u001a\u0004\u0018\u0001002\u0008\u0010)\u001a\u0004\u0018\u000100@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103RD\u00106\u001a\u0015\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005\u00a2\u0006\u0002\u000852\u0019\u0010)\u001a\u0015\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005\u00a2\u0006\u0002\u00085@BX\u0084\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\u000e\u00109\u001a\u00020:X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010=\u001a\u0004\u0018\u00010>X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010?\u001a\u00020<8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010AR\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010CR&\u0010E\u001a\u0004\u0018\u00010D2\u0008\u0010)\u001a\u0004\u0018\u00010D@dX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR$\u0010K\u001a\u00020\u000c2\u0006\u0010J\u001a\u00020\u000c8P@PX\u0090\u000e\u00a2\u0006\u000c\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\u001a\u0010P\u001a\u00020Q8F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008R\u0010/R\u001c\u0010S\u001a\u0010\u0012\u0004\u0012\u00020U\u0012\u0004\u0012\u00020V\u0018\u00010TX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010W\u001a\u0004\u0018\u00010\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010\u0015R\u0013\u0010Y\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008Z\u0010\u0018R\u0016\u0010[\u001a\u0004\u0018\u00010\\8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008]\u0010^R\u0013\u0010_\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008`\u0010\u0018R/\u0010b\u001a\u00020a2\u0006\u0010)\u001a\u00020a@TX\u0096\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0010\n\u0002\u0010f\u001a\u0004\u0008c\u0010/\"\u0004\u0008d\u0010eR\u001a\u0010g\u001a\u0008\u0012\u0004\u0012\u00020U0h8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010jR\u0014\u0010k\u001a\u00020\u000e8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010mR\u000e\u0010n\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010o\u001a\u00020p8F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008q\u0010/R\u0014\u0010r\u001a\u00020s8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008t\u0010uR\u0012\u0010v\u001a\u00020wX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008x\u0010yR\u001c\u0010z\u001a\u0004\u0018\u00010\u0000X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008{\u0010|\"\u0004\u0008}\u0010~R\u001e\u0010\u007f\u001a\u0004\u0018\u00010\u0000X\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0080\u0001\u0010|\"\u0005\u0008\u0081\u0001\u0010~R(\u0010\u0082\u0001\u001a\u00020\u001a2\u0006\u0010)\u001a\u00020\u001a@DX\u0086\u000e\u00a2\u0006\u0011\n\u0000\u001a\u0005\u0008\u0083\u0001\u0010\u001c\"\u0006\u0008\u0084\u0001\u0010\u0085\u0001\u0082\u0002\u0016\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0094\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "Landroidx/compose/ui/node/LookaheadCapablePlaceable;",
        "Landroidx/compose/ui/layout/Measurable;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "Landroidx/compose/ui/node/OwnerScope;",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/graphics/Canvas;",
        "",
        "layoutNode",
        "Landroidx/compose/ui/node/LayoutNode;",
        "(Landroidx/compose/ui/node/LayoutNode;)V",
        "_measureResult",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "_rectCache",
        "Landroidx/compose/ui/geometry/MutableRect;",
        "alignmentLinesOwner",
        "Landroidx/compose/ui/node/AlignmentLinesOwner;",
        "getAlignmentLinesOwner",
        "()Landroidx/compose/ui/node/AlignmentLinesOwner;",
        "child",
        "getChild",
        "()Landroidx/compose/ui/node/LookaheadCapablePlaceable;",
        "coordinates",
        "getCoordinates",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "density",
        "",
        "getDensity",
        "()F",
        "fontScale",
        "getFontScale",
        "hasMeasureResult",
        "",
        "getHasMeasureResult",
        "()Z",
        "invalidateParentLayer",
        "Lkotlin/Function0;",
        "isAttached",
        "isClipping",
        "isValidOwnerScope",
        "lastLayerAlpha",
        "<set-?>",
        "lastLayerDrawingWasSkipped",
        "getLastLayerDrawingWasSkipped$ui_release",
        "lastMeasurementConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "getLastMeasurementConstraints-msEJaDk$ui_release",
        "()J",
        "Landroidx/compose/ui/node/OwnedLayer;",
        "layer",
        "getLayer",
        "()Landroidx/compose/ui/node/OwnedLayer;",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
        "Lkotlin/ExtensionFunctionType;",
        "layerBlock",
        "getLayerBlock",
        "()Lkotlin/jvm/functions/Function1;",
        "layerDensity",
        "Landroidx/compose/ui/unit/Density;",
        "layerLayoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "layerPositionalProperties",
        "Landroidx/compose/ui/node/LayerPositionalProperties;",
        "layoutDirection",
        "getLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "getLayoutNode",
        "()Landroidx/compose/ui/node/LayoutNode;",
        "Landroidx/compose/ui/node/LookaheadDelegate;",
        "lookaheadDelegate",
        "getLookaheadDelegate",
        "()Landroidx/compose/ui/node/LookaheadDelegate;",
        "setLookaheadDelegate",
        "(Landroidx/compose/ui/node/LookaheadDelegate;)V",
        "value",
        "measureResult",
        "getMeasureResult$ui_release",
        "()Landroidx/compose/ui/layout/MeasureResult;",
        "setMeasureResult$ui_release",
        "(Landroidx/compose/ui/layout/MeasureResult;)V",
        "minimumTouchTargetSize",
        "Landroidx/compose/ui/geometry/Size;",
        "getMinimumTouchTargetSize-NH-jbRc",
        "oldAlignmentLines",
        "",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "",
        "parent",
        "getParent",
        "parentCoordinates",
        "getParentCoordinates",
        "parentData",
        "",
        "getParentData",
        "()Ljava/lang/Object;",
        "parentLayoutCoordinates",
        "getParentLayoutCoordinates",
        "Landroidx/compose/ui/unit/IntOffset;",
        "position",
        "getPosition-nOcc-ac",
        "setPosition--gyyYBs",
        "(J)V",
        "J",
        "providedAlignmentLines",
        "",
        "getProvidedAlignmentLines",
        "()Ljava/util/Set;",
        "rectCache",
        "getRectCache",
        "()Landroidx/compose/ui/geometry/MutableRect;",
        "released",
        "size",
        "Landroidx/compose/ui/unit/IntSize;",
        "getSize-YbymL2g",
        "snapshotObserver",
        "Landroidx/compose/ui/node/OwnerSnapshotObserver;",
        "getSnapshotObserver",
        "()Landroidx/compose/ui/node/OwnerSnapshotObserver;",
        "tail",
        "Landroidx/compose/ui/Modifier$Node;",
        "getTail",
        "()Landroidx/compose/ui/Modifier$Node;",
        "wrapped",
        "getWrapped$ui_release",
        "()Landroidx/compose/ui/node/NodeCoordinator;",
        "setWrapped$ui_release",
        "(Landroidx/compose/ui/node/NodeCoordinator;)V",
        "wrappedBy",
        "getWrappedBy$ui_release",
        "setWrappedBy$ui_release",
        "zIndex",
        "getZIndex",
        "setZIndex",
        "(F)V",
        "ancestorToLocal",
        "ancestor",
        "rect",
        "clipBounds",
        "Landroidx/compose/ui/geometry/Offset;",
        "offset",
        "ancestorToLocal-R5De75A",
        "(Landroidx/compose/ui/node/NodeCoordinator;J)J",
        "calculateMinimumTouchTargetPadding",
        "calculateMinimumTouchTargetPadding-E7KxVPU",
        "(J)J",
        "distanceInMinimumTouchTarget",
        "pointerPosition",
        "distanceInMinimumTouchTarget-tz77jQw",
        "(JJ)F",
        "draw",
        "canvas",
        "drawBorder",
        "paint",
        "Landroidx/compose/ui/graphics/Paint;",
        "drawContainedDrawModifiers",
        "ensureLookaheadDelegateCreated",
        "findCommonAncestor",
        "other",
        "findCommonAncestor$ui_release",
        "fromParentPosition",
        "fromParentPosition-MK-Hz9U",
        "fromParentRect",
        "bounds",
        "hasNode",
        "type",
        "Landroidx/compose/ui/node/NodeKind;",
        "hasNode-H91voCI",
        "(I)Z",
        "head",
        "head-H91voCI",
        "(I)Landroidx/compose/ui/Modifier$Node;",
        "headNode",
        "includeTail",
        "hitTest",
        "hitTestSource",
        "Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;",
        "hitTestResult",
        "Landroidx/compose/ui/node/HitTestResult;",
        "isTouchEvent",
        "isInLayer",
        "hitTest-YqVAtuI",
        "(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V",
        "hitTestChild",
        "hitTestChild-YqVAtuI",
        "invalidateLayer",
        "invoke",
        "isPointerInBounds",
        "isPointerInBounds-k-4lQ0M",
        "(J)Z",
        "isTransparent",
        "localBoundingBoxOf",
        "Landroidx/compose/ui/geometry/Rect;",
        "sourceCoordinates",
        "localPositionOf",
        "relativeToSource",
        "localPositionOf-R5De75A",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;J)J",
        "localToRoot",
        "relativeToLocal",
        "localToRoot-MK-Hz9U",
        "localToWindow",
        "localToWindow-MK-Hz9U",
        "offsetFromEdge",
        "offsetFromEdge-MK-Hz9U",
        "onCoordinatesUsed",
        "onCoordinatesUsed$ui_release",
        "onLayoutModifierNodeChanged",
        "onLayoutNodeAttach",
        "onMeasureResultChanged",
        "width",
        "height",
        "onMeasured",
        "onPlaced",
        "onRelease",
        "performDraw",
        "performingMeasure",
        "Landroidx/compose/ui/layout/Placeable;",
        "constraints",
        "block",
        "performingMeasure-K40F9xA",
        "(JLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/layout/Placeable;",
        "placeAt",
        "placeAt-f8xVGno",
        "(JFLkotlin/jvm/functions/Function1;)V",
        "placeSelf",
        "placeSelf-f8xVGno",
        "placeSelfApparentToRealOffset",
        "placeSelfApparentToRealOffset-f8xVGno",
        "propagateRelocationRequest",
        "(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "rectInParent",
        "clipToMinimumTouchTargetSize",
        "rectInParent$ui_release",
        "replace",
        "replace$ui_release",
        "shouldSharePointerInputWithSiblings",
        "toParentPosition",
        "toParentPosition-MK-Hz9U",
        "touchBoundsInRoot",
        "transformFrom",
        "matrix",
        "Landroidx/compose/ui/graphics/Matrix;",
        "transformFrom-EL8BTi8",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;[F)V",
        "transformFromAncestor",
        "transformFromAncestor-EL8BTi8",
        "(Landroidx/compose/ui/node/NodeCoordinator;[F)V",
        "transformToAncestor",
        "transformToAncestor-EL8BTi8",
        "updateLayerBlock",
        "forceUpdateLayerParameters",
        "updateLayerParameters",
        "invokeOnLayoutChange",
        "visitNodes",
        "T",
        "visitNodes-aLcG6gQ",
        "(ILkotlin/jvm/functions/Function1;)V",
        "mask",
        "windowToLocal",
        "relativeToWindow",
        "windowToLocal-MK-Hz9U",
        "withPositionTranslation",
        "withinLayerBounds",
        "withinLayerBounds-k-4lQ0M",
        "hit",
        "hit-1hIXUjU",
        "(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V",
        "hitNear",
        "distanceFromEdge",
        "hitNear-JHbHoSQ",
        "(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V",
        "speculativeHit",
        "speculativeHit-JHbHoSQ",
        "toCoordinator",
        "Companion",
        "HitTestSource",
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


# static fields
.field public static final Companion:Landroidx/compose/ui/node/NodeCoordinator$Companion;

.field public static final ExpectAttachedLayoutCoordinates:Ljava/lang/String; = "LayoutCoordinate operations are only valid when isAttached is true"

.field private static final PointerInputSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

.field private static final SemanticsSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

.field public static final UnmeasuredError:Ljava/lang/String; = "Asking for measurement result of unmeasured layout modifier"

.field private static final graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

.field private static final onCommitAffectingLayer:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/NodeCoordinator;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final onCommitAffectingLayerParams:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/NodeCoordinator;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final tmpLayerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

.field private static final tmpMatrix:[F


# instance fields
.field private _measureResult:Landroidx/compose/ui/layout/MeasureResult;

.field private _rectCache:Landroidx/compose/ui/geometry/MutableRect;

.field private final invalidateParentLayer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private isClipping:Z

.field private lastLayerAlpha:F

.field private lastLayerDrawingWasSkipped:Z

.field private layer:Landroidx/compose/ui/node/OwnedLayer;

.field private layerBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private layerDensity:Landroidx/compose/ui/unit/Density;

.field private layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private layerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

.field private final layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field private oldAlignmentLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private position:J

.field private released:Z

.field private wrapped:Landroidx/compose/ui/node/NodeCoordinator;

.field private wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

.field private zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/NodeCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->Companion:Landroidx/compose/ui/node/NodeCoordinator$Companion;

    .line 1193
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;->INSTANCE:Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->onCommitAffectingLayerParams:Lkotlin/jvm/functions/Function1;

    .line 1219
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayer$1;->INSTANCE:Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayer$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->onCommitAffectingLayer:Lkotlin/jvm/functions/Function1;

    .line 1222
    new-instance v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 1223
    new-instance v0, Landroidx/compose/ui/node/LayerPositionalProperties;

    invoke-direct {v0}, Landroidx/compose/ui/node/LayerPositionalProperties;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->tmpLayerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    const/4 v0, 0x1

    .line 1227
    invoke-static {v1, v0, v1}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    .line 1233
    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1;

    invoke-direct {v0}, Landroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->PointerInputSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    .line 1258
    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$SemanticsSource$1;

    invoke-direct {v0}, Landroidx/compose/ui/node/NodeCoordinator$Companion$SemanticsSource$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->SemanticsSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    const-string v0, "layoutNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 128
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 129
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    const p1, 0x3f4ccccd    # 0.8f

    iput p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerAlpha:F

    .line 221
    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    .line 479
    new-instance p1, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$drawContainedDrawModifiers(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/graphics/Canvas;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->drawContainedDrawModifiers(Landroidx/compose/ui/graphics/Canvas;)V

    return-void
.end method

.method public static final synthetic access$getGraphicsLayerScope$cp()Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    return-object v0
.end method

.method public static final synthetic access$getLayerPositionalProperties$p(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/LayerPositionalProperties;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    return-object p0
.end method

.method public static final synthetic access$getPointerInputSource$cp()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->PointerInputSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    return-object v0
.end method

.method public static final synthetic access$getSemanticsSource$cp()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->SemanticsSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    return-object v0
.end method

.method public static final synthetic access$getTmpLayerPositionalProperties$cp()Landroidx/compose/ui/node/LayerPositionalProperties;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->tmpLayerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    return-object v0
.end method

.method public static final synthetic access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$hit-1hIXUjU(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 0

    .line 54
    invoke-direct/range {p0 .. p7}, Landroidx/compose/ui/node/NodeCoordinator;->hit-1hIXUjU(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    return-void
.end method

.method public static final synthetic access$hitNear-JHbHoSQ(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 0

    .line 54
    invoke-direct/range {p0 .. p8}, Landroidx/compose/ui/node/NodeCoordinator;->hitNear-JHbHoSQ(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    return-void
.end method

.method public static final synthetic access$setMeasurementConstraints-BRTryo0(Landroidx/compose/ui/node/NodeCoordinator;J)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->setMeasurementConstraints-BRTryo0(J)V

    return-void
.end method

.method public static final synthetic access$speculativeHit-JHbHoSQ(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 0

    .line 54
    invoke-direct/range {p0 .. p8}, Landroidx/compose/ui/node/NodeCoordinator;->speculativeHit-JHbHoSQ(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    return-void
.end method

.method private final ancestorToLocal(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 1

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_1

    .line 864
    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->ancestorToLocal(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 865
    :cond_1
    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentRect(Landroidx/compose/ui/geometry/MutableRect;Z)V

    return-void
.end method

.method private final ancestorToLocal-R5De75A(Landroidx/compose/ui/node/NodeCoordinator;J)J
    .locals 2

    if-ne p1, p0, :cond_0

    return-wide p2

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_2

    .line 850
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 853
    :cond_1
    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->ancestorToLocal-R5De75A(Landroidx/compose/ui/node/NodeCoordinator;J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-MK-Hz9U(J)J

    move-result-wide p0

    return-wide p0

    .line 851
    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-MK-Hz9U(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private final drawContainedDrawModifiers(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x4

    .line 1616
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 360
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->head-H91voCI(I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    if-nez v6, :cond_0

    .line 362
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->performDraw(Landroidx/compose/ui/graphics/Canvas;)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getMDrawScope$ui_release()Landroidx/compose/ui/node/LayoutNodeDrawScope;

    move-result-object v1

    .line 365
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->draw-x_KDEd0$ui_release(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;)V

    :goto_0
    return-void
.end method

.method private final fromParentRect(Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 2

    .line 985
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    .line 986
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 987
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 989
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v0

    .line 990
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 991
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 995
    invoke-interface {v0, p1, v1}, Landroidx/compose/ui/node/OwnedLayer;->mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V

    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 997
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p0

    int-to-float p0, p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p0}, Landroidx/compose/ui/geometry/MutableRect;->intersect(FFFF)V

    .line 998
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    :cond_0
    return-void
.end method

.method private final getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 0

    .line 274
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object p0

    return-object p0
.end method

.method private final hasNode-H91voCI(I)Z
    .locals 1

    .line 113
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {p0, p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->has-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method private final headNode(Z)Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 86
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_2

    .line 89
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_2

    .line 91
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private final hit-1hIXUjU(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 11

    move-object v9, p1

    if-nez v9, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 593
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-YqVAtuI(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    goto :goto_0

    .line 595
    :cond_0
    new-instance v10, Landroidx/compose/ui/node/NodeCoordinator$hit$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator$hit$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    check-cast v10, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v0, p1, v1, v10}, Landroidx/compose/ui/node/HitTestResult;->hit(Landroidx/compose/ui/Modifier$Node;ZLkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method private final hitNear-JHbHoSQ(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 12

    move-object v10, p1

    if-nez v10, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 615
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-YqVAtuI(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    goto :goto_0

    .line 618
    :cond_0
    new-instance v11, Landroidx/compose/ui/node/NodeCoordinator$hitNear$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator$hitNear$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    check-cast v11, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p5

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-virtual {v0, p1, v2, v1, v11}, Landroidx/compose/ui/node/HitTestResult;->hitInMinimumTouchTarget(Landroidx/compose/ui/Modifier$Node;FZLkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method private final offsetFromEdge-MK-Hz9U(J)J
    .locals 3

    .line 1107
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    neg-float v0, v0

    goto :goto_0

    .line 1108
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1109
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    cmpg-float p2, p1, v1

    if-gez p2, :cond_1

    neg-float p0, p1

    goto :goto_1

    .line 1110
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float p0, p1, p0

    :goto_1
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 1112
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method private final placeSelf-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 318
    invoke-static {p0, p4, v2, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock$default(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V

    .line 319
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result p4

    if-nez p4, :cond_2

    .line 320
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->setPosition--gyyYBs(J)V

    .line 321
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getMeasurePassDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object p4

    .line 322
    invoke-virtual {p4}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->notifyChildrenUsingCoordinatesWhilePlacing()V

    iget-object p4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz p4, :cond_0

    .line 325
    invoke-interface {p4, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->move--gyyYBs(J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p1, :cond_1

    .line 327
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    .line 329
    :cond_1
    :goto_0
    invoke-virtual {p0, p0}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateAlignmentLinesFromPositionChange(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 330
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/ui/node/Owner;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_2
    iput p3, p0, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    return-void
.end method

.method static synthetic propagateRelocationRequest$suspendImpl(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/NodeCoordinator;",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1045
    :cond_0
    check-cast p0, Landroidx/compose/ui/layout/LayoutCoordinates;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    .line 1048
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    .line 1050
    invoke-virtual {v0, p0, p2}, Landroidx/compose/ui/node/NodeCoordinator;->propagateRelocationRequest(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic rectInParent$ui_release$default(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;ZZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 946
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->rectInParent$ui_release(Landroidx/compose/ui/geometry/MutableRect;ZZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: rectInParent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final speculativeHit-JHbHoSQ(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 12

    move-object v10, p1

    if-nez v10, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 648
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-YqVAtuI(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    goto :goto_0

    :cond_0
    move-object v3, p2

    .line 649
    invoke-interface {p2, p1}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->interceptOutOfBoundsChildEvents(Landroidx/compose/ui/Modifier$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    new-instance v11, Landroidx/compose/ui/node/NodeCoordinator$speculativeHit$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator$speculativeHit$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    check-cast v11, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p5

    invoke-virtual {v0, p1, v9, v8, v11}, Landroidx/compose/ui/node/HitTestResult;->speculativeHit(Landroidx/compose/ui/Modifier$Node;FZLkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p5

    move/from16 v8, p7

    move/from16 v9, p8

    .line 667
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-interface {p2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->entityType-OLwlOKw()I

    move-result v2

    const/4 v4, 0x2

    .line 1686
    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v4

    .line 667
    invoke-static {v1, v2, v4}, Landroidx/compose/ui/node/NodeCoordinatorKt;->access$nextUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;II)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->speculativeHit-JHbHoSQ(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    :goto_0
    return-void
.end method

.method private final toCoordinator(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;
    .locals 0

    .line 751
    instance-of p0, p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinatesImpl;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinatesImpl;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinatesImpl;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    if-nez p0, :cond_2

    :cond_1
    const-string p0, "null cannot be cast to non-null type androidx.compose.ui.node.NodeCoordinator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p1

    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    :cond_2
    return-object p0
.end method

.method private final transformFromAncestor-EL8BTi8(Landroidx/compose/ui/node/NodeCoordinator;[F)V
    .locals 6

    .line 802
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 803
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->transformFromAncestor-EL8BTi8(Landroidx/compose/ui/node/NodeCoordinator;[F)V

    .line 804
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    .line 805
    invoke-static {p1}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 806
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    int-to-float v0, v0

    neg-float v1, v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v0

    int-to-float v0, v0

    neg-float v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/Matrix;->translate-impl$default([FFFFILjava/lang/Object;)V

    .line 807
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz p0, :cond_1

    .line 809
    invoke-interface {p0, p2}, Landroidx/compose/ui/node/OwnedLayer;->inverseTransform-58bKbWc([F)V

    :cond_1
    return-void
.end method

.method private final transformToAncestor-EL8BTi8(Landroidx/compose/ui/node/NodeCoordinator;[F)V
    .locals 9

    .line 789
    :goto_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 790
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroidx/compose/ui/node/OwnedLayer;->transform-58bKbWc([F)V

    .line 791
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    .line 792
    sget-object v2, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    .line 793
    invoke-static {v2}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 794
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    int-to-float v4, v3

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/graphics/Matrix;->translate-impl$default([FFFFILjava/lang/Object;)V

    .line 795
    invoke-static {p2, v2}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    .line 797
    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic updateLayerBlock$default(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 395
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateLayerBlock"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updateLayerParameters(Z)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v1, :cond_2

    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_1

    sget-object v15, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 439
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->reset()V

    .line 440
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setGraphicsDensity$ui_release(Landroidx/compose/ui/unit/Density;)V

    .line 441
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v3

    invoke-virtual {v15, v3, v4}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setSize-uvyYCjk(J)V

    .line 442
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/node/OwnerScope;

    sget-object v5, Landroidx/compose/ui/node/NodeCoordinator;->onCommitAffectingLayerParams:Lkotlin/jvm/functions/Function1;

    new-instance v6, Landroidx/compose/ui/node/NodeCoordinator$updateLayerParameters$1;

    invoke-direct {v6, v2}, Landroidx/compose/ui/node/NodeCoordinator$updateLayerParameters$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v4, v5, v6}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->layerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    if-nez v2, :cond_0

    .line 446
    new-instance v2, Landroidx/compose/ui/node/LayerPositionalProperties;

    invoke-direct {v2}, Landroidx/compose/ui/node/LayerPositionalProperties;-><init>()V

    iput-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->layerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    .line 447
    :cond_0
    move-object v3, v15

    check-cast v3, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    invoke-virtual {v2, v3}, Landroidx/compose/ui/node/LayerPositionalProperties;->copyFrom(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V

    .line 449
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getScaleX()F

    move-result v2

    .line 450
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getScaleY()F

    move-result v3

    .line 451
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getAlpha()F

    move-result v4

    .line 452
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getTranslationX()F

    move-result v5

    .line 453
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getTranslationY()F

    move-result v6

    .line 454
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getShadowElevation()F

    move-result v7

    .line 455
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getAmbientShadowColor-0d7_KjU()J

    move-result-wide v17

    .line 456
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getSpotShadowColor-0d7_KjU()J

    move-result-wide v19

    .line 457
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getRotationX()F

    move-result v8

    .line 458
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getRotationY()F

    move-result v9

    .line 459
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getRotationZ()F

    move-result v10

    .line 460
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getCameraDistance()F

    move-result v11

    .line 461
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getTransformOrigin-SzJe1aQ()J

    move-result-wide v12

    .line 462
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v14

    .line 463
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getClip()Z

    move-result v16

    move-object/from16 v24, v15

    move/from16 v15, v16

    .line 464
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getRenderEffect()Landroidx/compose/ui/graphics/RenderEffect;

    move-result-object v16

    .line 465
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getCompositingStrategy--NrFUSI()I

    move-result v21

    .line 466
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v22

    .line 467
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v23

    .line 448
    invoke-interface/range {v1 .. v23}, Landroidx/compose/ui/node/OwnedLayer;->updateLayerProperties-dDxr-wY(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)V

    .line 469
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getClip()Z

    move-result v1

    iput-boolean v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    .line 470
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getAlpha()F

    move-result v1

    iput v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerAlpha:F

    if-eqz p1, :cond_3

    .line 472
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/compose/ui/node/Owner;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    goto :goto_0

    .line 438
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_4

    :cond_3
    :goto_0
    return-void

    .line 475
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic updateLayerParameters$default(Landroidx/compose/ui/node/NodeCoordinator;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 435
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateLayerParameters"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final calculateMinimumTouchTargetPadding-E7KxVPU(J)J
    .locals 2

    .line 1121
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 1122
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    const/4 p2, 0x0

    .line 1123
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr p1, p0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method protected final distanceInMinimumTouchTarget-tz77jQw(JJ)F
    .locals 3

    .line 1135
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    cmpl-float v0, v0, v1

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ltz v0, :cond_0

    .line 1136
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    return v1

    .line 1142
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->calculateMinimumTouchTargetPadding-E7KxVPU(J)J

    move-result-wide p3

    .line 1757
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    .line 1761
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p3

    .line 1143
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->offsetFromEdge-MK-Hz9U(J)J

    move-result-wide p0

    const/4 p2, 0x0

    cmpl-float p4, v0, p2

    if-gtz p4, :cond_1

    cmpl-float p2, p3, p2

    if-lez p2, :cond_2

    .line 1146
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p2

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_2

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p2

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_2

    .line 1148
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getDistanceSquared-impl(J)F

    move-result v1

    :cond_2
    return v1
.end method

.method public final draw(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v0, p1}, Landroidx/compose/ui/node/OwnedLayer;->drawLayer(Landroidx/compose/ui/graphics/Canvas;)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    int-to-float v0, v0

    .line 352
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    int-to-float v1, v1

    .line 353
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 354
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->drawContainedDrawModifiers(Landroidx/compose/ui/graphics/Canvas;)V

    neg-float p0, v0

    neg-float v0, v1

    .line 355
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    :goto_0
    return-void
.end method

.method protected final drawBorder(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Paint;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 913
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredSize-YbymL2g()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    .line 914
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredSize-YbymL2g()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, v2

    .line 910
    invoke-direct {v0, v2, v2, v1, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 916
    invoke-interface {p1, v0, p2}, Landroidx/compose/ui/graphics/Canvas;->drawRect(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V

    return-void
.end method

.method public abstract ensureLookaheadDelegateCreated()V
.end method

.method public final findCommonAncestor$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;
    .locals 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    .line 1063
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 1065
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 1067
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v2, 0x2

    .line 1687
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 1688
    invoke-interface {v1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1690
    invoke-interface {v1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 1692
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    if-ne v1, v0, :cond_0

    return-object p1

    .line 1695
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object p0

    .line 1688
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "visitLocalAncestors called on an unattached node"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1073
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 1074
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 1077
    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    move-result v3

    if-le v2, v3, :cond_5

    .line 1078
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_3
    if-eq v0, v1, :cond_7

    .line 1082
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    .line 1083
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    goto :goto_3

    .line 1085
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "layouts are not part of the same hierarchy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1092
    :cond_7
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-ne v1, v2, :cond_8

    goto :goto_4

    .line 1093
    :cond_8
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-ne v0, p0, :cond_9

    move-object p0, p1

    goto :goto_4

    .line 1094
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    :goto_4
    return-object p0
.end method

.method public fromParentPosition-MK-Hz9U(J)J
    .locals 2

    .line 903
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->minus-Nv-tHpc(JJ)J

    move-result-wide p1

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 905
    invoke-interface {p0, p1, p2, v0}, Landroidx/compose/ui/node/OwnedLayer;->mapOffset-8S9VItk(JZ)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public getAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;
    .locals 0

    .line 138
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getAlignmentLinesOwner$ui_release()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object p0

    return-object p0
.end method

.method public getChild()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    .line 141
    check-cast p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    return-object p0
.end method

.method public getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    .line 81
    check-cast p0, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object p0
.end method

.method public getDensity()F
    .locals 0

    .line 72
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p0

    return p0
.end method

.method public getFontScale()F
    .locals 0

    .line 75
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result p0

    return p0
.end method

.method public getHasMeasureResult()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getLastLayerDrawingWasSkipped$ui_release()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerDrawingWasSkipped:Z

    return p0
.end method

.method public final getLastMeasurementConstraints-msEJaDk$ui_release()J
    .locals 2

    .line 281
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasurementConstraints-msEJaDk()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLayer()Landroidx/compose/ui/node/OwnedLayer;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    return-object p0
.end method

.method protected final getLayerBlock()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    .line 69
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutNode()Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    return-object p0
.end method

.method public abstract getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;
.end method

.method public getMeasureResult$ui_release()Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    if-eqz p0, :cond_0

    return-object p0

    .line 155
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Asking for measurement result of unmeasured layout modifier"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getMinimumTouchTargetSize-NH-jbRc()J
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 497
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->getMinimumTouchTargetSize-MYxV2XQ()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/unit/Density;->toSize-XkaWNTQ(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 78
    check-cast p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    return-object p0
.end method

.method public final getParentCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    .line 263
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 265
    check-cast p0, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object p0

    .line 263
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getParentData()Ljava/lang/Object;
    .locals 12

    .line 231
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    const/16 v1, 0x40

    .line 1483
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 231
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui_release(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    .line 232
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    .line 236
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 237
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v3

    .line 1484
    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_9

    .line 1487
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v4

    .line 1488
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_8

    .line 1489
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v4

    move-object v6, v2

    move-object v5, v3

    :goto_1
    if-eqz v5, :cond_8

    .line 1493
    instance-of v7, v5, Landroidx/compose/ui/node/ParentDataModifierNode;

    if-eqz v7, :cond_0

    .line 1494
    check-cast v5, Landroidx/compose/ui/node/ParentDataModifierNode;

    .line 240
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v7

    iget-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v5, v7, v8}, Landroidx/compose/ui/node/ParentDataModifierNode;->modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_4

    .line 1496
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, v4

    if-eqz v7, :cond_7

    .line 1495
    instance-of v7, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_7

    .line 1498
    move-object v7, v5

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 1499
    invoke-virtual {v7}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    :goto_2
    const/4 v10, 0x1

    if-eqz v7, :cond_6

    .line 1496
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v4

    if-eqz v11, :cond_5

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v10, :cond_1

    move-object v5, v7

    goto :goto_3

    :cond_1
    if-nez v6, :cond_2

    .line 1512
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v10, 0x10

    new-array v10, v10, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v10, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v5, :cond_4

    if-eqz v6, :cond_3

    .line 1515
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v5, v2

    :cond_4
    if-eqz v6, :cond_5

    .line 1518
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1522
    :cond_5
    :goto_3
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_2

    :cond_6
    if-ne v9, v10, :cond_7

    goto :goto_1

    .line 1530
    :cond_7
    :goto_4
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_1

    .line 1533
    :cond_8
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_0

    .line 245
    :cond_9
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0

    :cond_a
    return-object v2
.end method

.method public final getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    .line 256
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    .line 258
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    check-cast p0, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object p0

    .line 256
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPosition-nOcc-ac()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    return-wide v0
.end method

.method public getProvidedAlignmentLines()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_3

    .line 190
    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    .line 191
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    if-nez v1, :cond_1

    .line 193
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    .line 195
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 197
    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 199
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method protected final getRectCache()Landroidx/compose/ui/geometry/MutableRect;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_rectCache:Landroidx/compose/ui/geometry/MutableRect;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Landroidx/compose/ui/geometry/MutableRect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/ui/geometry/MutableRect;-><init>(FFFF)V

    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_rectCache:Landroidx/compose/ui/geometry/MutableRect;

    :cond_0
    return-object v0
.end method

.method public final getSize-YbymL2g()J
    .locals 2

    .line 122
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredSize-YbymL2g()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getTail()Landroidx/compose/ui/Modifier$Node;
.end method

.method public final getWrapped$ui_release()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    return-object p0
.end method

.method public final getWrappedBy$ui_release()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    return-object p0
.end method

.method public final getZIndex()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    return p0
.end method

.method public final head-H91voCI(I)Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 117
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v0

    .line 1404
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 1405
    :cond_1
    :goto_0
    invoke-static {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_3

    .line 1407
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    .line 1408
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    if-eq p0, v1, :cond_3

    .line 1410
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hitTest-YqVAtuI(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 9

    const-string v1, "hitTestSource"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "hitTestResult"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    invoke-interface {p1}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->entityType-OLwlOKw()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->head-H91voCI(I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 521
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->withinLayerBounds-k-4lQ0M(J)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p5, :cond_5

    .line 526
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v6

    invoke-virtual {p0, p2, p3, v6, v7}, Landroidx/compose/ui/node/NodeCoordinator;->distanceInMinimumTouchTarget-tz77jQw(JJ)F

    move-result v8

    .line 527
    invoke-static {v8}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x0

    .line 528
    invoke-virtual {p4, v8, v6}, Landroidx/compose/ui/node/HitTestResult;->isHitInMinimumTouchTargetBetter(FZ)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    .line 530
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->hitNear-JHbHoSQ(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    goto/16 :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 541
    invoke-virtual/range {p0 .. p6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-YqVAtuI(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    goto :goto_1

    .line 542
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->isPointerInBounds-k-4lQ0M(J)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 544
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->hit-1hIXUjU(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    goto :goto_1

    :cond_2
    if-nez p5, :cond_3

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 553
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v6

    invoke-virtual {p0, p2, p3, v6, v7}, Landroidx/compose/ui/node/NodeCoordinator;->distanceInMinimumTouchTarget-tz77jQw(JJ)F

    move-result v6

    :goto_0
    move v8, v6

    .line 556
    invoke-static {v8}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_4

    .line 557
    invoke-virtual {p4, v8, p6}, Landroidx/compose/ui/node/HitTestResult;->isHitInMinimumTouchTargetBetter(FZ)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 560
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->hitNear-JHbHoSQ(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    goto :goto_1

    :cond_4
    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 569
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->speculativeHit-JHbHoSQ(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    :cond_5
    :goto_1
    return-void
.end method

.method public hitTestChild-YqVAtuI(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 8

    const-string v0, "hitTestSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hitTestResult"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v1, :cond_0

    .line 692
    invoke-virtual {v1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-MK-Hz9U(J)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 693
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->hitTest-YqVAtuI(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    :cond_0
    return-void
.end method

.method public invalidateLayer()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    .line 1029
    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_1

    .line 1031
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Landroidx/compose/ui/graphics/Canvas;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->invoke(Landroidx/compose/ui/graphics/Canvas;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public invoke(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/OwnerScope;

    sget-object v2, Landroidx/compose/ui/node/NodeCoordinator;->onCommitAffectingLayer:Lkotlin/jvm/functions/Function1;

    new-instance v3, Landroidx/compose/ui/node/NodeCoordinator$invoke$1;

    invoke-direct {v3, p0, p1}, Landroidx/compose/ui/node/NodeCoordinator$invoke$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/graphics/Canvas;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerDrawingWasSkipped:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerDrawingWasSkipped:Z

    :goto_0
    return-void
.end method

.method public isAttached()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->released:Z

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected final isPointerInBounds-k-4lQ0M(J)Z
    .locals 2

    .line 1018
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    .line 1019
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float v1, v0, p2

    if-ltz v1, :cond_0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    .line 1020
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTransparent()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerAlpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_1

    .line 134
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isTransparent()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isValidOwnerScope()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;
    .locals 9

    const-string/jumbo v0, "sourceCoordinates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 818
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 821
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->toCoordinator(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    .line 822
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    .line 823
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->findCommonAncestor$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .line 825
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getRectCache()Landroidx/compose/ui/geometry/MutableRect;

    move-result-object v8

    const/4 v2, 0x0

    .line 826
    invoke-virtual {v8, v2}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 827
    invoke-virtual {v8, v2}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 828
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 829
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v8, p1}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    :goto_0
    if-eq v0, v1, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, v8

    move v4, p2

    .line 833
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->rectInParent$ui_release$default(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;ZZILjava/lang/Object;)V

    .line 834
    invoke-virtual {v8}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 835
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    .line 838
    :cond_0
    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 841
    :cond_1
    invoke-direct {p0, v1, v8, p2}, Landroidx/compose/ui/node/NodeCoordinator;->ancestorToLocal(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 842
    invoke-static {v8}, Landroidx/compose/ui/geometry/MutableRectKt;->toRect(Landroidx/compose/ui/geometry/MutableRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    .line 819
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "LayoutCoordinates "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is not attached!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 818
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 817
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J
    .locals 1

    const-string/jumbo v0, "sourceCoordinates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    instance-of v0, p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinatesImpl;

    if-eqz v0, :cond_0

    .line 758
    check-cast p0, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->unaryMinus-F1C5BW0(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->unaryMinus-F1C5BW0(J)J

    move-result-wide p0

    return-wide p0

    .line 761
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->toCoordinator(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    .line 762
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    .line 763
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->findCommonAncestor$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    :goto_0
    if-eq p1, v0, :cond_1

    .line 768
    invoke-virtual {p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->toParentPosition-MK-Hz9U(J)J

    move-result-wide p2

    .line 769
    iget-object p1, p1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 772
    :cond_1
    invoke-direct {p0, v0, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->ancestorToLocal-R5De75A(Landroidx/compose/ui/node/NodeCoordinator;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public localToRoot-MK-Hz9U(J)J
    .locals 1

    .line 869
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    :goto_0
    if-eqz p0, :cond_0

    .line 874
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->toParentPosition-MK-Hz9U(J)J

    move-result-wide p1

    .line 875
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_0

    :cond_0
    return-wide p1

    .line 869
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public localToWindow-MK-Hz9U(J)J
    .locals 0

    .line 745
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide p1

    .line 746
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p0

    .line 747
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/node/Owner;->calculatePositionInWindow-MK-Hz9U(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final onCoordinatesUsed$ui_release()V
    .locals 0

    .line 251
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->onCoordinatesUsed()V

    return-void
.end method

.method public onLayoutModifierNodeChanged()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz p0, :cond_0

    .line 1058
    invoke-interface {p0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    :cond_0
    return-void
.end method

.method public final onLayoutNodeAttach()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    .line 925
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz p0, :cond_0

    .line 927
    invoke-interface {p0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onMeasureResultChanged(II)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    .line 209
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/node/OwnedLayer;->resize-ozmzZPI(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    .line 213
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->setMeasuredSize-ozmzZPI(J)V

    const/4 p1, 0x0

    .line 214
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters(Z)V

    const/4 p2, 0x4

    .line 1414
    invoke-static {p2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result p2

    .line 1415
    invoke-static {p2}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v0

    .line 1416
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-nez v1, :cond_3

    goto/16 :goto_7

    .line 1417
    :cond_3
    :goto_1
    invoke-static {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_d

    .line 1419
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, p2

    if-eqz v2, :cond_d

    .line 1420
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, p2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    move-object v3, v0

    move-object v4, v2

    :goto_3
    if-eqz v3, :cond_c

    .line 1432
    instance-of v5, v3, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v5, :cond_4

    .line 1433
    check-cast v3, Landroidx/compose/ui/node/DrawModifierNode;

    .line 216
    invoke-interface {v3}, Landroidx/compose/ui/node/DrawModifierNode;->onMeasureResultChanged()V

    goto :goto_6

    .line 1435
    :cond_4
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v5

    and-int/2addr v5, p2

    if-eqz v5, :cond_b

    .line 1434
    instance-of v5, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v5, :cond_b

    .line 1437
    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 1438
    invoke-virtual {v5}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    move v6, p1

    :goto_4
    const/4 v7, 0x1

    if-eqz v5, :cond_a

    .line 1435
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, p2

    if-eqz v8, :cond_9

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_5

    move-object v3, v5

    goto :goto_5

    :cond_5
    if-nez v4, :cond_6

    .line 1451
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v7, 0x10

    new-array v7, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v4, v7, p1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_6
    if-eqz v3, :cond_8

    if-eqz v4, :cond_7

    .line 1454
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v3, v2

    :cond_8
    if-eqz v4, :cond_9

    .line 1457
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1461
    :cond_9
    :goto_5
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_4

    :cond_a
    if-ne v6, v7, :cond_b

    goto :goto_3

    .line 1469
    :cond_b
    :goto_6
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_3

    :cond_c
    if-eq v0, v1, :cond_d

    .line 1474
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_2

    .line 218
    :cond_d
    :goto_7
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/compose/ui/node/Owner;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_e
    return-void
.end method

.method public final onMeasured()V
    .locals 13

    const/16 v0, 0x80

    .line 1536
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 292
    invoke-direct {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->hasNode-H91voCI(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 293
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 1538
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    .line 1541
    :try_start_0
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1544
    :try_start_1
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 1545
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1546
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_6

    .line 1547
    :cond_1
    :goto_0
    invoke-static {p0, v3}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_b

    .line 1549
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_b

    .line 1550
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    move-object v6, v3

    move-object v7, v5

    :goto_2
    if-eqz v6, :cond_a

    .line 1562
    instance-of v8, v6, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v8, :cond_2

    .line 1563
    check-cast v6, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    .line 295
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredSize-YbymL2g()J

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Landroidx/compose/ui/node/LayoutAwareModifierNode;->onRemeasured-ozmzZPI(J)V

    goto :goto_5

    .line 1565
    :cond_2
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_9

    .line 1564
    instance-of v8, v6, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_9

    .line 1567
    move-object v8, v6

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 1568
    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    const/4 v9, 0x0

    move v10, v9

    :goto_3
    const/4 v11, 0x1

    if-eqz v8, :cond_8

    .line 1565
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v0

    if-eqz v12, :cond_7

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v11, :cond_3

    move-object v6, v8

    goto :goto_4

    :cond_3
    if-nez v7, :cond_4

    .line 1581
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v11, 0x10

    new-array v11, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v7, v11, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz v6, :cond_6

    if-eqz v7, :cond_5

    .line 1584
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v6, v5

    :cond_6
    if-eqz v7, :cond_7

    .line 1587
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1591
    :cond_7
    :goto_4
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_3

    :cond_8
    if-ne v10, v11, :cond_9

    goto :goto_2

    .line 1599
    :cond_9
    :goto_5
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    goto :goto_2

    :cond_a
    if-eq v3, v4, :cond_b

    .line 1604
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_1

    .line 297
    :cond_b
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1613
    :try_start_2
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1614
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    goto :goto_7

    :catchall_0
    move-exception p0

    .line 1613
    :try_start_3
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 1614
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw p0

    :cond_c
    :goto_7
    return-void
.end method

.method public final onPlaced()V
    .locals 11

    const/16 v0, 0x80

    .line 1617
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 1618
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v1

    .line 1619
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_6

    .line 1620
    :cond_1
    :goto_0
    invoke-static {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_b

    .line 1622
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_b

    .line 1623
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    move-object v4, v1

    move-object v5, v3

    :goto_2
    if-eqz v4, :cond_a

    .line 1635
    instance-of v6, v4, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v6, :cond_2

    .line 1636
    check-cast v4, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    .line 375
    move-object v6, p0

    check-cast v6, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-interface {v4, v6}, Landroidx/compose/ui/node/LayoutAwareModifierNode;->onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    goto :goto_5

    .line 1638
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, v0

    if-eqz v6, :cond_9

    .line 1637
    instance-of v6, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_9

    .line 1640
    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 1641
    invoke-virtual {v6}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_3
    const/4 v9, 0x1

    if-eqz v6, :cond_8

    .line 1638
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v0

    if-eqz v10, :cond_7

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v9, :cond_3

    move-object v4, v6

    goto :goto_4

    :cond_3
    if-nez v5, :cond_4

    .line 1654
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v9, 0x10

    new-array v9, v9, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v5, v9, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz v4, :cond_6

    if-eqz v5, :cond_5

    .line 1657
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v4, v3

    :cond_6
    if-eqz v5, :cond_7

    .line 1660
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1664
    :cond_7
    :goto_4
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    goto :goto_3

    :cond_8
    if-ne v8, v9, :cond_9

    goto :goto_2

    .line 1672
    :cond_9
    :goto_5
    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_2

    :cond_a
    if-eq v1, v2, :cond_b

    .line 1677
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_1

    :cond_b
    :goto_6
    return-void
.end method

.method public final onRelease()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->released:Z

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 937
    invoke-static {p0, v2, v0, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock$default(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public performDraw(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_0

    .line 370
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->draw(Landroidx/compose/ui/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected final performingMeasure-K40F9xA(JLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/layout/Placeable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;)",
            "Landroidx/compose/ui/layout/Placeable;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->access$setMeasurementConstraints-BRTryo0(Landroidx/compose/ui/node/NodeCoordinator;J)V

    .line 288
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/Placeable;

    return-object p0
.end method

.method protected placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 310
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->placeSelf-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final placeSelfApparentToRealOffset-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getApparentToRealOffset-nOcc-ac()J

    move-result-wide v0

    .line 1615
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p1

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p2

    add-int/2addr p1, p2

    invoke-static {v2, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p1

    .line 340
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->placeSelf-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public propagateRelocationRequest(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->propagateRelocationRequest$suspendImpl(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final rectInParent$ui_release(Landroidx/compose/ui/geometry/MutableRect;ZZ)V
    .locals 6

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    if-eqz v1, :cond_2

    if-eqz p3, :cond_0

    .line 955
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide p2

    .line 956
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 957
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p2

    div-float/2addr p2, v2

    neg-float p3, v1

    neg-float v2, p2

    .line 959
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    .line 958
    invoke-virtual {p1, p3, v2, v3, v1}, Landroidx/compose/ui/geometry/MutableRect;->intersect(FFFF)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 962
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide p2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p3

    int-to-float p3, p3

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, p3}, Landroidx/compose/ui/geometry/MutableRect;->intersect(FFFF)V

    .line 964
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x0

    .line 968
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 971
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide p2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p2

    .line 972
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    move-result p3

    int-to-float p2, p2

    add-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 973
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    move-result p3

    add-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 975
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide p2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    .line 976
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    move-result p2

    int-to-float p0, p0

    add-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 977
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    move-result p2

    add-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    return-void
.end method

.method public replace$ui_release()V
    .locals 4

    .line 144
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    iget v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method protected abstract setLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)V
.end method

.method public setMeasureResult$ui_release(Landroidx/compose/ui/layout/MeasureResult;)V
    .locals 3

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    if-eq p1, v0, :cond_5

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v1

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 161
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v0

    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->onMeasureResultChanged(II)V

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 165
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 166
    :cond_3
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 168
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/AlignmentLines;->onAlignmentsChanged()V

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 171
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Ljava/util/Map;

    .line 172
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 173
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method protected setPosition--gyyYBs(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    return-void
.end method

.method public final setWrapped$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    return-void
.end method

.method public final setWrappedBy$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    return-void
.end method

.method protected final setZIndex(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    return-void
.end method

.method public final shouldSharePointerInputWithSiblings()Z
    .locals 10

    const/16 v0, 0x10

    .line 1698
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 1099
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v1

    invoke-direct {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 1100
    :cond_0
    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    .line 1699
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 1701
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1703
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    .line 1704
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_a

    .line 1705
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_a

    .line 1707
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, v3

    :goto_1
    if-eqz v4, :cond_9

    .line 1713
    instance-of v6, v4, Landroidx/compose/ui/node/PointerInputModifierNode;

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 1714
    check-cast v4, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 1101
    invoke-interface {v4}, Landroidx/compose/ui/node/PointerInputModifierNode;->sharePointerInputWithSiblings()Z

    move-result v4

    if-eqz v4, :cond_8

    return v7

    .line 1716
    :cond_1
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, v2

    if-eqz v6, :cond_8

    .line 1715
    instance-of v6, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_8

    .line 1718
    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 1719
    invoke-virtual {v6}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    move v8, v1

    :goto_2
    if-eqz v6, :cond_7

    .line 1716
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v2

    if-eqz v9, :cond_6

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v7, :cond_2

    move-object v4, v6

    goto :goto_3

    :cond_2
    if-nez v5, :cond_3

    .line 1732
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v0, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v5, v9, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_3
    if-eqz v4, :cond_5

    if-eqz v5, :cond_4

    .line 1735
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v4, v3

    :cond_5
    if-eqz v5, :cond_6

    .line 1738
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1742
    :cond_6
    :goto_3
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    goto :goto_2

    :cond_7
    if-ne v8, v7, :cond_8

    goto :goto_1

    .line 1750
    :cond_8
    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_1

    .line 1754
    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_0

    :cond_a
    return v1

    .line 1701
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "visitLocalDescendants called on an unattached node"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toParentPosition-MK-Hz9U(J)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 894
    invoke-interface {v0, p1, p2, v1}, Landroidx/compose/ui/node/OwnedLayer;->mapOffset-8S9VItk(JZ)J

    move-result-wide p1

    .line 895
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->plus-Nv-tHpc(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final touchBoundsInRoot()Landroidx/compose/ui/geometry/Rect;
    .locals 6

    .line 707
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    .line 711
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    .line 713
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getRectCache()Landroidx/compose/ui/geometry/MutableRect;

    move-result-object v1

    .line 714
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->calculateMinimumTouchTargetPadding-E7KxVPU(J)J

    move-result-wide v2

    .line 715
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 716
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 717
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 718
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v2

    add-float/2addr v4, v2

    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    :goto_0
    if-eq p0, v0, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 722
    invoke-virtual {p0, v1, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->rectInParent$ui_release(Landroidx/compose/ui/geometry/MutableRect;ZZ)V

    .line 727
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 728
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    .line 731
    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 733
    :cond_2
    invoke-static {v1}, Landroidx/compose/ui/geometry/MutableRectKt;->toRect(Landroidx/compose/ui/geometry/MutableRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public transformFrom-EL8BTi8(Landroidx/compose/ui/layout/LayoutCoordinates;[F)V
    .locals 1

    const-string/jumbo v0, "sourceCoordinates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->toCoordinator(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    .line 777
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    .line 778
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->findCommonAncestor$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    .line 780
    invoke-static {p2}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 782
    invoke-direct {p1, v0, p2}, Landroidx/compose/ui/node/NodeCoordinator;->transformToAncestor-EL8BTi8(Landroidx/compose/ui/node/NodeCoordinator;[F)V

    .line 784
    invoke-direct {p0, v0, p2}, Landroidx/compose/ui/node/NodeCoordinator;->transformFromAncestor-EL8BTi8(Landroidx/compose/ui/node/NodeCoordinator;[F)V

    return-void
.end method

.method public final updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    if-ne p2, p1, :cond_1

    iget-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 401
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v3

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    if-eq p2, v3, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v2

    :goto_1
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    .line 403
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 404
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 406
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-nez p1, :cond_2

    .line 408
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p1

    .line 409
    move-object p2, p0

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 408
    invoke-interface {p1, p2, v3}, Landroidx/compose/ui/node/Owner;->createLayer(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/node/OwnedLayer;

    move-result-object p1

    .line 412
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredSize-YbymL2g()J

    move-result-wide v5

    invoke-interface {p1, v5, v6}, Landroidx/compose/ui/node/OwnedLayer;->resize-ozmzZPI(J)V

    .line 413
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v5

    invoke-interface {p1, v5, v6}, Landroidx/compose/ui/node/OwnedLayer;->move--gyyYBs(J)V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 415
    invoke-static {p0, v1, v2, v4}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters$default(Landroidx/compose/ui/node/NodeCoordinator;ZILjava/lang/Object;)V

    .line 416
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNode;->setInnerLayerCoordinatorIsDirty$ui_release(Z)V

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 417
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_5

    .line 419
    invoke-static {p0, v1, v2, v4}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters$default(Landroidx/compose/ui/node/NodeCoordinator;ZILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz p1, :cond_4

    .line 423
    invoke-interface {p1}, Landroidx/compose/ui/node/OwnedLayer;->destroy()V

    .line 424
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNode;->setInnerLayerCoordinatorIsDirty$ui_release(Z)V

    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 425
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 426
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 427
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1, v0}, Landroidx/compose/ui/node/Owner;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_4
    iput-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    iput-boolean v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerDrawingWasSkipped:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public final visitNodes(IZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 97
    :cond_1
    :goto_0
    invoke-static {p0, p2}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_4

    .line 99
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result p2

    and-int/2addr p2, p1

    if-nez p2, :cond_2

    return-void

    .line 100
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result p2

    and-int/2addr p2, p1

    if-eqz p2, :cond_3

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eq p0, v0, :cond_4

    .line 102
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final synthetic visitNodes-aLcG6gQ(ILkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v0

    .line 1352
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_6

    .line 1353
    :cond_1
    :goto_0
    invoke-static {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_b

    .line 1355
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_b

    .line 1356
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    const/4 v0, 0x0

    move-object v2, p0

    move-object v3, v0

    :goto_2
    if-eqz v2, :cond_a

    const/4 v4, 0x3

    const-string v5, "T"

    .line 1360
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v4, v2, Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 1361
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1362
    :cond_2
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 1363
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_9

    .line 1362
    instance-of v4, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_9

    .line 1365
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 1366
    invoke-virtual {v4}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_3
    const/4 v7, 0x1

    if-eqz v4, :cond_8

    .line 1368
    move-object v8, v4

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .line 1363
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, p1

    if-eqz v8, :cond_7

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_3

    move-object v2, v4

    goto :goto_4

    .line 1376
    :cond_3
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v3, :cond_4

    .line 1379
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v7, 0x10

    new-array v7, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v7, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1377
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 1380
    :cond_4
    move-object v7, v2

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    if-eqz v2, :cond_6

    .line 1382
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v2, v0

    .line 1385
    :cond_6
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1389
    :cond_7
    :goto_4
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_3

    :cond_8
    if-ne v6, v7, :cond_9

    goto :goto_2

    .line 1397
    :cond_9
    :goto_5
    move-object v2, v3

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_2

    :cond_a
    if-eq p0, v1, :cond_b

    .line 1401
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto/16 :goto_1

    :cond_b
    :goto_6
    return-void
.end method

.method public windowToLocal-MK-Hz9U(J)J
    .locals 3

    .line 737
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    .line 739
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    .line 740
    invoke-interface {v1, p1, p2}, Landroidx/compose/ui/node/Owner;->calculateLocalPosition-MK-Hz9U(J)J

    move-result-wide p1

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v1

    .line 739
    invoke-static {p1, p2, v1, v2}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p1

    .line 741
    invoke-virtual {p0, v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide p0

    return-wide p0

    .line 737
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final withPositionTranslation(Landroidx/compose/ui/graphics/Canvas;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    int-to-float v0, v0

    .line 882
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    int-to-float p0, p0

    .line 883
    invoke-interface {p1, v0, p0}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 884
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    neg-float p2, v0

    neg-float p0, p0

    .line 885
    invoke-interface {p1, p2, p0}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method protected final withinLayerBounds-k-4lQ0M(J)Z
    .locals 2

    .line 1006
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/OffsetKt;->isFinite-k-4lQ0M(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    if-eqz p0, :cond_1

    .line 1010
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->isInLayer-k-4lQ0M(J)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
