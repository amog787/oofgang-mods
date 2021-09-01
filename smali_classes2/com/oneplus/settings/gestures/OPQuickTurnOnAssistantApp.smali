.class public Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPQuickTurnOnAssistantApp.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# static fields
.field private static final OPEN_WALLET_CP_URI:Landroid/net/Uri;


# instance fields
.field private mAskAlexa:Lcom/android/settings/ui/RadioButtonPreference;

.field private mCamera:Lcom/android/settings/ui/RadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mNone:Lcom/android/settings/ui/RadioButtonPreference;

.field private mWallet:Lcom/android/settings/ui/RadioButtonPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://finshell.wallet.quickstart.flag.provider.open/CARD_BAG_FLAG"

    .line 29
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->OPEN_WALLET_CP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static checkSupportWalletFlag(Landroid/content/Context;)Z
    .locals 9

    const-string v0, "HAS_ACTIVE_CARD"

    .line 120
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->OPEN_WALLET_CP_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 124
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_1

    .line 125
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 126
    aget-object p0, v0, v7

    invoke-interface {v8, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v8, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    .line 127
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 133
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    return p0

    :cond_1
    if-eqz v8, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 130
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    .line 133
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    return v7

    :goto_1
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_3
    throw p0
.end method

.method private updateQuickTurnOnAssistantAppEnabledStatus()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_double_tap_power_gesture_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mNone:Lcom/android/settings/ui/RadioButtonPreference;

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-nez v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mCamera:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mWallet:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 80
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mAskAlexa:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private updateQuickTurnOnAssistantAppSelectStatus(I)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mCamera:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mWallet:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 71
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mAskAlexa:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPQuickTurnOnAssistantApp"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 53
    sget p0, Lcom/android/settings/R$xml;->op_quick_turn_on_assistant_app:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    const-string p1, "camera"

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mCamera:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "wallet"

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mWallet:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "none"

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mNone:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "ask_alexa"

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mAskAlexa:Lcom/android/settings/ui/RadioButtonPreference;

    .line 40
    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mCamera:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 41
    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mWallet:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 42
    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mNone:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 43
    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mAskAlexa:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 45
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mWallet:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mAskAlexa:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportAskAlexa()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    const-string v1, "com.amazon.dee.app"

    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 4

    .line 86
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "camera"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    const-string v0, "wallet"

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    move v3, v2

    move v2, v1

    move v1, v3

    goto :goto_1

    :cond_1
    const-string v0, "ask_alexa"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "none"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 101
    :goto_1
    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "camera_double_tap_power_gesture_disabled"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "op_app_double_tap_power_gesture"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    invoke-direct {p0, v2}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->updateQuickTurnOnAssistantAppSelectStatus(I)V

    .line 104
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->updateQuickTurnOnAssistantAppEnabledStatus()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 59
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_app_double_tap_power_gesture"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 61
    invoke-direct {p0, v0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->updateQuickTurnOnAssistantAppSelectStatus(I)V

    .line 62
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->updateQuickTurnOnAssistantAppEnabledStatus()V

    .line 63
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mWallet:Lcom/android/settings/ui/RadioButtonPreference;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->checkSupportWalletFlag(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mAskAlexa:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportAskAlexa()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->mContext:Landroid/content/Context;

    const-string v1, "com.amazon.dee.app"

    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
