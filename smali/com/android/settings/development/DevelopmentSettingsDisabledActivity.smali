.class public Lcom/android/settings/development/DevelopmentSettingsDisabledActivity;
.super Landroid/app/Activity;
.source "DevelopmentSettingsDisabledActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget p1, Lcom/android/settings/R$string;->dev_settings_disabled_warning:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
