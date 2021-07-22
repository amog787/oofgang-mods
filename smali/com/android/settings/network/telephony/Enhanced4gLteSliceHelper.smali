.class public Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;
.super Ljava/lang/Object;
.source "Enhanced4gLteSliceHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getActivityIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.android.settings"

    .line 279
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 280
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p0, p1, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getBroadcastIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 261
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 263
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    const/high16 v1, 0x10000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getEnhanced4gLteSlice(Landroid/net/Uri;ZI)Landroidx/slice/Slice;
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_launcher_settings:I

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 144
    new-instance v1, Landroidx/slice/builders/ListBuilder;

    iget-object v2, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const-wide/16 v3, -0x1

    invoke-direct {v1, v2, p1, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    .line 145
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    new-instance p1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 147
    invoke-direct {p0, p3}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getEnhanced4glteModeTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    const-string v2, "com.android.settings.mobilenetwork.action.ENHANCED_4G_LTE_CHANGED"

    .line 150
    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getBroadcastIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    .line 149
    invoke-static {v2, v3, p2}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object p2

    .line 148
    invoke-virtual {p1, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    const-string p2, "android.settings.NETWORK_OPERATOR_SETTINGS"

    .line 154
    invoke-direct {p0, p2}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getActivityIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 157
    invoke-direct {p0, p3}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getEnhanced4glteModeTitle(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p3, 0x0

    .line 153
    invoke-static {p2, v0, p3, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    .line 152
    invoke-virtual {p1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 146
    invoke-virtual {v1, p1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 158
    invoke-virtual {v1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method private getEnhanced4glteModeTitle(I)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "com.android.phone"

    .line 220
    iget-object v1, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->enhanced_4g_lte_mode_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :try_start_0
    const-string v2, "enhanced_4g_lte_title_variant_bool"

    const/4 v3, 0x0

    .line 222
    invoke-direct {p0, v2, p1, v3}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->isCarrierConfigManagerKeyEnabled(Ljava/lang/String;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 226
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "enhanced_4g_lte_mode_title_variant"

    const-string v2, "string"

    .line 229
    invoke-virtual {p0, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 232
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    const-string p0, "Enhanced4gLteSlice"

    const-string p1, "package name not found"

    .line 235
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1
.end method

.method private isCarrierConfigManagerKeyEnabled(Ljava/lang/String;IZ)Z
    .locals 0

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getCarrierConfigManager()Landroid/telephony/CarrierConfigManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 250
    invoke-virtual {p0, p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    :cond_0
    return p3
.end method

.method private notifyEnhanced4gLteUpdate()V
    .locals 2

    .line 199
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->ENHANCED_4G_SLICE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public createEnhanced4gLteSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 5

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getDefaultVoiceSubId()I

    move-result v0

    .line 107
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Enhanced4gLteSlice"

    if-nez v1, :cond_0

    const-string p0, "Invalid subscription Id"

    .line 108
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const/4 v1, 0x0

    const-string v4, "hide_enhanced_4g_lte_bool"

    .line 112
    invoke-direct {p0, v4, v0, v1}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->isCarrierConfigManagerKeyEnabled(Ljava/lang/String;IZ)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    const-string v4, "editable_enhanced_4g_lte_bool"

    .line 114
    invoke-direct {p0, v4, v0, v1}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->isCarrierConfigManagerKeyEnabled(Ljava/lang/String;IZ)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/android/settings/network/ims/VolteQueryImsState;->isVoLteProvisioned()Z

    move-result v4

    if-nez v4, :cond_2

    const-string p0, "Setting is either not provisioned or not enabled by Platform"

    .line 123
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 129
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lcom/android/settings/network/ims/VolteQueryImsState;->isEnabledByUser()Z

    move-result v1

    .line 128
    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getEnhanced4gLteSlice(Landroid/net/Uri;ZI)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Unable to read the current Enhanced 4g LTE status"

    .line 131
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_3
    :goto_0
    const-string p0, "Setting is either hidden or not editable"

    .line 117
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method protected getCarrierConfigManager()Landroid/telephony/CarrierConfigManager;
    .locals 1

    .line 257
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    return-object p0
.end method

.method protected getDefaultVoiceSubId()I
    .locals 0

    .line 271
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result p0

    return p0
.end method

.method public handleEnhanced4gLteChanged(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "android.app.slice.extra.TOGGLE_STATE"

    const/4 v1, 0x0

    .line 169
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    .line 170
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eq v2, p1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->notifyEnhanced4gLteUpdate()V

    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getDefaultVoiceSubId()I

    move-result p1

    .line 176
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    invoke-direct {p0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->notifyEnhanced4gLteUpdate()V

    return-void

    .line 181
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isEnabledByUser()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isAllowUserControl()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v3

    :cond_2
    if-ne v2, v1, :cond_3

    .line 185
    invoke-direct {p0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->notifyEnhanced4gLteUpdate()V

    return-void

    .line 190
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isVoLteProvisioned()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->setEnhanced4gLteModeSetting(IZ)V

    .line 193
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->notifyEnhanced4gLteUpdate()V

    return-void
.end method

.method queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;
    .locals 1

    .line 286
    new-instance v0, Lcom/android/settings/network/ims/VolteQueryImsState;

    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/ims/VolteQueryImsState;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method setEnhanced4gLteModeSetting(IZ)V
    .locals 2

    .line 204
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-static {p1}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 212
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/telephony/ims/ImsMmTelManager;->setAdvancedCallingSettingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to change the Enhanced 4g LTE to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ". subId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Enhanced4gLteSlice"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
