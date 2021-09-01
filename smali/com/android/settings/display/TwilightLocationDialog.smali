.class public Lcom/android/settings/display/TwilightLocationDialog;
.super Ljava/lang/Object;
.source "TwilightLocationDialog.java"


# static fields
.field public static TAG:Ljava/lang/String; = "TwilightLocationDialog"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$show$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 37
    sget-object p1, Lcom/android/settings/display/TwilightLocationDialog;->TAG:Ljava/lang/String;

    const-string p2, "clicked forget"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 39
    const-class p2, Lcom/android/settings/Settings$LocationSettingsActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 3

    .line 35
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->twilight_mode_launch_location:I

    new-instance v2, Lcom/android/settings/display/-$$Lambda$TwilightLocationDialog$smfHub8jJ_Oc8G55KRbswCoIHfk;

    invoke-direct {v2, p0}, Lcom/android/settings/display/-$$Lambda$TwilightLocationDialog$smfHub8jJ_Oc8G55KRbswCoIHfk;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p0, Lcom/android/settings/R$string;->cancel:I

    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p0, Lcom/android/settings/R$string;->twilight_mode_location_off_dialog_message:I

    .line 43
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
