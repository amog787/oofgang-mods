.class final Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OPGamingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPGamingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private esportsmodeUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/better/OPGamingMode;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/better/OPGamingMode;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    .line 347
    invoke-static {p1}, Lcom/oneplus/settings/better/OPGamingMode;->access$600(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "esport_mode_enabled"

    .line 344
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;->esportsmodeUri:Landroid/net/Uri;

    return-void
.end method

.method private synthetic lambda$onChange$0()V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPGamingMode;->access$800(Lcom/oneplus/settings/better/OPGamingMode;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChange$0$OPGamingMode$SettingsObserver()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;->lambda$onChange$0()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 361
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 362
    iget-object p1, p0, Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;->esportsmodeUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 363
    new-instance p1, Lcom/oneplus/settings/better/-$$Lambda$OPGamingMode$SettingsObserver$sNzw_XCuNF8n2q9Km_hXz4FJIOA;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/better/-$$Lambda$OPGamingMode$SettingsObserver$sNzw_XCuNF8n2q9Km_hXz4FJIOA;-><init>(Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGamingMode;->access$700(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 353
    iget-object p1, p0, Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;->esportsmodeUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
