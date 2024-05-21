package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.util.Util;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class GaplessInfoHolder {
    private static final Pattern GAPLESS_COMMENT_PATTERN = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    private static final String GAPLESS_DESCRIPTION = "iTunSMPB";
    private static final String GAPLESS_DOMAIN = "com.apple.iTunes";
    public int encoderDelay = -1;
    public int encoderPadding = -1;

    public boolean hasGaplessInfo() {
        return (this.encoderDelay == -1 || this.encoderPadding == -1) ? false : true;
    }

    public boolean setFromXingHeaderValue(int i) {
        int i2 = i >> 12;
        int i3 = i & 4095;
        if (i2 <= 0 && i3 <= 0) {
            return false;
        }
        this.encoderDelay = i2;
        this.encoderPadding = i3;
        return true;
    }

    public boolean setFromMetadata(Metadata metadata) {
        for (int i = 0; i < metadata.length(); i++) {
            Metadata.Entry entry = metadata.get(i);
            if (entry instanceof CommentFrame) {
                CommentFrame commentFrame = (CommentFrame) entry;
                if (GAPLESS_DESCRIPTION.equals(commentFrame.description) && setFromComment(commentFrame.text)) {
                    return true;
                }
            } else if (entry instanceof InternalFrame) {
                InternalFrame internalFrame = (InternalFrame) entry;
                if (GAPLESS_DOMAIN.equals(internalFrame.domain) && GAPLESS_DESCRIPTION.equals(internalFrame.description) && setFromComment(internalFrame.text)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private boolean setFromComment(String str) {
        Matcher matcher = GAPLESS_COMMENT_PATTERN.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            int parseInt = Integer.parseInt((String) Util.castNonNull(matcher.group(1)), 16);
            int parseInt2 = Integer.parseInt((String) Util.castNonNull(matcher.group(2)), 16);
            if (parseInt <= 0 && parseInt2 <= 0) {
                return false;
            }
            this.encoderDelay = parseInt;
            this.encoderPadding = parseInt2;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
