.class public Lcom/android/settings/panel/InternetConnectivityPanel;
.super Ljava/lang/Object;
.source "InternetConnectivityPanel.java"

# interfaces
.implements Lcom/android/settings/panel/PanelContent;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/settings/panel/InternetConnectivityPanel;
    .locals 1

    .line 44
    new-instance v0, Lcom/android/settings/panel/InternetConnectivityPanel;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/InternetConnectivityPanel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x676

    return p0
.end method

.method public getSeeMoreIntent()Landroid/content/Intent;
    .locals 1

    .line 67
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_SLICE_URI:Landroid/net/Uri;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->MOBILE_DATA_SLICE_URI:Landroid/net/Uri;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/settings/network/AirplaneModePreferenceController;->SLICE_URI:Landroid/net/Uri;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->internet_connectivity_panel_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
