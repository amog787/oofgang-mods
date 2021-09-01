.class public Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;
.super Ljava/lang/Object;
.source "CloudConditionController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;


# static fields
.field static final ID:I


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "CloudConditionController"

    aput-object v2, v0, v1

    .line 36
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->mAppContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    return-void
.end method

.method private applyCloudTipsNeed(Landroid/content/Context;Z)V
    .locals 0

    .line 180
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 181
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "cloud_tips_need"

    .line 182
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private getCloudTipsNeed(Landroid/content/Context;)Z
    .locals 3

    .line 188
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCloudTipsNeed cloud_tips_need : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cloud_tips_need"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CloudConditionController"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getOPlusTokenForProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 133
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.oneplus.account.provider.open"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "get_account_o_token"

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "oplustoken"

    .line 140
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 145
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1, v1}, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->applyCloudTipsNeed(Landroid/content/Context;Z)V

    :cond_2
    return-object v0
.end method

.method private getOnePlusTokenForProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 158
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.oneplus.account.provider.open"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "get_account_oneplus_token"

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "token"

    .line 165
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 170
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0, p1, v1}, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->applyCloudTipsNeed(Landroid/content/Context;Z)V

    .line 174
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getOnePlusTokenForProvider token : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CloudConditionController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public buildContextualCard()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 4

    .line 104
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->ID:I

    int-to-long v1, v1

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setConditionId(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    const/16 v1, 0x270f

    .line 106
    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setMetricsConstant(I)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->condition_cloud_turn_off:I

    .line 107
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setActionText(Ljava/lang/CharSequence;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->mAppContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->mAppContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->condition_cloud_title:I

    .line 109
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->condition_cloud_title:I

    .line 110
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setTitleText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->condition_cloud_summary:I

    .line 111
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSummaryText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_cloud:I

    .line 112
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    sget p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->VIEW_TYPE_FULL_WIDTH:I

    .line 113
    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 114
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p0

    return-object p0
.end method

.method public getId()J
    .locals 2

    .line 57
    sget p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->ID:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public isDisplayable()Z
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->mAppContext:Landroid/content/Context;

    const-string v1, "com.oneplus.cloud"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 63
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->getCloudTipsNeed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->mAppContext:Landroid/content/Context;

    .line 65
    invoke-direct {p0, v0}, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->getOnePlusTokenForProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->mAppContext:Landroid/content/Context;

    const-string v3, "com.heytap.cloud"

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->getCloudTipsNeed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->mAppContext:Landroid/content/Context;

    .line 69
    invoke-direct {p0, v0}, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->getOPlusTokenForProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    const-string p0, "CloudConditionController"

    const-string v0, "isDisplayable false"

    .line 71
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public onActionClick()V
    .locals 3

    const-string v0, "guide_click"

    const-string v1, "click"

    const-string v2, "1"

    .line 96
    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CloudConditionController"

    const-string v1, "onActionClick dimiss clould condition"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->applyCloudTipsNeed(Landroid/content/Context;Z)V

    .line 99
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    return-void
.end method

.method public onPrimaryClick(Landroid/content/Context;)V
    .locals 3

    const-string p0, "guide_click"

    const-string v0, "click"

    const-string v1, "0"

    .line 78
    invoke-static {p0, v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.oneplus.cloud"

    .line 79
    invoke-static {p1, p0}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/high16 v1, 0x30000000

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ONEPLUSCLOUD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.oneplus.cloud.activity.OPMainActivity"

    .line 82
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p0, "com.heytap.cloud"

    .line 86
    invoke-static {p1, p0}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.ocloud.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startMonitoringStateChange()V
    .locals 0

    return-void
.end method

.method public stopMonitoringStateChange()V
    .locals 0

    return-void
.end method
