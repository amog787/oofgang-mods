.class public Lcom/android/settings/panel/PanelFeatureProviderImpl;
.super Ljava/lang/Object;
.source "PanelFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/panel/PanelFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPanel(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/settings/panel/PanelContent;
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "PANEL_TYPE_ARGUMENT"

    .line 35
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PANEL_MEDIA_PACKAGE_NAME"

    .line 37
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.settings.panel.action.WIFI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    goto :goto_0

    :sswitch_1
    const-string v1, "com.android.settings.panel.action.MEDIA_OUTPUT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v6

    goto :goto_0

    :sswitch_2
    const-string v1, "android.settings.panel.action.VOLUME"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string v1, "com.android.settings.panel.action.MEDIA_OUTPUT_GROUP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_4
    const-string v1, "android.settings.panel.action.INTERNET_CONNECTIVITY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_5
    const-string v1, "android.settings.panel.action.NFC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v5

    :cond_1
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_2

    .line 51
    invoke-static {p1, p2}, Lcom/android/settings/panel/MediaOutputGroupPanel;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/panel/MediaOutputGroupPanel;

    move-result-object p0

    return-object p0

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No matching panel for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_3
    invoke-static {p1}, Lcom/android/settings/panel/VolumePanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/VolumePanel;

    move-result-object p0

    return-object p0

    .line 47
    :cond_4
    invoke-static {p1}, Lcom/android/settings/panel/WifiPanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/WifiPanel;

    move-result-object p0

    return-object p0

    .line 45
    :cond_5
    invoke-static {p1}, Lcom/android/settings/panel/NfcPanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/NfcPanel;

    move-result-object p0

    return-object p0

    .line 43
    :cond_6
    invoke-static {p1, p2}, Lcom/android/settings/panel/MediaOutputPanel;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/panel/MediaOutputPanel;

    move-result-object p0

    return-object p0

    .line 41
    :cond_7
    invoke-static {p1}, Lcom/android/settings/panel/InternetConnectivityPanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/InternetConnectivityPanel;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x3f46fa9 -> :sswitch_5
        0x1babcc93 -> :sswitch_4
        0x26a5192b -> :sswitch_3
        0x4878fc3c -> :sswitch_2
        0x6ce62c0b -> :sswitch_1
        0x7a9da8b7 -> :sswitch_0
    .end sparse-switch
.end method
