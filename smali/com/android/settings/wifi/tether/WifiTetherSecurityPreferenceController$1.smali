.class Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;
.super Ljava/lang/Object;
.source "WifiTetherSecurityPreferenceController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V
    .locals 7

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$002(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;Z)Z

    const-wide/16 v4, 0x4

    .line 71
    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {v2, v3}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$102(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;Z)Z

    :cond_1
    const-wide/16 v4, 0x8

    .line 74
    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 75
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {p1, v3}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$202(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;Z)Z

    .line 83
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSaeSapSupprted = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {v2}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$100(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Feature is support = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x100

    aput v5, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "WifiTetherSecurityPreferenceController"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$100(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v3, [I

    aput v5, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    .line 93
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    iget-object p1, p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->wifi_security_sae:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$300(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v3, [I

    aput v5, p1, v4

    .line 105
    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 106
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x4

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    iget-object p1, p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_security_owe:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    iget-object p1, p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_security_wpa2:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 120
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    iget-object p1, p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_security_open:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    iget-object p1, p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_security_none:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$402(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;[Ljava/lang/String;)[Ljava/lang/String;

    .line 127
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$502(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;[Ljava/lang/String;)[Ljava/lang/String;

    .line 129
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->updateDisplay()V

    const-string p0, "Updated supported SoftAp AKMs"

    .line 130
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
