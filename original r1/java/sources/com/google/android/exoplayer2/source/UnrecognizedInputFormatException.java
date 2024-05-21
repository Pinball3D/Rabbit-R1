package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;

/* loaded from: classes2.dex */
public class UnrecognizedInputFormatException extends ParserException {
    public final Uri uri;

    public UnrecognizedInputFormatException(String str, Uri uri) {
        super(str, null, false, 1);
        this.uri = uri;
    }
}
