package tech.rabbit.r1launcher.wss.request.webrtc;

import com.google.gson.Gson;

/* loaded from: classes3.dex */
public class RequestRtc {
    private Spotify spotify;

    public Spotify getSpotify() {
        return this.spotify;
    }

    public void setSpotify(Spotify spotify) {
        this.spotify = spotify;
    }

    public String toString() {
        return new Gson().toJson(this);
    }
}
