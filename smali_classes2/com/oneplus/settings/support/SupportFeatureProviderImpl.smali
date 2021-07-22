.class public Lcom/oneplus/settings/support/SupportFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SupportFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/overlay/SupportFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startSupport(Landroid/app/Activity;)V
    .locals 2

    .line 12
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oneplus.wifiapsettings"

    const-string v1, "com.oneplus.wifiapsettings.assistance.OPUserAssistance"

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string p0, "help_click"

    const-string p1, "click"

    const-string v0, "1"

    .line 16
    invoke-static {p0, p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
