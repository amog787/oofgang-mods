.class public Lcom/android/settings/network/telephony/RoamingDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "RoamingDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mSubId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/android/settings/network/telephony/RoamingDialogFragment;
    .locals 3

    .line 44
    new-instance v0, Lcom/android/settings/network/telephony/RoamingDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/RoamingDialogFragment;-><init>()V

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "sub_id_key"

    .line 46
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x62f

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sub_id_key"

    .line 56
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/telephony/RoamingDialogFragment;->mSubId:I

    .line 57
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingDialogFragment;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/settings/network/telephony/RoamingDialogFragment;->mSubId:I

    .line 89
    invoke-virtual {p1, p0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setDataRoamingEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 62
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    sget v0, Lcom/android/settings/R$string;->roaming_alert_title:I

    .line 64
    sget v1, Lcom/android/settings/R$string;->roaming_warning:I

    .line 65
    iget-object v2, p0, Lcom/android/settings/network/telephony/RoamingDialogFragment;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v3, p0, Lcom/android/settings/network/telephony/RoamingDialogFragment;->mSubId:I

    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "check_pricing_with_carrier_data_roaming_bool"

    .line 66
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    sget v1, Lcom/android/settings/R$string;->roaming_check_price_warning:I

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x1010355

    .line 72
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x1040013

    .line 73
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x1040009

    .line 74
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
