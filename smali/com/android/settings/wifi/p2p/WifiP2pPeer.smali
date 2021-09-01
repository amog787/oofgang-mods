.class public Lcom/android/settings/wifi/p2p/WifiP2pPeer;
.super Landroidx/preference/Preference;
.source "WifiP2pPeer.java"


# static fields
.field static final SIGNAL_LEVELS:I = 0x4

.field private static final STATE_SECURED:[I


# instance fields
.field public device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field final mRssi:I

.field private mSignal:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 34
    sget v1, Lcom/android/settings/R$attr;->state_encrypted:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->STATE_SECURED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 46
    sget p2, Lcom/android/settings/R$layout;->preference_widget_wifi_signal:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const/16 p2, 0x3c

    .line 47
    iput p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mRssi:I

    .line 48
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 49
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$array;->wifi_p2p_status:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/preference/Preference;)I
    .locals 3

    .line 72
    instance-of v0, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    check-cast p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 78
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v0, v2, :cond_2

    if-ge v0, v2, :cond_1

    const/4 v1, -0x1

    :cond_1
    return v1

    .line 83
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 84
    iget-object p0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 87
    :cond_3
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method getLevel()I
    .locals 1

    .line 91
    iget p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mRssi:I

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x4

    .line 94
    invoke-static {p0, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 60
    sget v0, Lcom/android/settings/R$id;->signal:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSignal:Landroid/widget/ImageView;

    .line 61
    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 64
    :cond_0
    sget v0, Lcom/android/settings/R$drawable;->wifi_signal:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSignal:Landroid/widget/ImageView;

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->STATE_SECURED:[I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 67
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->getLevel()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method
