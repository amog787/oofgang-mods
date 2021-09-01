.class Lcom/android/settings/development/WirelessDebuggingFragment$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "WirelessDebuggingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/WirelessDebuggingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 470
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 474
    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
