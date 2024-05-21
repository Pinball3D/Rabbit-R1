package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Chain {
    private static final boolean DEBUG = false;

    Chain() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i) {
        int i2;
        ChainHead[] chainHeadArr;
        int i3;
        if (i == 0) {
            i2 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i3 = 0;
        } else {
            i2 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
            i3 = 2;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            ChainHead chainHead = chainHeadArr[i4];
            chainHead.define();
            applyChainConstraints(constraintWidgetContainer, linearSystem, i, i3, chainHead);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
    
        if (r2.mHorizontalChainStyle == 2) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x004a, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x0048, code lost:
    
        if (r2.mVerticalChainStyle == 2) goto L29;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:142:0x050b  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0516  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x051f  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0533  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0530  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x051b  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0510  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x03c4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01e4  */
    /* JADX WARN: Type inference failed for: r2v63, types: [androidx.constraintlayout.solver.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [androidx.constraintlayout.solver.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r6v42 */
    /* JADX WARN: Type inference failed for: r6v43 */
    /* JADX WARN: Type inference failed for: r6v44 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void applyChainConstraints(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer r35, androidx.constraintlayout.solver.LinearSystem r36, int r37, int r38, androidx.constraintlayout.solver.widgets.ChainHead r39) {
        /*
            Method dump skipped, instructions count: 1377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.Chain.applyChainConstraints(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer, androidx.constraintlayout.solver.LinearSystem, int, int, androidx.constraintlayout.solver.widgets.ChainHead):void");
    }
}
