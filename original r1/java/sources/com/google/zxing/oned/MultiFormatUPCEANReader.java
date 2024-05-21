package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.BitArray;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes3.dex */
public final class MultiFormatUPCEANReader extends OneDReader {
    private static final UPCEANReader[] EMPTY_READER_ARRAY = new UPCEANReader[0];
    private final UPCEANReader[] readers;

    public MultiFormatUPCEANReader(Map<DecodeHintType, ?> map) {
        Collection collection = map == null ? null : (Collection) map.get(DecodeHintType.POSSIBLE_FORMATS);
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (collection.contains(BarcodeFormat.EAN_13)) {
                arrayList.add(new EAN13Reader());
            } else if (collection.contains(BarcodeFormat.UPC_A)) {
                arrayList.add(new UPCAReader());
            }
            if (collection.contains(BarcodeFormat.EAN_8)) {
                arrayList.add(new EAN8Reader());
            }
            if (collection.contains(BarcodeFormat.UPC_E)) {
                arrayList.add(new UPCEReader());
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new EAN13Reader());
            arrayList.add(new EAN8Reader());
            arrayList.add(new UPCEReader());
        }
        this.readers = (UPCEANReader[]) arrayList.toArray(EMPTY_READER_ARRAY);
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException {
        boolean z;
        int[] findStartGuardPattern = UPCEANReader.findStartGuardPattern(bitArray);
        for (UPCEANReader uPCEANReader : this.readers) {
            try {
                Result decodeRow = uPCEANReader.decodeRow(i, bitArray, findStartGuardPattern, map);
                boolean z2 = decodeRow.getBarcodeFormat() == BarcodeFormat.EAN_13 && decodeRow.getText().charAt(0) == '0';
                Collection collection = map == null ? null : (Collection) map.get(DecodeHintType.POSSIBLE_FORMATS);
                if (collection != null && !collection.contains(BarcodeFormat.UPC_A)) {
                    z = false;
                    if (z2 || !z) {
                        return decodeRow;
                    }
                    Result result = new Result(decodeRow.getText().substring(1), decodeRow.getRawBytes(), decodeRow.getResultPoints(), BarcodeFormat.UPC_A);
                    result.putAllMetadata(decodeRow.getResultMetadata());
                    return result;
                }
                z = true;
                if (z2) {
                }
                return decodeRow;
            } catch (ReaderException unused) {
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.OneDReader, com.google.zxing.Reader
    public void reset() {
        for (UPCEANReader uPCEANReader : this.readers) {
            uPCEANReader.reset();
        }
    }
}
