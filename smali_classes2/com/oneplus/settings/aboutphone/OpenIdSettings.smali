.class public Lcom/oneplus/settings/aboutphone/OpenIdSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OpenIdSettings.java"


# instance fields
.field private mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

.field private mWarnDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->showWarningDialog()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/widget/Button;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 70
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "oneplus_openid_toggle"

    .line 69
    invoke-static {p0, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string p2, "oaid"

    const-string v0, "status"

    invoke-static {p2, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$showWarningDialog$2(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p1, "OUID"

    .line 100
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->clearOpenId(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/settings/R$string;->openid_prefix:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->getOpenId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$showWarningDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OpenIdSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 79
    sget p0, Lcom/android/settings/R$xml;->op_openid_settings:I

    return p0
.end method

.method public synthetic lambda$onCreate$0$OpenIdSettings(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$OpenIdSettings(Landroid/widget/Button;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->lambda$onCreate$1(Landroid/widget/Button;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$showWarningDialog$2$OpenIdSettings(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->lambda$showWarningDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "reset_openid_button_container"

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "get_opendi_switch"

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 50
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v1}, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/oneplus/settings/widget/OPFooterPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    const/16 v2, 0x14

    .line 51
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 52
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/settings/R$string;->openid_prefix:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 55
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const-string v6, "OUID"

    invoke-static {v4, v5, v6}, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->getOpenId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 57
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 59
    :goto_0
    sget v1, Lcom/android/settings/R$id;->reset_openid_button:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "oneplus_openid_toggle"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    .line 62
    :goto_1
    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 63
    new-instance v3, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$AuO0aFRPrmiDP9aUKus-1jWVCZ0;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$AuO0aFRPrmiDP9aUKus-1jWVCZ0;-><init>(Lcom/oneplus/settings/aboutphone/OpenIdSettings;)V

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v1, :cond_1

    .line 65
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    :cond_1
    new-instance v1, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$LaYZZxMZM6DZ-ERThyqEIte482Y;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$LaYZZxMZM6DZ-ERThyqEIte482Y;-><init>(Lcom/oneplus/settings/aboutphone/OpenIdSettings;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mWarnDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 121
    :cond_0
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public showWarningDialog()V
    .locals 3

    .line 93
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->openid_dialog_title:I

    .line 95
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->openid_dialog_summary:I

    .line 96
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->openid_dialog_reset:I

    new-instance v2, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$gH9zyX_fqtkhjBj1gsjo4pbq_5Y;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$gH9zyX_fqtkhjBj1gsjo4pbq_5Y;-><init>(Lcom/oneplus/settings/aboutphone/OpenIdSettings;)V

    .line 97
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->cancel:I

    sget-object v2, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$zxn4_303Ql923k6ogE0guN_EXMA;->INSTANCE:Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$zxn4_303Ql923k6ogE0guN_EXMA;

    .line 107
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mWarnDialog:Landroidx/appcompat/app/AlertDialog;

    .line 112
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
