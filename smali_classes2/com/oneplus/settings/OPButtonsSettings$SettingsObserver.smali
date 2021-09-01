.class final Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OPButtonsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPButtonsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final OEM_EYECARE_ENABLE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/OPButtonsSettings;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/OPButtonsSettings;Landroid/os/Handler;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    .line 769
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "oem_acc_key_define"

    .line 766
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->OEM_EYECARE_ENABLE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 774
    iget-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->OEM_EYECARE_ENABLE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 775
    iget-object p0, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    invoke-static {p0}, Lcom/oneplus/settings/OPButtonsSettings;->access$300(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 2

    .line 780
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->access$400(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 782
    iget-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->OEM_EYECARE_ENABLE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 784
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
