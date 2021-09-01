.class Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiDetailPreferenceController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$500(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 209
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$500(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private hasPrivateDnsStatusChanged(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$500(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 222
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$500(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result p0

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result p1

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$000(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$500(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 232
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->hasPrivateDnsStatusChanged(Landroid/net/NetworkCapabilities;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x10

    .line 233
    invoke-direct {p0, p2, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x11

    .line 234
    invoke-direct {p0, p2, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x18

    .line 235
    invoke-direct {p0, p2, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$200(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$502(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 239
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$300(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 240
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$400(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    :cond_2
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$000(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$100(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/LinkProperties;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$102(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 198
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$200(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 199
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$300(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 200
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$400(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$600(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$000(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 248
    invoke-static {}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$700()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "WifiDetailsPrefCtrl2"

    const-string v0, "OnLost and exit WifiNetworkDetailsPage"

    .line 249
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$800(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
