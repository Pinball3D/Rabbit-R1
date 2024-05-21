package com.google.zxing.oned.rss.expanded;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.compose.material3.MenuKt;
import androidx.compose.runtime.ComposerKt;
import androidx.core.location.LocationRequestCompat;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.oned.rss.AbstractRSSReader;
import com.google.zxing.oned.rss.DataCharacter;
import com.google.zxing.oned.rss.FinderPattern;
import com.google.zxing.oned.rss.RSSUtils;
import com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes3.dex */
public final class RSSExpandedReader extends AbstractRSSReader {
    private static final int FINDER_PAT_A = 0;
    private static final int FINDER_PAT_B = 1;
    private static final int FINDER_PAT_C = 2;
    private static final int FINDER_PAT_D = 3;
    private static final int FINDER_PAT_E = 4;
    private static final int FINDER_PAT_F = 5;
    private static final int MAX_PAIRS = 11;
    private final List<ExpandedPair> pairs = new ArrayList(11);
    private final List<ExpandedRow> rows = new ArrayList();
    private final int[] startEnd = new int[2];
    private boolean startFromEven;
    private static final int[] SYMBOL_WIDEST = {7, 5, 4, 3, 1};
    private static final int[] EVEN_TOTAL_SUBSET = {4, 20, 52, LocationRequestCompat.QUALITY_LOW_POWER, ComposerKt.providerMapsKey};
    private static final int[] GSUM = {0, 348, 1388, 2948, 3988};
    private static final int[][] FINDER_PATTERNS = {new int[]{1, 8, 4, 1}, new int[]{3, 6, 4, 1}, new int[]{3, 4, 6, 1}, new int[]{3, 2, 8, 1}, new int[]{2, 6, 5, 1}, new int[]{2, 2, 9, 1}};
    private static final int[][] WEIGHTS = {new int[]{1, 3, 9, 27, 81, 32, 96, 77}, new int[]{20, 60, SubsamplingScaleImageView.ORIENTATION_180, 118, 143, 7, 21, 63}, new int[]{189, 145, 13, 39, 117, 140, 209, 205}, new int[]{193, 157, 49, 147, 19, 57, 171, 91}, new int[]{62, 186, 136, 197, 169, 85, 44, 132}, new int[]{185, 133, 188, 142, 4, 12, 36, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR}, new int[]{113, 128, 173, 97, 80, 29, 87, 50}, new int[]{150, 28, 84, 41, 123, 158, 52, 156}, new int[]{46, 138, ComposerKt.providerValuesKey, 187, 139, ComposerKt.referenceKey, 196, 166}, new int[]{76, 17, 51, 153, 37, 111, 122, 155}, new int[]{43, 129, 176, 106, 107, 110, 119, 146}, new int[]{16, 48, 144, 10, 30, 90, 59, 177}, new int[]{AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 116, 137, 200, 178, 112, 125, 164}, new int[]{70, 210, 208, ComposerKt.compositionLocalMapKey, 184, 130, 179, 115}, new int[]{134, 191, 151, 31, 93, 68, ComposerKt.providerMapsKey, 190}, new int[]{148, 22, 66, 198, 172, 94, 71, 2}, new int[]{6, 18, 54, 162, 64, 192, 154, 40}, new int[]{MenuKt.InTransitionDuration, 149, 25, 75, 14, 42, WebSocketProtocol.PAYLOAD_SHORT, 167}, new int[]{79, 26, 78, 23, 69, ComposerKt.reuseKey, 199, 175}, new int[]{103, 98, 83, 38, 114, 131, 182, 124}, new int[]{161, 61, 183, 127, 170, 88, 53, 159}, new int[]{55, 165, 73, 8, 24, 72, 5, 15}, new int[]{45, 135, 194, 160, 58, 174, 100, 89}};
    private static final int[][] FINDER_PATTERN_SEQUENCES = {new int[]{0, 0}, new int[]{0, 1, 1}, new int[]{0, 2, 1, 3}, new int[]{0, 4, 1, 3, 2}, new int[]{0, 4, 1, 3, 3, 5}, new int[]{0, 4, 1, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 2, 3, 3}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 4}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5}};

    List<ExpandedRow> getRows() {
        return this.rows;
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        this.pairs.clear();
        this.startFromEven = false;
        try {
            return constructResult(decodeRow2pairs(i, bitArray));
        } catch (NotFoundException unused) {
            this.pairs.clear();
            this.startFromEven = true;
            return constructResult(this.decodeRow2pairs(i, bitArray));
        }
    }

    @Override // com.google.zxing.oned.OneDReader, com.google.zxing.Reader
    public void reset() {
        this.pairs.clear();
        this.rows.clear();
    }

    List<ExpandedPair> decodeRow2pairs(int i, BitArray bitArray) throws NotFoundException {
        boolean z = false;
        while (!z) {
            try {
                List<ExpandedPair> list = this.pairs;
                list.add(retrieveNextPair(bitArray, list, i));
            } catch (NotFoundException e) {
                if (this.pairs.isEmpty()) {
                    throw e;
                }
                z = true;
            }
        }
        if (checkChecksum()) {
            return this.pairs;
        }
        boolean z2 = !this.rows.isEmpty();
        storeRow(i);
        if (z2) {
            List<ExpandedPair> checkRows = checkRows(false);
            if (checkRows != null) {
                return checkRows;
            }
            List<ExpandedPair> checkRows2 = checkRows(true);
            if (checkRows2 != null) {
                return checkRows2;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private List<ExpandedPair> checkRows(boolean z) {
        List<ExpandedPair> list = null;
        if (this.rows.size() > 25) {
            this.rows.clear();
            return null;
        }
        this.pairs.clear();
        if (z) {
            Collections.reverse(this.rows);
        }
        try {
            list = checkRows(new ArrayList(), 0);
        } catch (NotFoundException unused) {
        }
        if (z) {
            Collections.reverse(this.rows);
        }
        return list;
    }

    private List<ExpandedPair> checkRows(List<ExpandedRow> list, int i) throws NotFoundException {
        while (i < this.rows.size()) {
            ExpandedRow expandedRow = this.rows.get(i);
            this.pairs.clear();
            Iterator<ExpandedRow> it = list.iterator();
            while (it.hasNext()) {
                this.pairs.addAll(it.next().getPairs());
            }
            this.pairs.addAll(expandedRow.getPairs());
            if (isValidSequence(this.pairs)) {
                if (this.checkChecksum()) {
                    return this.pairs;
                }
                ArrayList arrayList = new ArrayList(list);
                arrayList.add(expandedRow);
                try {
                    return this.checkRows(arrayList, i + 1);
                } catch (NotFoundException unused) {
                    continue;
                }
            }
            i++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static boolean isValidSequence(List<ExpandedPair> list) {
        for (int[] iArr : FINDER_PATTERN_SEQUENCES) {
            if (list.size() <= iArr.length) {
                for (int i = 0; i < list.size(); i++) {
                    if (list.get(i).getFinderPattern().getValue() != iArr[i]) {
                        break;
                    }
                }
                return true;
            }
        }
        return false;
    }

    private void storeRow(int i) {
        int i2 = 0;
        boolean z = false;
        while (true) {
            if (i2 >= this.rows.size()) {
                break;
            }
            ExpandedRow expandedRow = this.rows.get(i2);
            if (expandedRow.getRowNumber() > i) {
                if (expandedRow.isEquivalent(this.pairs)) {
                    return;
                }
            } else {
                z = expandedRow.isEquivalent(this.pairs);
                i2++;
            }
        }
        if (z || isPartialRow(this.pairs, this.rows)) {
            return;
        }
        this.rows.add(i2, new ExpandedRow(this.pairs, i, false));
        removePartialRows(this.pairs, this.rows);
    }

    private static void removePartialRows(Collection<ExpandedPair> collection, Collection<ExpandedRow> collection2) {
        Iterator<ExpandedRow> it = collection2.iterator();
        while (it.hasNext()) {
            ExpandedRow next = it.next();
            if (next.getPairs().size() != collection.size()) {
                Iterator<ExpandedPair> it2 = next.getPairs().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (!collection.contains(it2.next())) {
                            break;
                        }
                    } else {
                        it.remove();
                        break;
                    }
                }
            }
        }
    }

    private static boolean isPartialRow(Iterable<ExpandedPair> iterable, Iterable<ExpandedRow> iterable2) {
        for (ExpandedRow expandedRow : iterable2) {
            for (ExpandedPair expandedPair : iterable) {
                Iterator<ExpandedPair> it = expandedRow.getPairs().iterator();
                while (it.hasNext()) {
                    if (expandedPair.equals(it.next())) {
                        break;
                    }
                }
            }
            return true;
        }
        return false;
    }

    static Result constructResult(List<ExpandedPair> list) throws NotFoundException, FormatException {
        String parseInformation = AbstractExpandedDecoder.createDecoder(BitArrayBuilder.buildBitArray(list)).parseInformation();
        ResultPoint[] resultPoints = list.get(0).getFinderPattern().getResultPoints();
        ResultPoint[] resultPoints2 = list.get(list.size() - 1).getFinderPattern().getResultPoints();
        return new Result(parseInformation, null, new ResultPoint[]{resultPoints[0], resultPoints[1], resultPoints2[0], resultPoints2[1]}, BarcodeFormat.RSS_EXPANDED);
    }

    private boolean checkChecksum() {
        ExpandedPair expandedPair = this.pairs.get(0);
        DataCharacter leftChar = expandedPair.getLeftChar();
        DataCharacter rightChar = expandedPair.getRightChar();
        if (rightChar == null) {
            return false;
        }
        int checksumPortion = rightChar.getChecksumPortion();
        int i = 2;
        for (int i2 = 1; i2 < this.pairs.size(); i2++) {
            ExpandedPair expandedPair2 = this.pairs.get(i2);
            checksumPortion += expandedPair2.getLeftChar().getChecksumPortion();
            int i3 = i + 1;
            DataCharacter rightChar2 = expandedPair2.getRightChar();
            if (rightChar2 != null) {
                checksumPortion += rightChar2.getChecksumPortion();
                i += 2;
            } else {
                i = i3;
            }
        }
        return ((i + (-4)) * 211) + (checksumPortion % 211) == leftChar.getValue();
    }

    private static int getNextSecondBar(BitArray bitArray, int i) {
        if (bitArray.get(i)) {
            return bitArray.getNextSet(bitArray.getNextUnset(i));
        }
        return bitArray.getNextUnset(bitArray.getNextSet(i));
    }

    ExpandedPair retrieveNextPair(BitArray bitArray, List<ExpandedPair> list, int i) throws NotFoundException {
        FinderPattern parseFoundFinderPattern;
        DataCharacter dataCharacter;
        boolean z = list.size() % 2 == 0;
        if (this.startFromEven) {
            z = !z;
        }
        int i2 = -1;
        boolean z2 = true;
        do {
            findNextPair(bitArray, list, i2);
            parseFoundFinderPattern = parseFoundFinderPattern(bitArray, i, z);
            if (parseFoundFinderPattern == null) {
                i2 = getNextSecondBar(bitArray, this.startEnd[0]);
            } else {
                z2 = false;
            }
        } while (z2);
        DataCharacter decodeDataCharacter = decodeDataCharacter(bitArray, parseFoundFinderPattern, z, true);
        if (!list.isEmpty() && list.get(list.size() - 1).mustBeLast()) {
            throw NotFoundException.getNotFoundInstance();
        }
        try {
            dataCharacter = decodeDataCharacter(bitArray, parseFoundFinderPattern, z, false);
        } catch (NotFoundException unused) {
            dataCharacter = null;
        }
        return new ExpandedPair(decodeDataCharacter, dataCharacter, parseFoundFinderPattern);
    }

    private void findNextPair(BitArray bitArray, List<ExpandedPair> list, int i) throws NotFoundException {
        int[] decodeFinderCounters = getDecodeFinderCounters();
        decodeFinderCounters[0] = 0;
        decodeFinderCounters[1] = 0;
        decodeFinderCounters[2] = 0;
        decodeFinderCounters[3] = 0;
        int size = bitArray.getSize();
        if (i < 0) {
            i = list.isEmpty() ? 0 : list.get(list.size() - 1).getFinderPattern().getStartEnd()[1];
        }
        boolean z = list.size() % 2 != 0;
        if (this.startFromEven) {
            z = !z;
        }
        boolean z2 = false;
        while (i < size) {
            z2 = !bitArray.get(i);
            if (!z2) {
                break;
            } else {
                i++;
            }
        }
        int i2 = 0;
        boolean z3 = z2;
        int i3 = i;
        while (i < size) {
            if (bitArray.get(i) != z3) {
                decodeFinderCounters[i2] = decodeFinderCounters[i2] + 1;
            } else {
                if (i2 == 3) {
                    if (z) {
                        reverseCounters(decodeFinderCounters);
                    }
                    if (isFinderPattern(decodeFinderCounters)) {
                        int[] iArr = this.startEnd;
                        iArr[0] = i3;
                        iArr[1] = i;
                        return;
                    }
                    if (z) {
                        reverseCounters(decodeFinderCounters);
                    }
                    i3 += decodeFinderCounters[0] + decodeFinderCounters[1];
                    decodeFinderCounters[0] = decodeFinderCounters[2];
                    decodeFinderCounters[1] = decodeFinderCounters[3];
                    decodeFinderCounters[2] = 0;
                    decodeFinderCounters[3] = 0;
                    i2--;
                } else {
                    i2++;
                }
                decodeFinderCounters[i2] = 1;
                z3 = !z3;
            }
            i++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static void reverseCounters(int[] iArr) {
        int length = iArr.length;
        for (int i = 0; i < length / 2; i++) {
            int i2 = iArr[i];
            int i3 = (length - i) - 1;
            iArr[i] = iArr[i3];
            iArr[i3] = i2;
        }
    }

    private FinderPattern parseFoundFinderPattern(BitArray bitArray, int i, boolean z) {
        int i2;
        int i3;
        int i4;
        if (z) {
            int i5 = this.startEnd[0] - 1;
            while (i5 >= 0 && !bitArray.get(i5)) {
                i5--;
            }
            int i6 = i5 + 1;
            int[] iArr = this.startEnd;
            i4 = iArr[0] - i6;
            i2 = iArr[1];
            i3 = i6;
        } else {
            int[] iArr2 = this.startEnd;
            int i7 = iArr2[0];
            int nextUnset = bitArray.getNextUnset(iArr2[1] + 1);
            i2 = nextUnset;
            i3 = i7;
            i4 = nextUnset - this.startEnd[1];
        }
        int[] decodeFinderCounters = getDecodeFinderCounters();
        System.arraycopy(decodeFinderCounters, 0, decodeFinderCounters, 1, decodeFinderCounters.length - 1);
        decodeFinderCounters[0] = i4;
        try {
            return new FinderPattern(parseFinderValue(decodeFinderCounters, FINDER_PATTERNS), new int[]{i3, i2}, i3, i2, i);
        } catch (NotFoundException unused) {
            return null;
        }
    }

    DataCharacter decodeDataCharacter(BitArray bitArray, FinderPattern finderPattern, boolean z, boolean z2) throws NotFoundException {
        int[] dataCharacterCounters = getDataCharacterCounters();
        Arrays.fill(dataCharacterCounters, 0);
        if (z2) {
            recordPatternInReverse(bitArray, finderPattern.getStartEnd()[0], dataCharacterCounters);
        } else {
            recordPattern(bitArray, finderPattern.getStartEnd()[1], dataCharacterCounters);
            int i = 0;
            for (int length = dataCharacterCounters.length - 1; i < length; length--) {
                int i2 = dataCharacterCounters[i];
                dataCharacterCounters[i] = dataCharacterCounters[length];
                dataCharacterCounters[length] = i2;
                i++;
            }
        }
        float sum = MathUtils.sum(dataCharacterCounters) / 17.0f;
        float f = (finderPattern.getStartEnd()[1] - finderPattern.getStartEnd()[0]) / 15.0f;
        if (Math.abs(sum - f) / f > 0.3f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int[] oddCounts = getOddCounts();
        int[] evenCounts = getEvenCounts();
        float[] oddRoundingErrors = getOddRoundingErrors();
        float[] evenRoundingErrors = getEvenRoundingErrors();
        for (int i3 = 0; i3 < dataCharacterCounters.length; i3++) {
            float f2 = (dataCharacterCounters[i3] * 1.0f) / sum;
            int i4 = (int) (0.5f + f2);
            if (i4 <= 0) {
                if (f2 < 0.3f) {
                    throw NotFoundException.getNotFoundInstance();
                }
                i4 = 1;
            } else if (i4 > 8) {
                if (f2 > 8.7f) {
                    throw NotFoundException.getNotFoundInstance();
                }
                i4 = 8;
            }
            int i5 = i3 / 2;
            if ((i3 & 1) == 0) {
                oddCounts[i5] = i4;
                oddRoundingErrors[i5] = f2 - i4;
            } else {
                evenCounts[i5] = i4;
                evenRoundingErrors[i5] = f2 - i4;
            }
        }
        adjustOddEvenCounts(17);
        int value = (((finderPattern.getValue() * 4) + (z ? 0 : 2)) + (!z2 ? 1 : 0)) - 1;
        int i6 = 0;
        int i7 = 0;
        for (int length2 = oddCounts.length - 1; length2 >= 0; length2--) {
            if (isNotA1left(finderPattern, z, z2)) {
                i6 += oddCounts[length2] * WEIGHTS[value][length2 * 2];
            }
            i7 += oddCounts[length2];
        }
        int i8 = 0;
        for (int length3 = evenCounts.length - 1; length3 >= 0; length3--) {
            if (isNotA1left(finderPattern, z, z2)) {
                i8 += evenCounts[length3] * WEIGHTS[value][(length3 * 2) + 1];
            }
        }
        int i9 = i6 + i8;
        if ((i7 & 1) != 0 || i7 > 13 || i7 < 4) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i10 = (13 - i7) / 2;
        int i11 = SYMBOL_WIDEST[i10];
        return new DataCharacter((RSSUtils.getRSSvalue(oddCounts, i11, true) * EVEN_TOTAL_SUBSET[i10]) + RSSUtils.getRSSvalue(evenCounts, 9 - i11, false) + GSUM[i10], i9);
    }

    private static boolean isNotA1left(FinderPattern finderPattern, boolean z, boolean z2) {
        return (finderPattern.getValue() == 0 && z && z2) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void adjustOddEvenCounts(int r11) throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.rss.expanded.RSSExpandedReader.adjustOddEvenCounts(int):void");
    }
}
