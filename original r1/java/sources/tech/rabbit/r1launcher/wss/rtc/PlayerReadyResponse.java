package tech.rabbit.r1launcher.wss.rtc;

/* loaded from: classes3.dex */
public class PlayerReadyResponse {
    private Spotify spotify;

    /* loaded from: classes3.dex */
    public static class PlayerReady {
        private String debugNoVncUrl;
        private String iceServersJson;
        private String serviceUrl;

        public String getDebugNoVncUrl() {
            return this.debugNoVncUrl;
        }

        public String getIceServersJson() {
            return this.iceServersJson;
        }

        public String getServiceUrl() {
            return this.serviceUrl;
        }

        public void setDebugNoVncUrl(String str) {
            this.debugNoVncUrl = str;
        }

        public void setIceServersJson(String str) {
            this.iceServersJson = str;
        }

        public void setServiceUrl(String str) {
            this.serviceUrl = str;
        }
    }

    /* loaded from: classes3.dex */
    public static class Spotify {
        private PlayerReady playerReady;

        public PlayerReady getPlayerReady() {
            return this.playerReady;
        }

        public void setPlayerReady(PlayerReady playerReady) {
            this.playerReady = playerReady;
        }
    }

    public Spotify getSpotify() {
        return this.spotify;
    }

    public void setSpotify(Spotify spotify) {
        this.spotify = spotify;
    }
}
